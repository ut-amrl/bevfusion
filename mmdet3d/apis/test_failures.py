import mmcv
import torch
# from tqdm import tqdm

"""
Performs a single GPU single batch test and returns results when the model fails
"""
def single_gpu_test(model, data_loader):
    model.eval()
    results = []
    dataset = data_loader.dataset
    prog_bar = mmcv.ProgressBar(len(dataset))
    # import 
    for data in data_loader:
    # for data in tqdm(data_loader):
        with torch.no_grad():
            result = model(return_loss=False, rescale=True, **data)
        results.extend(result)

        #1 Check APs for bad detection samples
         
            #2 Save 3D bbox detections in a json file
"""         # Use "{timestamp}-{token}" from the data dict for the frameid
                {
                    "frameid0" : [
                        {
                            "bbox3d": [x, y, z, l, w, h, ry],
                            "score": score,
                            "label": label,
                            "objectid": objectid
                        }
                        ,
                        ...
                        {
                            ...
                        }
                    ],
                    ...
                    "frameidn" : [
                        {
                            "bbox3d": [x, y, z, l, w, h, ry],
                            "score": score,
                            "label": label,
                            "objectid": objectid
                        }
                        ,
                        ...
                        {
                            ...
                        }
                    ],
                }
"""
        # Log the final detection results

        batch_size = len(result)
        for _ in range(batch_size):
            prog_bar.update()
    return results
