    % Notch DC filter  -     Descrito no datasheet ADS1292rEVM
    d_DC = [1 , -0.992]; 
    n_DC = [1,-1];
    
    % Bandpass 0.67-40 -     Descrito no datasheet ADS1292rEVM
    d_067_40 = 1;
    n_067_40 = [-8.19082876786559e-05 4.82695657317383e-05 0.000121610493422370 0.000117437331863378 2.99436098347816e-05 -0.000129069848546030 -0.000330437311678635 -0.000531566925692955 -0.000684197637632806 -0.000745135307188574 -0.000688013062077038 -0.000513210750585819 -0.000252769618658785 3.22469190396393e-05 0.000262909713648788 0.000360770431746602 0.000269646437561791 -2.47233015282789e-05 -0.000483222291563570 -0.00101494035583388 -0.00149371555735392 -0.00178752140606391 -0.00179447061275014 -0.00147622879007397 -0.000878867811463915 -0.000133217934398327 0.000568566532025172 0.00101720118321746 0.00104182684718336 0.000562935249447656 -0.000372568489325171 -0.00158647999335471 -0.00280009701649176 -0.00369696021972345 -0.00400437732208576 -0.00357364878811525 -0.00243671910191820 -0.000820702025006912 0.000888959504464618 0.00223296316111524 0.00279303216197441 0.00230966792315564 0.000771221101719431 -0.00155314448180609 -0.00415200213387113 -0.00637962236457496 -0.00761237213402423 -0.00741729071257965 -0.00568933132019729 -0.00271731965515224 0.000846785532563671 0.00411797044586338 0.00618438137107531 0.00634403976190557 0.00431358677480207 0.000351631283829431 -0.00474472732161221 -0.00978336162262394 -0.0134392529825593 -0.0145815068060513 -0.0125893510600714 -0.00757601184050583 -0.000453857305783717 0.00719344409807985 0.0134222079986598 0.0163684045245252 0.0147243137403733 0.00814305660142262 -0.00253152001248248 -0.0152809927137517 -0.0271958073199835 -0.0349885265671442 -0.0356449896533534 -0.0270841550646083 -0.00868654142944938 0.0184293780918694 0.0514566389185605 0.0862839005296701 0.118153433318386 0.142473129721077 0.155627277588264 0.155627277588264 0.142473129721077 0.118153433318386 0.0862839005296701 0.0514566389185605 0.0184293780918694 -0.00868654142944938 -0.0270841550646083 -0.0356449896533534 -0.0349885265671442 -0.0271958073199835 -0.0152809927137517 -0.00253152001248248 0.00814305660142262 0.0147243137403733 0.0163684045245252 0.0134222079986598 0.00719344409807985 -0.000453857305783717 -0.00757601184050583 -0.0125893510600714 -0.0145815068060513 -0.0134392529825593 -0.00978336162262394 -0.00474472732161221 0.000351631283829431 0.00431358677480207 0.00634403976190557 0.00618438137107531 0.00411797044586338 0.000846785532563671 -0.00271731965515224 -0.00568933132019729 -0.00741729071257965 -0.00761237213402423 -0.00637962236457496 -0.00415200213387113 -0.00155314448180609 0.000771221101719431 0.00230966792315564 0.00279303216197441 0.00223296316111524 0.000888959504464618 -0.000820702025006912 -0.00243671910191820 -0.00357364878811525 -0.00400437732208576 -0.00369696021972345 -0.00280009701649176 -0.00158647999335471 -0.000372568489325171 0.000562935249447656 0.00104182684718336 0.00101720118321746 0.000568566532025172 -0.000133217934398327 -0.000878867811463915 -0.00147622879007397 -0.00179447061275014 -0.00178752140606391 -0.00149371555735392 -0.00101494035583388 -0.000483222291563570 -2.47233015282789e-05 0.000269646437561791 0.000360770431746602 0.000262909713648788 3.22469190396393e-05 -0.000252769618658785 -0.000513210750585819 -0.000688013062077038 -0.000745135307188574 -0.000684197637632806 -0.000531566925692955 -0.000330437311678635 -0.000129069848546030 2.99436098347816e-05 0.000117437331863378 0.000121610493422370 4.82695657317383e-05 -8.19082876786559e-05];
   
