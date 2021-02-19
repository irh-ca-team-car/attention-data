# attention-data

This repo contains the labelled data for the article Returning to the sources : Transfering knowledge from humans to machines

All folders starting with bdd_ are images extracted from the Berkeley Deep Drive and all starting with new_ have been captures by our team.

Berkeley Deep drive are from the Open Dataset from
https://bdd-data.berkeley.edu/
Parts of the image in UQTR were taken and labeled from RTSD
http://graphics.cs.msu.ru/en/research/projects/rtsd

If you use our dataset, please also cite the following
```bibtex
@article{bdd,
   author = {Fisher, Yu and Wenqi, Xian and Yingying, Chen and Fangchen, Liu and Mike, Liao and Vashisht, Madhavan and Trevor, Darrell},
   year = {2018},
   title = {BDD100K: A Diverse Driving Video Database with Scalable Annotation Tooling},
   journal = {arXiv:1805.04687 [cs.CV]},
   url = {https://arxiv.org/abs/1805.04687},
   type = {Journal Article}
}

@article {rtsd,
    title = {Russian traffic sign images dataset},
    journal = {Computer Optics},
    volume = {40},
    number = {2},
    year = {2016},
    pages = {294-300},
    issn = {0134-2452},
    doi = {10.18287/2412-6179-2016-40-2-294-300},
    author = {Vladislav Shakhuro and Anton Konushin}
}
```

| ID     | Source                    |R/P      | Size  | Condition|
|--------|---------------------------|---------|-------|----------|
| DSA    | BDD, RTSD, UQTR           |R+P      | 11011 |Clear / Summer / Winter(Light+Heavy)
| BDD    | BDD                       |R+P      | 10501 |Clear / Summer / Winter(Light)
| BDDP   | BDD                       |P        | 501   |Clear / Summer / Winter(Light)
| DSP    | BDD, RTSD, UQTR           |P        | 759   |Clear / Summer / Winter(Light+Heavy)
| UQTRP  | RTSD, UQTR                |P        | 252   |Clear / Summer / Winter(Heavy)
| UQTRR  | RTSD, UQTR                |R        | 252   |Clear / Summer / Winter(Heavy)
| BDDR   | BDD                       |R        | 10000 |Clear / Summer / Winter(Light)
| DSR    | BDD, RTSD, UQTR           |R        | 10252 |Clear / Summer / Winter(Light+Heavy)


(c) UQTR
