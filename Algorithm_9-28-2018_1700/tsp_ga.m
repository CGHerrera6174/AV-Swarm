function varargout = tsp_ga(varargin)

    if ~nargin
        userConfig = struct();
    elseif isstruct(varargin{1})
        userConfig = varargin{1};
    else
        try
            userConfig = struct(varargin{:});
        catch
            error('Expected inputs are either a structure or parameter/value pairs');
        end
    end
    
    configStruct = userConfig;
    
    % Extract configuration
    xy          = configStruct.xy;
    dmat        = configStruct.dmat;
    popSize     = configStruct.popSize;
    numIter     = configStruct.numIter;
    showProg    = configStruct.showProg;
    droneNumb   = configStruct.dronenum;
    if isempty(dmat)
        nPoints = size(xy,1);
        a = meshgrid(1:nPoints);
        dmat = reshape(sqrt(sum((xy(a,:)-xy(a',:)).^2,2)),nPoints,nPoints);
    end
    
    % Verify Inputs
    [N,dims] = size(xy);
    [nr,nc] = size(dmat);
    if N ~= nr || N ~= nc
        error('Invalid XY or DMAT inputs!')
    end
    n = N;
    
    % Sanity Checks
    popSize     = 4*ceil(popSize/4);
    numIter     = max(1,round(real(numIter(1))));
    showProg    = logical(showProg(1));
%     showResult  = logical(showResult(1));
%     showWaitbar = logical(showWaitbar(1));
    
    % Initialize the Population
    pop = zeros(popSize,n);
    pop(1,:) = (1:n);
    for k = 2:popSize
        pop(k,:) = randperm(n);
    end
    
    % Run the GA
    globalMin = Inf;
    totalDist = zeros(1,popSize);
    distHistory = zeros(1,numIter);
    tmpPop = zeros(4,n);
    newPop = zeros(popSize,n);

%     if showProg
%         figure('Name','TSP_GA | Current Best Solution','Numbertitle','off');
        hAx = gca;
%     end

    for iter = 1:numIter
        % Evaluate Each Population Member (Calculate Total Distance)
        for p = 1:popSize
            d = dmat(pop(p,n),pop(p,1)); % Closed Path
            for k = 2:n
                d = d + dmat(pop(p,k-1),pop(p,k));
            end
            totalDist(p) = d;
        end
        
        % Find the Best Route in the Population
        [minDist,index] = min(totalDist);
        distHistory(iter) = minDist;
        hold off
        if minDist < globalMin
            globalMin = minDist;
            optRoute = pop(index,:);
            if showProg
                % Plot the Best Route
                rte = optRoute([1:n 1]);
                if dims > 2, plot3(hAx,xy(rte,2),xy(rte,1),xy(rte,3),'g.-');
                else
                    plot(hAx,xy(rte,2),xy(rte,1),'k.-','linewidth',3);
                    title(['Calculating Route for Drone ' num2str(userConfig.droneID)],'Fontsize',14)
                    axis equal;
                end
%                 xlim([0 90]);
%                 ylim([0 90]);
%                 title(hAx,sprintf(['Path Finding for Drone ' num2str(droneNumb)]));
                drawnow;
            end
        end
        
        % Genetic Algorithm Operators
        randomOrder = randperm(popSize);
        for p = 4:4:popSize
            rtes = pop(randomOrder(p-3:p),:);
            dists = totalDist(randomOrder(p-3:p));
            [ignore,idx] = min(dists); %#ok
            bestOf4Route = rtes(idx,:);
            routeInsertionPoints = sort(ceil(n*rand(1,2)));
            I = routeInsertionPoints(1);
            J = routeInsertionPoints(2);
            for k = 1:4 % Mutate the Best to get Three New Routes
                tmpPop(k,:) = bestOf4Route;
                switch k
                    case 2 % Flip
                        tmpPop(k,I:J) = tmpPop(k,J:-1:I);
                    case 3 % Swap
                        tmpPop(k,[I J]) = tmpPop(k,[J I]);
                    case 4 % Slide
                        tmpPop(k,I:J) = tmpPop(k,[I+1:J I]);
                    otherwise % Do Nothing
                end
            end
            newPop(p-3:p,:) = tmpPop;
        end
        pop = newPop;
        
    end

    if nargout
        resultStruct = struct( ...
            'xy',          xy, ...
            'dmat',        dmat, ...
            'popSize',     popSize, ...
            'numIter',     numIter, ...
            'showProg',    showProg, ...
            'optRoute',    optRoute, ...
            'minDist',     minDist);
        
%             'showResult',  showResult, ...
        
        varargout = {resultStruct};
    end

end
