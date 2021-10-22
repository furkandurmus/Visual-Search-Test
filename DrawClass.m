
classdef DrawClass

    methods (Static)

        function create_conjunction_figure(n, target_validation)
            
            n_target = target_validation;
            title("Find the target if exist")
        
            x1=rand(1,n/4);
            y1=rand(1,n/4);
            sz=200;
            axis square
            xlim([0 1])
            ylim([0 1])
            scatter(x1,y1, sz, "red", 'd', 'filled')
            
            hold on
            x2=rand(1,n/2);
            y2=rand(1,n/2);
            scatter(x2,y2, sz, 'green', 'd', 'filled')
            
            hold on
            x3=rand(1,n/2);
            y3=rand(1,n/2);
            scatter(x3,y3, sz, 'red', 'filled') 

            hold on
            if n_target == 1
                x_target = rand(1,1);
                y_target = rand(1,1);
                scatter(x_target,y_target, sz, 'green', 'filled')
            
            end
      
            set(gca,'visible','off')

        end

        function create_pop_out_figure(n, target_validation)
            
            n_target = target_validation;

            title("Find the target if exist")
        
            x1=rand(1,n/2);
            y1=rand(1,n/2);
            sz=200;
            axis square
            xlim([0 1])
            ylim([0 1])
            scatter(x1,y1, sz, 'red', 'd', 'filled')
            
            hold on
            x2=rand(1,n/2);
            y2=rand(1,n/2);
            scatter(x2,y2, sz, 'red', 'filled')
            
            hold on
            if n_target==1
                x_target = rand(1,1);
                y_target = rand(1,1);
                scatter(x_target,y_target, sz, 'green', 'filled')
   
            end
      
            set(gca,'visible','off')

        end
    end
end
    



