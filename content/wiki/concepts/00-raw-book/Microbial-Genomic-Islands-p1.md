Indra Mani · Vijai Singh · Khalid J. Alzahrani · Dinh-Toi Chu Editors 

## Microbial Genomic Islands in Adaptation and Pathogenicity

## Microbial Genomic Islands in Adaptation and Pathogenicity

Indra Mani • Vijai Singh • 

Khalid J. Alzahrani • Dinh-Toi Chu 

Editors 

# Microbial Genomic Islands in Adaptation and Pathogenicity

## Editors

Indra Mani 

Department of Microbiology, Gargi 

College 

University of Delhi 

New Delhi, India 

Vijai Singh 

Department of Biosciences 

Indrashil University 

Mehsana, Gujarat, India 

Khalid J. Alzahrani 

Department of Clinical Laboratories 

Sciences, College of Applied Medical 

Sciences 

Taif University 

Taif, Saudi Arabia 

Dinh-Toi Chu 

Center for Biomedicine and Community 

Health 

Vietnam National University 

Hanoi, Vietnam 

ISBN 978-981-19-9341-1 

ISBN 978-981-19-9342-8 (eBook) 

https://doi.org/10.1007/978-981-19-9342-8 

# The Editor(s) (if applicable) and The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

This work is subject to copyright. All rights are solely and exclusively licensed by the Publisher, whether the whole or part of the material is concerned, specifically the rights of translation, reprinting, reuse of illustrations, recitation, broadcasting, reproduction on microfilms or in any other physical way, and transmission or information storage and retrieval, electronic adaptation, computer software, or by similar or dissimilar methodology now known or hereafter developed. 

The use of general descriptive names, registered names, trademarks, service marks, etc. in this publication does not imply, even in the absence of a specific statement, that such names are exempt from the relevant protective laws and regulations and therefore free for general use. 

The publisher, the authors, and the editors are safe to assume that the advice and information in this book are believed to be true and accurate at the date of publication. Neither the publisher nor the authors or the editors give a warranty, expressed or implied, with respect to the material contained herein or for any errors or omissions that may have been made. The publisher remains neutral with regard to jurisdictional claims in published maps and institutional affiliations. 

This Springer imprint is published by the registered company Springer Nature Singapore Pte Ltd. 

The registered company address is: 152 Beach Road, #21-01/04 Gateway East, Singapore 189721, Singapore 

## Foreword

I am delighted to write the foreword for the book on Microbial Genomic Islands in Adaptation and Pathogenicity a well-timed contribution on a rapidly flourishing area of science. To this end, a number of topics from general characteristics of genomic islands (GEIs) and their subtypes are included. This book covers the introduction, tools used to analyze GEIs, and the involvement of GEIs in different microorganisms, such as Escherichia coli, Helicobacter, Staphylococcus, Pseudomonas, Klebsiella, and Vibrio species. It also covers the importance of GEIs in bacterial speciation, resistome gene acquisition, nutritional fitness, adaptation, genome plasticity, and stability. This book provides a comprehensive source of molecular basis understanding of GEIs and their subtypes. 

The book also encompasses fundamental to advanced aspects of GEIs with regard to computation tools, discovery, visualization, analysis, and use of artificial intelligence in microbial GEI. It also covers GEIs and their subtypes, such as pathogenicity, resistance, fitness, and metabolic or symbiosis islands in pathogenic, environmental, commensal, and symbiotic bacteria. Chapters are included in this volume that are written by eminent scientists who are extremely learned in their respective areas of research in microbial genomics. 

It gives me immense joy to recognize the valuable efforts of Dr. Indra Mani, Dr. Vijai Singh, Dr. Khalid J. Alzahrani, and Dr. Dinh-Toi Chu, who have tirelessly worked towards conceiving an excellent volume together with Springer Nature. 

I believe that this book would be a valuable addition to the repertoire of information not just for beginners, but also for students, researchers, scientists, clinicians, practitioners, policymakers, and stakeholders interested in accessing the potential of microbial GEIs right from basic microbiology to its applications. 

School of Life Sciences, University of Warwick Coventry, UK 

Antonia P. Sagona 

# Preface

This book elucidates the genomic islands (GEIs), which acquire through horizontal gene transfer (HGT). HGT is achieved through various ways, such as conjugation, transformation, and transduction. GEIs play an important role in the rapid and intense adaptation of bacterial species phenotypes by carrying clusters of gene, which can assist a cell with novel and useful phenotypes. In addition, GEIs have a crucial role to play in evolution of microbial genome and adaptation of organisms in changing environmental conditions. GEIs are ubiquitous in both pathogenic and nonpathogenic bacteria and are thought to contribute to accessory functions amongst bacterial populations. A broad category of GEIs is often seen, such as integrative and conjugative elements (ICEs), conjugative and prophages, resistance islands (REIs), metabolic islands, xenobiotic-degradation islands, and symbiosis islands. Remarkably before, it was being considered as a paradox, but due to the availability of vast genome sequencing data of various microorganisms, now it is being considered as a paradigm. Therefore, based on the composition, characteristics, and functions of GEIs, it has been further divided into various islands such as pathogenicity, resistance, fitness, and metabolic or symbiosis islands in pathogenic, environmental, commensal, and symbiotic bacteria. 

The structure of this book covers fundamental to applied aspects. Chapter 1 offers an introduction to microbial GEIs for evolutionary adaptation and pathogenicity. Chapters 2 and 3 discuss computation tools for prediction and analysis of GEIs along with Corynebacterium pathogenic species. Chapter 4 explores microbial GEI discovery, visualization, and analysis. Chapter 5 confers GEIs and bacterial speciation. Chapter 6 offers GEIs in the gut microbiome. Chapters 7 and 8 explore GEIs in nutritional fitness and adaptation and are involved in iron uptake. From Chaps. 9–14 cover various aspects of GEIs in a number of bacteria such as Escherichia coli, Helicobacter species, Staphylococcus, Pseudomonas species, Klebsiella pneumonia, and Vibrio cholerae. Chapter 15 discusses GEIs in marine bacteria and Chap. 16 describes the challenges in HGT. Chapter 17 explores artificial intelligence and machine learning for prediction and analysis of GEIs. 

Therefore, this book provides a comprehensive source of molecular basis understanding of GEIs and their subtypes. This book is a valuable source not only for beginners, but also for students, researchers, clinicians, stakeholders, and policymakers interested in the potential of the molecular level understanding of GEIs at different levels in their fields. 

New Delhi, India 

Mehsana, Gujarat, India 

Taif, Saudi Arabia 

Hanoi, Vietnam 

Indra Mani 

Vijai Singh 

Khalid J. Alzahrani 

Dinh-Toi Chu 

# Acknowledgements

I would like to express my sincere gratitude and deep appreciation to the Principal, Gargi College, the University of Delhi, India, for extending his outstanding support and motivation to complete this book. I am thankful to my friend, colleague, and co-editor Dr. Vijai Singh, for his great source of inspiration and motivation to complete this project. Further, I would like to thank my co-editors Dr. Dinh-Toi Chu and Dr. Khalid J. Alzahrani, for their encouragement and support to complete this project. I am delighted to thank all the authors for their excellent contributions to this book. 

I would like to thank editorial staff members Dr. Bhavik Sawhney and Ms. Nandhini Viswanathan from Springer for their excellent management of this project. I would like to thank Prof. Janardan Yadav, Dr. Satya Prakash, Dr. Anurag Tiwari, Dr. Jay Prakash Verma, Dr. Ajay Kumar Singh, Dr. Santosh Kumar Mishra, Dr. Ashok Saini, Dr. Vimal C. Pandey, and who have directly or indirectly helped in shaping this project. 

I wish to express my heartfelt gratitude to my parents, and all members of my family who always filled my mind with affirmations and crowded out the negative thoughts. Most of all, I thank my wife Reena Gond and sons Ankur Kumar Gond and Ankit Kumar Gond, who have helped me during this project. I would like to warmly thank the Faculty and Staff of the Department of Microbiology, Gargi College, University of Delhi, for providing a great working environment. 

And finally, I express my sincere gratitude to all my friends and well-wishers for providing me moral support during the process of writing this book. Last but not least, my sincere thanks to GOD for his supreme POWER for endowing me to live with joy and victory in the shape of this book. 

Dr. Indra Mani 

I would like to express my sincere gratitude and deep appreciation to Dr. J. S. Yadav, Director (Research), Indrashil University, India, for extending his outstanding support and motivation to complete this book. I would like to give many thanks to co-editors, Dr. Indra Mani, Dr. Khalid J. Khalid J. Alzahrani, and Dr. Dinh-Toi Chu, of this book who gave me outstanding personal and professional support as well as inspiration to finish this book. 

I am delighted to thank all the authors for their excellent contributions to this book. I would like to thank Dr. Bhavik Sawhney (Associate Editor—Biomedicine) and Ms. Nandhini Viswanathan (Production Editor) from Springer for their excellent management of this project. 

I would like to thank Prof. Chaitanya G. Joshi, Prof. Rakesh Rawal, Prof. Bharat Maitreya. Prof. Pawan K. Dhar, Dr. Poonam Bhargava, Dr. Madhvi Joshi, Dr. Bhabatosh Das, Dr. Pablo Carbonell, Dr. Rupesh Maurya, Dr. Satya Prakash, Dr. Vimal C. Pandey, Dr. Suresh Ramakrishna, and those whose names do not feature here but have directly or indirectly contributed to shaping this project. 

I greatly appreciate the support of my students Mr. Nisarg Gohil. Mr. Khushal Khambhati, and Ms. Gargi Bhattacharjee, whose discussion and comments helped to shape this book. 

I wish to express my gratitude to my beloved wife Pritee Singh for her endless support, patience, and inspiration. Lots of affection for my kids Aaradhya and Ayush who missed me during this project. I would like to warmly thank the faculty and staff of Indrashil University for providing a great working environment. 

I am aware that even despite our best efforts, the first version always comes with some error that may have crept in the compilation. I would be delighted to receive feedback from readers to further improve the future book. 

Dr. Vijai Singh 

I express my sincere thanks to all the authors for their excellent contributions to this book. This book would not have been possible without the support of many people. I am grateful to my parents, wife, and children for their love and support and for believing in me. They have been extremely supportive to me throughout this entire process and have made countless sacrifices in helping me get to this point. 

I would like to express my deep and sincere gratitude to my research team at Taif University, Saudi Arabia, who have made my professional life such a pleasure. My sincere thanks goes to Dr. Khalaf Alsharif, Dr. Hosam Alzahrani, Dr. Ashraf Albarakati, Dr. Ibrahim Halawani, and Dr. Fuad Alzahrani for their camaraderie and unwavering support. Their levels of patience, knowledge, and ingenuity is something I will always keep aspiring and motivated. 

Dr. Khalid J. Alzahrani 

This book comes from the idea given not only by me but also by all editors Dr. Indra Mani, Dr. Vijai Singh, and Dr. Khalid J. Alzahrani. Therefore, I would like to express my sincere gratitude and deep appreciation to co-editors, especially Dr. Vijai Singh for this meaningful and great work. 

I am delighted to thank all other contributors such as authors and production editors for their works to this project, without their contributions we could not have developed and finished this book. 

I would like to thank my colleagues in the Faculty of Applied Sciences, International School, Vietnam National University, Hanoi, Vietnam, whose knowledge and experience have eased and developed the confidence to take up this work and finally finish the note. 

I would like to thank the members at the Center for Biomedicine and Community Health, International School, Vietnam National University, Hanoi, Vietnam, for their contributions as the authors and the connectors to other scientists in the world who have their inputs directly or indirectly in the book. 

Dr. Dinh-Toi Chu 

## Contents

1 An Introduction to Microbial Genomic Islands for Evolutionary Adaptation and Pathogenicity . 

Ashok Saini, Indra Mani, Manpreet Kaur Rawal, Chaitenya Verma, Vijai Singh, and Santosh Kumar Mishra 

2 Computation Tools for Prediction and Analysis of Genomic Islands . 17 

Muskan Sharma, Sushil Kumar, Gourav Choudhir, Anju Singh, Anu Dalal, and Anuj Kumar 

3 An Overview of Genomic Islands’ Main Features and Computational Prediction: The CMNR Group of Bacteria As a Case Study . 33 

Thaís Cristina Vilela Rodrigues, Arun Kumar Jaiswal, Flávia Figueira Aburjaile, Carlos Augusto Almeida, Rodrigo Dias de Oliveira Carvalho, Janaíne Aparecida de Paula, Rodrigo Profeta Silveira Santos, Fabiana Vieira Dominici, Andrei Giacchetto Felice, Pedro Henrique Marques, Michele Min San Wu, Yngrid Victória Cassiano Mascarenhas, Alexandre Claudino Junior, Thiago de Jesus Sousa, Victor Augusto Sallum Ceballos, Eduarda Guimarães Sousa, Debmalya Barh, Vasco Ariston de Carvalho Azevedo, Sandeep Tiwari, and Siomar de Castro Soares 

4 Microbial Genomic Island Discovery: Visualization and Analysis . 63 

Ashutosh Kabiraj, Moitri Let, Krishnendu Majhi, Shrabana Sarkar, Bhramar Dutta, Rajendra Kr Roy, Dibyendu Khan, Raju Biswas, Urmi Halder, and Rajib Bandopadhyay 

5 Genomic Islands in Bacterial Genome Evolution and Speciation . . . 83 

Ayon Pal, Vivek Roy, Prajesh Dutta, Samarpita Adhikary, Barnan Kr Saha, and Jayanti Saha 

6 Genomic Islands in the Gut Microbiome: Current Knowledge and the Application in the Probiotics Field . 111 

Duy-Ha Nguyen, Nguyen Thai Son, and Dinh Toi Chu 

7 Genomic Islands in Nutritional Fitness and Adaptation . 127 

Praveenya Tirunagari, Megha Choudhary, and Sushanta Deb 

8 Genomic Islands Involved in Iron Uptake . 143 

Stanzin Choksket, Harshvardhan, Ashish Jain, Suresh Korpole, and Vishakha Grover 

9 Genomic Islands in Uropathogenic Escherichia coli . 171 

Shriparna Mukherjee and Ranadhir Chakraborty 

10 Genomic Islands in Helicobacter Species . 197 

Meenambiga Setti Sudharsan, Varsha K, Sowmya Hari, and Sakthiselvan Punniavan 

11 Genomic Islands in Staphylococcus . 207 

Zaaima AL-Jabri and Nada AL-Mebairik 

12 Genomic Islands in Pseudomonas Species . . . 233 

Maytiya Konkit and Van Thai Than 

13 Genomic Islands in Klebsiella pneumoniae . 255 

Suraj Shukla, Purvi Joshi, Pinal Trivedi, Oluwatosin Akinwotu, and Devarshi Gajjar 

14 Molecular Insights into Genomic Islands and Evolution of Vibrio cholerae . 279 

Atul Vashist, Jyoti Verma, Lekshmi Narendrakumar, and Bhabatosh Das 

15 Genomic Islands in Marine Bacteria . 325 

Mohit Kumar, Ashutosh Khaswal, Santosh Kumar Mishra, Abha Vashistha, Indra Mani, and Vijai Singh 

16 Challenges in Eventing Horizontal Gene Transfer . 335 

Mahak Bhushan, Goutam Kumar Dhandh, Vijayaraghava S. Sundararajan, Amita Sharma, Harshita Bhargava, Meera Indracanti, Sankalp Sharma, Ashkan Dashtban, M. Nidheesh, Jayaraman Valadi, and Prashanth Suravajhala 

17 Artificial Intelligence and Machine Learning for Prediction and Analysis of Genomic Islands . 343 

Ankita Shukla, Navnit Kumar Mishra, and Ankur Choudhary 

# Editors and Contributors

## About the Editors

Indra Mani is an Assistant Professor in the Department of Microbiology, Gargi College, University of Delhi (DU), New Delhi, India. He received M.Sc. in Microbiology from Bundelkhand University (BU), Jhansi, UP, India, and Ph.D. in Biochemistry (2010) from Banaras Hindu University (BHU), Varanasi, UP, India. He completed postdoctoral training in the Department of Physiology, School of Medicine, Tulane University, New Orleans, Louisiana, USA. He has worked as a Senior Research Officer (SRO) in the Department of Medicine, All India Institute of Medical Sciences (AIIMS), New Delhi, India. He has more than 10 years of research and teaching experience in Microbiology, Molecular Genetics, Cell Signaling, and Bioinformatics. He has published more than 50 articles in peer-reviewed journals, 35 book chapters, and 4 books. He has presented several papers in the different national and international conferences. He has extensive experience in microbial characterization, molecular genetics, cell culture, fluorescence/confocal microscopy, and in silico analysis. He serves as a reviewer of peer-reviewed journals and a member of national and international societies. 

Vijai Singh is an Associate Professor and Dean (Research and Innovation) in the Department of Biosciences, School of Science at Indrashil University, Rajpur, Mehsana, Gujarat, India. He was an Assistant Professor in the Department of Biological Sciences and Biotechnology at the Institute of Advanced Research, Gandhinagar, India, and also an Assistant Professor in the Department of Biotechnology at the Invertis University, Bareilly, India. Prior to that, he was a Postdoctoral Fellow in the Synthetic Biology Group at the Institute of Systems and Synthetic Biology, Paris, France, and at the School of Energy and Chemical Engineering at the Ulsan National Institute of Science and Technology, Ulsan, South Korea. He received his Ph.D. in Biotechnology (2009) from the National Bureau of Fish Genetic Resources, Uttar Pradesh Technical University, Lucknow, India. During his Ph.D., he has cloned, expressed, and characterized hemolysin from Aeromonas hydrophila in Escherichia coli. He has extensive experience in MAGE, small regulatory RNAs, pathway designing, CRISPR-Cas systems, and microfluidics. His research interests are focused on design of novel biosynthetic pathways for production of medically and industrially important biomolecules. Additionally, his laboratory is developing on CRISPR-Cas9 tools for genome editing and regulation. He has more than 10 years of research and teaching experience in synthetic biology, metabolic engineering, microbiology, and industrial microbiology. He has published more than 80 research articles, 51 book chapters, 16 books, and 4 patents. He serves as an associate editor, editorial board member, and reviewer of a number of peerreviewed journals. He is also a member of the Board of Study and Academic Council of Indrashil University and is the Member Secretary of Institutional Biosafety Committee (IBSC) in the same University. 

Khalid J. Alzahrani is an Associate Professor in the Department of Clinical Laboratories Sciences at Taif University in Taif, Saudi Arabia. He earned a B.Sc. in Laboratory medicine from Umm Al-Qura University, Saudi Arabia (2009), an M.Sc. in Clinical Microbiology from Glasgow Caledonian University, UK (2013), and a Ph.D. in Infection and Immunity from the University of Glasgow, UK (2017). His main areas of interest in research are tropical diseases, drug resistance, vaccine design, proteomics, and bioinformatics, and he has published more than 70 research articles and 11 chapters. 

Dinh-Toi Chu is the Dean of the Faculty of Applied Sciences, International School, Vietnam National University, Hanoi, Vietnam, and he currently also serves as the Director at the Center for Biomedicine and Community Health, International School, Vietnam National University, Hanoi, Vietnam. He was a visiting professor at the Department of Cell Biology and Anatomy, College of Medicine, National Cheng Kung University, Tainan, Taiwan, from June 2021 to December 2021. Dr. Chu was a former researcher and Marie Curie Fellow at the Center for Molecular Medicine Norway and Institute of Cancer Research, Oslo University Hospital, Norway. Dr. Chu has a strong background in biomedical science and public health, especially in lipid metabolism, cancer immunity, and community health, with the Doctor of Veterinary Medicine degree focusing on infection immunity (Vietnam, 2006), a Master of Biological Science focusing on cancer and graft-vs-host-disease immunity (South Korea, 2011), and a Ph.D. in Medical Biology (Poland, 2015). He has more than 140 publications in biomedicine and epidemiology in peer-reviewed journals. Since 2014, he has been a reviewer for about 40 several high-qualified scientific journals such as Nature Communications, the FASEB Journal, Frontiers in Pharmacology, Scientific Reports, and Biomedicine and Pharmacotherapy. He has been a Section Editor for the Journal of Advanced Biotechnology and Experimental Therapeutics. He is also acting as an Associate Editor of the Bioengineered and an Academic Editor of the PLOS ONE. 

## Contributors

Flávia Figueira Aburjaile Preventive Veterinary Medicine Department, Veterinary School, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Samarpita Adhikary Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Oluwatosin Akinwotu Department of Microbiology and Biotechnology Centre, Faculty of Science, The Maharaja Sayajirao University of Baroda, Vadodara, India Environmental and Biotechnology Unit, Department of Microbiology, University of Ibadan, Ibadan, Nigeria 

Zaaima AL-Jabri Department of Microbiology & Immunology, College of Medicine and Health Sciences, Sultan Qaboos University, Muscat, Sultanate of Oman 

Nada AL-Mebairik Department of Clinical Laboratory Sciences, College of Applied Medical Sciences, King Saud University, Riyadh, Kingdom of Saudi Arabia 

Carlos Augusto Almeida Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Preventive Veterinary Medicine Department, Veterinary School, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Vasco Ariston de Carvalho Azevedo Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Rajib Bandopadhyay Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Debmalya Barh Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Harshita Bhargava Department of Computer Science, IIS University, Jaipur, Rajasthan, India 

Mahak Bhushan Department of Biological Sciences ISER Kolkata, Kolkata, West Bengal, India 

Raju Biswas Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Victor Augusto Sallum Ceballos Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Ranadhir Chakraborty OMICS Laboratory, Department of Biotechnology, University of North Bengal, Siliguri, India 

Stanzin Choksket CSIR-Institute of Microbial Technology, Chandigarh, India 

Ankur Choudhary Department of Civil Engineering, Chitkara School of Engineering & Technology, Chitkara University, Baddi, Himachal Pradesh, India 

Megha Choudhary CSIR-Institute of Microbial Technology, Chandigarh, India All India Institute of Medical Sciences (AIIMS), New Delhi, India 

Gourav Choudhir Centre for Rural Development and Technology, Indian Institute of Technology Delhi, New Delhi, India 

Dinh Toi Chu Center for Biomedicine and Community Health, International School, Vietnam National University, Hanoi, Vietnam Faculty of Applied Sciences, International School, Vietnam National University, Hanoi, Vietnam 

Anu Dalal Chemistry Department, Indian Institute of Technology Delhi, New Delhi, India 

Bhabatosh Das Molecular Genetics Laboratory, Department of Infection and Immunology, Translational Health Science and Technology Institute, Faridabad, Haryana, India 

Ashkan Dashtban University College, London, UK 

Thiago de Jesus Sousa Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Janaíne Aparecida de Paula Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Sushanta Deb All India Institute of Medical Sciences (AIIMS), New Delhi, India Department of Molecular Biology & Bioinformatics, Tripura University, Suryamaninagar, Tripura, India 

Goutam Kumar Dhandh Bioclues.org, Hyderabad, India 

Rodrigo Dias de Oliveira Carvalho Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil Department of Biochemistry and Biophysics, Federal University of Bahia, Salvador, Brazil 

Fabiana Vieira Dominici Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Bhramar Dutta Microbiology Section, UGC-Centre for Advanced studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Prajesh Dutta Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Andrei Giacchetto Felice Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Devarshi Gajjar Department of Microbiology and Biotechnology Centre, Faculty of Science, The Maharaja Sayajirao University of Baroda, Vadodara, India 

Vishakha Grover Dr. HS Judge Institute of Dental Sciences and Hospital, Panjab University, Chandigarh, India 

Urmi Halder Microbiology Section, UGC-Centre for Advanced studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Sowmya Hari Department of Bio-Engineering, School of Engineering, Vels Institute of Science, Technology and Advanced Studies, Chennai, Tamilnadu, India 

Harshvardhan CSIR-Institute of Microbial Technology, Chandigarh, India 

Meera Indracanti Department of Life Sciences, School of Allied Health Sciences, Malla Reddy University, Hyderabad, Telangana, India 

Ashish Jain Dental Institute, Rajendra Institute of Medical Sciences, Ranchi, Jharkhand, India 

Arun Kumar Jaiswal Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Purvi Joshi Department of Microbiology and Biotechnology Centre, Faculty of Science, The Maharaja Sayajirao University of Baroda, Vadodara, India 

Alexandre Claudino Junior Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Varsha K Department of Bio-Engineering, School of Engineering, Vels Institute of Science, Technology and Advanced Studies, Chennai, Tamilnadu, India 

Ashutosh Kabiraj Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Dibyendu Khan Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Ashutosh Khaswal Department of Biotechnology, IMS Engineering College, Ghaziabad, U.P, India 

Maytiya Konkit Division of Microbiology, Faculty of Science and Technology, Nakhon-Pathom Rajabhat University, Nakhon-Pathom, Thailand 

Suresh Korpole CSIR-Institute of Microbial Technology, Chandigarh, India 

Anuj Kumar ICAR-Indian Agricultural Statistics Research Institute (IASRI), New Delhi, India 

Mohit Kumar Department of Biotechnology, IMS Engineering College, Ghaziabad, U.P, India 

Sushil Kumar Department of Botany, Shaheed Mangal Pandey Govt Girls PG College, Meerut, India 

Moitri Let Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Krishnendu Majhi Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Indra Mani Department of Microbiology, Gargi College, University of Delhi, New Delhi, India 

Pedro Henrique Marques Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Yngrid Victória Cassiano Mascarenhas Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Navnit Kumar Mishra University Institute of Biotechnology (UIBT), Chandigarh University, Mohali, Punjab, India 

Santosh Kumar Mishra Department of Biotechnology, IMS Engineering College, Ghaziabad, Uttar Pradesh, India 

Shriparna Mukherjee Department of Botany, Prasannadeb Women’s College, Jalpaiguri, India 

Lekshmi Narendrakumar Molecular Genetics Laboratory, Department of Infection and Immunology, Translational Health Science and Technology Institute, Faridabad, Haryana, India 

Duy-Ha Nguyen Department of Microbiology, Vietnam Military Medical University, Hanoi, Vietnam 

M. Nidheesh Amrita School of Biotechnology, Amrita Vishwavidyapeetham, Clappana, Kerala, India 

Ayon Pal Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Sakthiselvan Punniavan Department of Bio-Engineering, School of Engineering, Vels Institute of Science, Technology and Advanced Studies, Chennai, Tamilnadu, India 

Manpreet Kaur Rawal Department of Microbiology, Gargi College, University of Delhi, New Delhi, India 

Rajendra Kr Roy Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Vivek Roy Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Barnan Kr Saha Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Jayanti Saha Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Department of Botany, Acharya Prafulla Chandra Roy Government College, Siliguri, West Bengal, India 

Ashok Saini Department of Microbiology, Institute of Home Economics, University of Delhi, New Delhi, India 

Rodrigo Profeta Silveira Santos Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Shrabana Sarkar Microbiology Section, UGC-Centre for Advanced Studies, Department of Botany, The University of Burdwan, Golapbag, Bardhaman, West Bengal, India 

Centro de Investigación de Estudios Avanzados del Maule, Vicerrectoría de Investigación y Posgrado, Universidad Católica del Maule, Talca, Chile 

Amita Sharma Department of Computer Science, IIS University, Jaipur, Rajasthan, India 

Muskan Sharma Department of Bioscience and Biotechnology, Banasthali Vidyapith, Tonk, Rajasthan, India 

Sankalp Sharma Bioclues.org, Hyderabad, India 

Ankita Shukla University Institute of Biotechnology (UIBT), Chandigarh University, Mohali, Punjab, India 

Suraj Shukla Department of Microbiology and Biotechnology Centre, Faculty of Science, The Maharaja Sayajirao University of Baroda, Vadodara, India 

Anju Singh Department of Chemistry, Shaheed Mangal Pandey Govt Girls PG College, Meerut, India 

Vijai Singh Department of Biosciences, School of Science, Indrashil University, Rajpur, Gujarat, India 

Siomar de Castro Soares Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Nguyen Thai Son Department of Microbiology, Vietnam Military Medical University, Hanoi, Vietnam 

Eduarda Guimarães Sousa Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

Meenambiga Setti Sudharsan Department of Bio-Engineering, School of Engineering, Vels Institute of Science, Technology and Advanced Studies, Chennai, Tamilnadu, India 

Vijayaraghava S. Sundararajan School of Computing and Information Systems, Singapore Management University, Bras Basah, Singapore 

Prashanth Suravajhala Bioclues.org, Hyderabad, India Amrita School of Biotechnology, Amrita Vishwavidyapeetham, Clappana, Kerala, India 

Van Thai Than Faculty of Applied Sciences, International School, Vietnam National University, Hanoi, Viet Nam Center for Biomedicine and Community Health, International School, Vietnam National University, Hanoi, Viet Nam 

Praveenya Tirunagari Department of Biotechnology, Indian Institute of Technology, Kharagpur, India 

Sandeep Tiwari Postgraduate Program in Microbiology, Institute of Biology, Federal University of Bahia, Salvador, Brazil Postgraduate Program in Immunology, Institute of Health Sciences, Federal University of Bahia, Salvador, Brazil 

Pinal Trivedi Department of Microbiology and Biotechnology Centre, Faculty of Science, The Maharaja Sayajirao University of Baroda, Vadodara, India 

Jayaraman Valadi Department of Computer Science, FLAME University, Pune, MH, India 

Atul Vashist Molecular Genetics Laboratory, Department of Infection and Immunology, Translational Health Science and Technology Institute, Faridabad, Haryana, India 

Abha Vashistha Department of Biosciences, University institute of Biotechnology, Chandigarh University, Mohali, Punjab, India 

Chaitenya Verma Department of Pathology, Ohio State University, Columbus, OH, USA 

Jyoti Verma Molecular Genetics Laboratory, Department of Infection and Immunology, Translational Health Science and Technology Institute, Faridabad, Haryana, India 

Thaís Cristina Vilela Rodrigues Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Michele Min San Wu Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

# An Introduction to Microbial Genomic Islands for Evolutionary Adaptation and Pathogenicity

1 

Ashok Saini, Indra Mani, Manpreet Kaur Rawal, Chaitenya Verma, Vijai Singh, and Santosh Kumar Mishra 

## Abstract

Genomic islands (GEIs) play a vital role in the bacteria’s evolutionary adaptation and pathogenicity. GEIs are the unusual region located in the bacterial genome acquired through horizontal gene transfer (HGT). HGT is achieved through various ways, such as conjugation, transformation, and transduction. General features of GEIs are different G + C content as compared to other parts of the genome (core genome), size about 10–200 kb, association with tRNA-encoding genes, mostly flanked by repeat structures and may carry other accessory elements such as insertion sequence (IS) elements, plasmids, bacteriophages, and other mobile elements. GEIs are present in both pathogenic and non-pathogenic bacteria. Therefore, based on the composition, characteristics, and functions of GEIs, it has further divided into various islands such as pathogenicity, resistance, fitness and metabolic or symbiosis islands in pathogenic, environmental, commensal, and symbiotic bacteria. This chapter briefly 

A. Saini Department of Microbiology, Institute of Home Economics, University of Delhi, New Delhi, India 

I. Mani (✉) · M. K. Rawal Department of Microbiology, Gargi College, University of Delhi, New Delhi, India e-mail: indra.mani@gargi.du.ac.in 

C. Verma Department of Pathology, Ohio State University, Columbus, OH, USA 

V. Singh Department of Biosciences, School of Science, Indrashil University, Rajpur, Mehsana, Gujarat, India 

S. K. Mishra Department of Biotechnology, IMS Engineering College, Ghaziabad, Uttar Pradesh, India 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_1 

highlights the GEIs and their role in the bacteria’s evolutionary adaptation and pathogenicity. In addition, the role of GEIs in pangenome is also discussed. 

## Keywords

Genomic Islands (GEIs) · Pathogenicity islands (PAIs) · Pangenome · Horizontal gene transfer (HGT) · Adaptation · Evolution · Antibiotic resistance 

## 1.1 Introduction

Microbial genomes have evolved as a result of slow accumulation of mutations, largely by taking over new DNA either via the entry of single genes or the addition of large gene clusters, known as Genomic Islands (GEIs), via horizontal gene transfer (HGT). HGT is also known as lateral gene transfer (LGT). Generally, large blocks of horizontally acquired DNA sequences encode virulent determinant in pathogenic bacteria and help in the evolution of the microbial genomes. When there are multiple GEIs within a single genome, up to 28% of similarity has been found among them, indicating recurring possession from the same donor to the same acceptor (Roos and van Passel 2011). Further study will help to a better understanding of suggested output. 

The GEIs are usually inserted into tRNA genes, transfer-messenger RNA (tmRNA) genes, and some small RNA genes. First, GEI was detected in the GMP synthase gene (guaA). Later on, around 34 GEIs have been detected in guaA genes of 987 completely sequenced genomes of archaea and bacteria (Proteobacteria, Firmicutes, and Actinobacteria) (Song et al. 2012). The mobility of these islands was further determined and found that guaA-associated islands are composed of integrases from P4 and PhiLC3 phages. Additionally, island-encoding proteins such as AlpA and XRE act as positive and negative transcriptional regulators for P4 and PhiLC integrases, respectively (Song et al. 2012). More studies will help to understand the distribution of GEIs in other microorganisms. 

GEIs play many roles in various metabolic activities, adaptation during evolution, pathogenesis, and multiple drug resistance. Rao et al. predicted and functionally characterized around 46 GEIs found in the genome of livestock-associated Staphylococcus aureus. These GEIs are found to be consisting of various genes of metabolic operons like leuABCD and folPK genes suggesting their role and importance in niche adaptation. Mycoplasma and Rickettsia were found as the key donors of these elements to S. aureus, suggesting their evolutionary relatedness (Rao et al. 2020). The transfer of genes or part of genomes between species is usually done by transduction, conjugation, or transformation. A graphic representation of the mode of the HGT is given in Fig. 1.1. The transferred DNA modifies the microbial genome abruptly and provides some new properties such as pathogenicity or virulence. For pathogenicity, many virulence factors such as toxins, iron uptake system, adhesins, protein secretory system, etc., are required (Gal-Mor and Finlay 2006). The genes of these virulence factors are usually present in a particular region of the genome known as pathogenicity islands (PAIs) (Gal-Mor and Finlay 2006). Additional studies will help to recognize the different types of GEIs in numerous microorganisms. 


Fig. 1.1 Graphic representation of the mode of the horizontal gene transfer (HGT) via transformation, conjugation, and transduction


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/0fc42ea2a4b3a00cd5b20dff8f5dd37c1b011fb445ef4bf032b295abc7ab9de7.jpg)


The PAIs are only present in a wide range of pathogenic strains or species of both Gram-positive and Gram-negative bacteria which causes diseases in plants, animals, and humans but generally absent in non-pathogenic strains or species. The non-pathogenic strains sometimes acquired these pathogenicity islands via HGT mechanisms (Hacker and Kaper 2000). These PAIs were first identified in Escherichia coli, one of the most common human pathogenand later in the microbial genomes of other pathogenic bacteria causing diseases in plants, animals, and humans. Structurally, PAIs have many features such as different G + C content compared with other genomic regions, direct repeats at their ends, size of about 10–200 kb, associated with tRNA genes, genetic instability, presence of integrase enzyme and other mobile regions (Hacker and Kaper 2000). In addition, transferred DNA fragments usually contain clusters of genes associated with various functions such as microbial adaptation, pathogenicity, and multiple drug resistance known as GEIs. A schematic illustration of GEIs of bacteria is shown in Fig. 1.2. Thus, GEIs play an important role in microbial evolution, speciation, and disease outbreak. 

A comprehensive analysis of genomic islands of 63 prokaryotic genomes was done by Hsiao et al. in 2005. They had observed that the novel genes are significantly present in the predicted genomic islands in comparison with the other genomic regions. Finding suggests that bacteria and archaea are adapted to a particular environmental condition, such as antibiotic resistance, metal resistance, pathogen virulence activity, etc., via acquiring these novel genes mainly found in genomic islands by the HGT mechanism (Hsiao et al. 2005). Therefore, the importance of PAIs and GEIs in the evolution of bacterial virulence, their identification and molecular characterization have become essential objectives. GC content distribution is a crucial characteristic of a genome. Traditionally, a window-based method is used for computing GC content distribution. However, it had a low sensitivity. In 2014, Zhang et al. developed another technique called the GC profile method, which was highly sensitive, gives a better resolution (Zhang et al. 2014) and therefore, is more favored when identifying horizontally transferred GEIs and other GC-contentrelated studies. The red recombination approach can be used to study the role of different loci. Cosmid libraries can be screened for clones harboring entire Salmonella pathogenic island (SPI) or GEI (Hensel 2007). Further, different bioinformatics approaches are used to identify putative SPI and GEI. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/5429f55a666b974c8300fd84210b203dc1b6b9ca1cd46b6232d4a338605d2639.jpg)



Fig. 1.2 Schematic illustration of genomic islands (GEIs) of bacteria. The GC content (%) of the GIEs is different compared to the core genome. Horizontally transferred DNA linked with tRNA gene and flanked by direct repeats. Functions encoded by acquired genes are shown in different islands such as pathogenicity, resistance, metabolic and symbiosis islands. IS, Insertion sequence element


The functional diversity of closely related microorganisms can be studied using Prochlorococcus ecotypes as a system. It has been observed that 16S rRNA sequences of closely related strains of photoautotrophs and pathogenic Prochlorococcus cells living together were different from each other by ~1%, mainly in the region of GEIs present in them. The genes present in these GEIs are mainly acquired by phage-mediated HGT, which expresses differentially under nutrient and light stress and shares many features (Coleman et al. 2006). In a similar study, 21 GEIs had been identified in the Burkholderia cenocepacia J2315 strain using two independent prediction methods based on potential virulence factors. Out of 21 GEIs, 4 were predicted as PAIs, and the genes present in them are found to be responsible for bacterial invasion and replication (Guo et al. 2017). 

## 1.2 Types of Genomic Islands

Based on genetic components and functions, various genomic islands are exhibited, such as pathogenicity, resistance, fitness and metabolic or symbiosis islands in the pathogenic, environmental, commensal, and symbiotic bacteria. 

## 1.2.1 Pathogenicity Islands

Whole genome sequencing (WGS) data of various pathogenic microorganisms help to understand the mechanism of pathogenesis. For instance, the characterization of S. aureus genomic island vSaβ has led to the identification of the strain’s virulenceassociated genes (Kläui et al. 2019). WGS data of multi - and extensively drugresistant (MDR and XDR) Vibrio cholerae revealed the presence of various mobile elements, as well as plasmids, play an important role in the fitness and adaptation (Verma et al. 2019). The presence of 4 GEIs in 7 tetracycline-resistant Chlamydia suis strains represents an important example of horizontally transferred new DNA into a natural isolate of Chlamydiae bacterium (Dugan et al. 2004). Furthermore, these islands have shown significant sequence similarity among several species. 

Similarly, the presence of a novel variant of Salmonella genomic island 1 (SGI1) in avian pathogenic E. coli isolates presents another example of a HGT that enhances its capacity for antimicrobial resistance (Cummins et al. 2019). Campylobacter spp. like Campylobacter coli and C. jejuni cause acute intestinal diseases in humans. An ATP-binding cassette F (ABC-F) protein encoded by the optrA gene was found to confer resistance to oxazolidinones and phenicols in these pathogens. Moreover, sequence analysis of nine such optrA-positive strains of Campylobacter revealed the presence of the optrA gene on a chromosome-borne multidrug resistance genomic island (Tang et al. 2021). Similar is the case with another human pathogen, Streptococcus pyogenes. Virulence in this pathogen is closely linked to S. pyogenes phage-like chromosomal islands (SpyCI) (Nguyen and McShan 2014). These CIs are responsible for antibiotic resistance in S. pyogenes and other streptococcal species. Virulence genes present on GEIs and plasmids promoted bacterial pathogen emergence (Schoeniger et al. 2016). SPI in Salmonella enterica confers important virulence traits. Similarly, Aeromonas salmonicida genomic islands (AsaGEIs) confer virulence in Aeromonas salmonicida subsp. Salmonicida (Vincent et al. 2021). Notably, a variation within the number and composition of GEIs was noticed, which was responsible for different antimicrobial patterns in many strains. 

## 1.2.2 Resistance Islands

Genes responsible for multiple antibiotic resistance are usually found on plasmids. However, antibiotic-resistance genes are also located on mobile DNA elements such as transposons, integrative and conjugative elements (ICEs), GEIs, and prophages. The presence, geographical distribution, and genomic location of 7 mobile oxazolidinone resistance genes were studied recently in different Gram-positive and Gram-negative bacteria by Schwarz et al., in 2021. These genes usually code for 23S rRNA methylases and ABC-F proteins which confers resistance against antibiotics. These oxazolidinone resistance genes were located on transposons, prophages, ICEs, and GEIs, in addition to the plasmids. These mobile elements are mainly responsible for disseminating multiple drug resistance across various strains (Schwarz et al. 2021). Results suggest that different antibiotic-resistance genes may reside in several mobile elements, including plasmids. 

A study has shown that the GEIs consist of antibiotic-resistance genes and thus play an important role in the transmission of multiple drug resistance between the species and strains. Mestrovic and Ljubin-Sternak (2018) studied the cause of generation of multiple drug resistance strains of Chlamydia trachomatis (C. trachomatis), a primary causative agent of sexually transmitted infections mainly in developed and undeveloped countries. They had found that C. trachomatis is resistant to multiple antibiotics such as azithromycin, tetracycline, fluoroquinolone, rifampicin, etc., and the development of resistance is linked to various mechanisms such as point mutation, nucleotide substitution, etc., and some of these genes are found in genomic islands present in C. trachomatis genome (Mestrovic and Ljubin-Sternak 2018). The transfer of multiple antibiotic-resistance genes from one microorganisms to other is a great concern to clinicians and researchers, and it is a major threat to society. 

In another study, the factors responsible for antimicrobial resistance in Trueperella pyogenes (T. pyogenes) TP3 and TP4 isolates were studied, which causes a variety of suppurative infections. The comparative analysis showed that both isolates were resistant to multiple antibiotics such as erythromycin, azithromycin, tetracycline, amikacin, gentamicin and the genes responsible for the resistance were located on two different genomic islands. Many genes in these regions are homologous to each other and are mainly acquired via HGT (Dong et al. 2020). In a similar study, the role of HGT in Riemerella anatipestifer, a Gramnegative bacterium that causes contagious septicemia in birds, was studied to establish a relation of HGT with the acquirement of genetic diversity and antibiotic-resistance genes. An antibiotic-resistance gene cluster was identified in all studied genomes at the same loci, and these loci can acquire various virulence genes (Zhu et al. 2020). Such study needs to further expand in the plant, human, and animal diseases to understand the HGT. 

Poultry-associated serovars of non-typhoidal Salmonella enterica (NTS) belonging to different epidemiological regions were characterized by the presence of resistome and multidrug resistance patterns. About 60% of all the isolates were found positive for multidrug resistance which is usually mediated by chromosomal single nuceotide polymorphisms (SNPs) and various mobile genetic elements (Cohen et al. 2020). Moreover, a novel genomic island (SGI1) having streptomycin-azithromycin resistance genes was identified in two isolates— Blockley and Kentucky which suggests that the autonomous genetic elements confer antibiotics and resistance to heavy metals and usually disseminate via the food chain to humans and poultry (Cohen et al. 2020). Methicillin-sensitive Staphylococcus aureus (MSSA) acquired methicillin-resistance gene and modified as Methicillinresistance Staphylococcus aureus (MRSA) and it shows increased adaptability (Ito et al. 1999). The plasmid-encoded ciprofloxacin-modifying enzyme (CrpP) is responsible for increased resistance to fluoroquinolones in Pseudomonas aeruginosa isolates. Ortiz de la Rosa et al. 2020, observed similar crpP-like genes in chromosomes, a part of PAIs (Ortiz de la Rosa et al. 2020). These crpP-like genes confer variable levels of reduced susceptibility to fluoroquinolones in multidrugresistant P. aeruginosa clinical isolates. 

The structure and composition of the genomic island (AbaR-type genomic islands) responsible for the generation of antimicrobial resistance in Acinetobacter baumannii were studied. Conserved sequences have been identified at both ends of AbaRs, which were further used as signature sequences to identify AbaRs in all available genomes of A. baumannii. AbaRs were found in more than 2000 genomes and the insertion sites for these AbaRs had been mapped at various locations on the chromosomes, a few plasmids, prophages, transposons, and even other types of genomic islands. Moreover, around 1000 genes associated with antimicrobial resistance were located in AbaRs and some are unique to them, thus displaying a clonalspecific lineage pattern of distribution (Bi et al. 2019). The finding of this study can be helpful to design a primer and probe from the conserved region for rapid detection of microorganisms. 

## 1.2.3 Fitness and Metabolic Islands

As HGT also contributes to the adaptation and diversification of bacteria mediated by GEIs. Thus, the evolutionary origins of Haemophilus influenzae antibiotic resistance island (ICEHin1056) were investigated. It has been found that these GEIs have core and accessory genes in almost equal part and the GC% of the core genes is also similar to the host bacteria (38–40%). But antibiotic-resistance genes change the GC % and number of variable sites indicating their recent acquirement (Juhas et al. 2007). New gene acquisition through HGT plays a significant role in the genomic variability of microbial species. 

The effect of GEIs present in Pseudomonas putida KT2440 strains was analyzed which constitutes ~4.12% of the total genome size. The mutant strain (KTU-U13) was developed by deleting the genomic islands and further characterized. The mutant strain had shown many improved characteristics over original strains, such as higher plasmid transformation efficiency, high heterologous protein expression, effective utilization of various carbon sources, improved polyhydroxyalkanoate (PHA) content, high cell dry weight, and higher chromosomal integration efficiency of various biodegradation pathways. Thus, generating these kinds of mutants with better properties may be useful in various synthetic biology or biodegradation pathways (Liang et al. 2020). Finding suggests that a similar approach can be utilized in other microorganisms, and deleted GEIs mutants can explore for different purposes. 

Food poisoning and infection are major threats to public health due to poor hygiene conditions. The major causative agent for food poisoning is Salmonella enterica QH (S. enterica). S. enterica QH strain displays different properties during pathogenesis and in vitro culture. In normal lab conditions S. enterica QH easily grows on Luria-Bertani (LB) medium and shows susceptibility toward various antibiotics whereas during infection it quickly adapts to the environmental/host niches and contributes to pathogenicity. Comparative genomic analysis of S. enterica QH with other Salmonella strains reveals that S. enterica QH strain has several large mobile sequences including GEIs which confer pathogenesis by modulating the host’s immune system. These GEIs act as drivers for its adaptation in host niches requiring its colonization in intestine and further dissemination (Han et al. 2020). Comprehensive whole genome analyses are required for such niches for different pathogenic microorganisms. 

The study has shown that Pseudomonas putida can degrade phenolic compounds and increase adaptability (Ravatn et al. 1998). Similarly, GEIs of fecal E. coli, Klebsiella spp., Salmonella enterica subgroups III and VI have been identified and their functions in iron uptake and increased adaptability (Bach et al. 2000; Oelschlaeger et al. 2003). In addition, the complete genome information of the Wenzhouxiangella marina supports multiple horizontal gene transfers with other marine bacteria living in the same habitat (Lee et al. 2015), thus expanding the repertoire of marine bacterial genomic diversity. 

Fungi are considered model organisms for studying various processes such as adaptive divergence due to their properties like simple morphology, smaller genome size, contrasting and well-identified ecological niches, and shorter generation time, and most of them are responsive to various experimental methods. Fungi are adapted in a very diverse lifestyle ranging from saprotrophs to pathogens, thus playing very important roles such as saprophytes, mycorrhiza, lichens, pathogens, and various fermentation to produce drugs and other products, such as enzymes. Multiple mechanisms and patterns such as divergence source, variations in genomes and speciation are used by fungi to show adaptive divergence for various ecological niches. Gladieux et al. (2014) had reviewed the important processes such as genomic changes, amino acid substitution, gene duplication, gene loss, and changes in gene expression and genome architecture that have a role in adaptation to various ecological niches. They found that a variety of movable genomic segments such as transposable elements and genomic islands are responsible for the interspecific acquirement of genomic variations leading to the speciation of fungal pathogens (Gladieux et al. 2014). Further study will be helpful to understand the role of GEIs in fungal diversity. 

## 1.2.4 Symbiotic Islands

Similar to genomic islands, symbiotic islands can be horizontally transferred. Recently, a putative symbiosis island facilitating symbioses between true bugs and several Burkholderia species was found (Stillson et al. 2022). First, symbiosis island was recognized as a transmittable 500-kb DNA element in Mesorhizobium loti ICMP3153. It was associated with a $\mathrm { t R N A } ^ { \mathrm { P h e } }$ gene (Sullivan and Ronson 1998). It carried the genes related to Nod factor synthesis, island transfer, and nitrogen fixation. In addition, IS elements and transposons are present in the symbiosis islands (Galibert et al. 2001; González et al. 2003). The study has characterized the functions of nitrogen fixation, and nodulation in Rhizobia that increased metabolic versatility and bacteria–host interactions (Sullivan et al. 2002). Similarly, the nitrogen fixation property has been characterized in Wolinella succinogenes, increasing the adaptation of microbes (Baar et al. 2003). Symbiotic islands are very helpful for the microorganisms to better survival in different environmental conditions. This area needs to be further explore. 

## 1.3 In Silico Prediction Tools and Databases of Genomic Islands

Several tools have been developed for the identification of the different types of GEIs. Lee et al. developed a web server called—GI-POP (http://gipop.life.nthu. edu.tw) for predicting the genomic islands carrying genes for pathogenicity or antibiotic resistance while sequencing the genomes (Lee et al. 2013). Waack et al. in 2006 designed a very sensitive algorithm—SIGI-HMM to identify the genomic islands in the microbial genomes. This tool analyzes the microbial genomes based on codon usage of every gene of the genome under study in very detail in an interactive manner and finally generates a hypothesis regarding the origin of those islands and the genes present in them (Waack et al. 2006). In silico tools are very effective to predict the GEIs and their types based on different parameters. 

There are various in silico tools available for the prediction of genomic islands from the microbial genome. Some of them are mentioned in ascending year of publication, such as PAI-IDA (Tu and Ding 2003), Islander (Mantri and Williams 2004), Wn-SVM (HGT) (Tsirigos and Rigoutsos 2005), SIGI-HMM (HGT) (Waack et al. 2006), MobilomeFINDER (Ou et al. 2007), Centroid (Aravamuthan and Mande 2007), PredictBias (Pundhir et al. 2008), MJSD (Arvey et al. 2009), INDeGenIUS (Shrivastava et al. 2010), EGID (Che et al. 2011), PIPS (Soares et al. 2012), GIST (Hasan et al. 2012), GI-POP (Lee et al. 2013), GC-profile (Zhang et al. 2014), Sighunt (Jaron et al. 2014), GIHunter (Han Wang et al. 2014), IslandViewer 3 (Dhillon et al. 2015), GI-SVM (Lu and Leong 2016), Zisland Explorer (Wei et al. 2017), IslandViewer (Bertelli et al. 2017), MTGIpick (Dai et al. 2018), IslandPath-DIMOB (Bertelli and Brinkman 2018), panRGP (Bazin et al. 2020), 2SigFinder (Kong et al. 2020), Shutter Island (Assaf et al. 2021), etc. In addition, there are various databases available for the genomic islands such as MOSAIC (Chiapello et al. 2005), PAIDB (Yoon et al. 2007), VFDB (Yang et al. 2008), Pre_GI (Pierneef et al. 2015), Islander (Hudson et al. 2015), etc. Databases provide a great source of biological data, which is very helpful at the molecular level of understanding. 

## 1.4 Pangenome

Availability of high throughput sequencing technology (NGS), databases (NCBI, DDBJ, EMBL), and in silico tools helps to comprehensively analyze genomics and metagenomics data (Mani 2020; Gupta et al. 2021; Mani 2021; Gangotia et al. 2021). Comparative genomic analysis of bacteria has shown remarkable diversity in their genome. Further, it was hypothesized that due to the acquisition of new genes through HGT, the genome size of particular bacterial species has shown great diversity. The bacterial genome can acquire new genes anywhere, between 1.6–32% using HGT (Choi and Kim 2007). Hence, GEIs create an additional challenge to executing phylogenetic relationship among diverse bacterial species (Arndt et al. 2016). However, identification and characterization of different GEIs in microbial genomes certainly will help to develop diagnostic markers (molecular and immunological), antibiotics, new vaccines, or cancer therapies (Coates and Hu 2007; Bar et al. 2008). The study has shown the presence of virulence genes and pathogenicity genes in PAIs (Schmidt and Hensel 2004; Ho Sui et al. 2009). It has been identified that potential vaccine candidates are located within the PAIs (Moriel et al. 2010). Based on the rate of genomic variability of the microorganisms, the pangenome has been divided into open and closed pangenome. 

## 1.4.1 Open and Closed Pangenome

Some species have unique sequences which may or may not share by other species. Such a region is considered an accessory/flexible genome. So, pangenome consists of a core genome and an accessory/flexible genome. The core genome will present in all the species, while the accessary/flexible genome is strain-specific. After analysis of strain-specific genome sequencing data, pangenome has been categorized as closed and open pangenome. Open pangenome occurred whereas most likely various bacterial species present and contain large numbers of bacteria such as rhizosphere, biofilms, the rumens, and guts of animals. However, microbes which show closed pangenome are not shown more genomic diversity. This is because such microbes reside in a very isolated and specific environment, such as seawater or the intracellular niches of obligate symbionts and parasites (Dobrindt et al. 2004). Due to this, there are fewer chances of the occurrence of HGT. 

## 1.5 Concluding Remarks



Bertelli C, Laird MR, Williams KP et al (2017) IslandViewer 4: expanded prediction of genomic islands for larger-scale datasets. Nucleic Acids Res 45(W1):W30–W35 





Guo FB, Xiong L, Zhang KY, Dong C, Zhang FZ, Woo PC (2017) Identification and analysis of genomic islands in Burkholderia cenocepacia AU 1054 with emphasis on pathogenicity islands. BMC Microbiol 17(1):73 





Mestrovic T, Ljubin-Sternak S (2018) Molecular mechanisms of Chlamydia trachomatis resistance to antimicrobial drugs. Front Biosci 23(4):656–670 





Sullivan JT, Ronson CW (1998) Evolution of rhizobia by acquisition of a 500-kb symbiosis island that integrates into a phe-tRNA gene. Proc Natl Acad Sci U S A 95(9):5145–5149. https://doi. org/10.1073/pnas.95.9.5145. Erratum in: Proc Natl Acad Sci U S A 1998 Jul 21;95(15):9059 



The whole genome shotgun and metagenome sequencing data of various microbial isolates have shown great diversity in size and unusual features in the genome. Remarkably before, it was considered a paradox, but due to the availability of vast genome sequencing data of various microorganisms, now it is being considered a paradigm. To understand the genomic islands and their subtypes, multi-omics approaches such as metagenomics, metatranscriptomics, metaproteomics, and metabolomics can be helpful. To characterize the species/strain, a comprehensive analysis of genome sequencing data of various isolates is required. Due to emergence and re-emergence of pathogenic microorganisms in environments, there is a great opportunity to explore the culture-independent (Metagenomic) method to characterize and identify various genomic islands and their types. In addition, new gene acquisition can be used to develop molecular and immunological tools to diagnose pathogenic microbes and to develop a vaccine against emerging pathogens. 



Bi D, Xie R, Zheng J, Yang H, Zhu X, Ou HY, Wei Q (2019) Large-scale identification of AbaRtype genomic islands in acinetobacter baumannii reveals diverse insertion sites and clonal lineage-specific antimicrobial resistance gene profiles. Antimicrob Agents Chemother 63(4): e02526–e02518 





Gupta A, Gangotia D and Mani I (2021) Bioinformatics tools and softwares Advances in bioinformatics. V. Singh, A Kumar (eds). Springer Nature, Singapore. 15–34. ISBN: 978-981-336-191-1 





Moriel DG, Bertoldi I, Spagnuolo A, Marchi S, Rosini R et al (2010) Identification of protective and broadly conserved vaccine antigens from the genome of extraintestinal pathogenic Escherichia coli. Proc Natl Acad Sci U S A 107:9072–9077 





Sullivan JT, Trzebiatowski JR, Cruickshank RW, Gouzy J, Brown SD et al (2002 Jun) Comparative sequence analysis of the symbiosis island of Mesorhizobium loti strain R7A. J Bacteriol 184(11):3086–3095. https://doi.org/10.1128/JB.184.11.3086-3095.2002 



Conflict of Interest None. 



Che D, Hasan MS, Wang H, Fazekas J, Huang J, Liu Q (2011) EGID: an ensemble algorithm for improved genomic island detection in genomic sequences. Bioinformation 7(6):311–314 





Hacker J, Kaper JB (2000) Pathogenicity islands and the evolution of microbes. Annu Rev Microbiol 54:641–679 





Nguyen SV, McShan WM (2014) Chromosomal islands of Streptococcus pyogenes and related streptococci: molecular switches for survival and virulence. Front Cell Infect Microbiol 12(4): 109 





Tang S, Yang R, Wu Q, Ding Y, Wang Z, Zhang J, Lei T, Wu S, Zhang F, Zhang W, Xue L, Zhang Y, Wei X, Pang R, Wang J (2021) First report of the optrA-carrying multidrug resistance genomic island in Campylobacter jejuni isolated from pigeon meat. Int J Food Microbiol 16(354):109320 



## References



Chiapello H, Bourgait I, Sourivong F, Heuclin G, Gendrault-Jacquemard A, Petit MA, El Karoui M (2005) Systematic determination of the mosaic structure of bacterial genomes: species backbone versus strain-specific loops. BMC Bioinf 12(6):171 





Han S, Hu W, Kan W, Ge Z, Song X, Li L, Shang Y, Zeng Q, Zhou JH (2020) Analyses of genetics and pathogenesis of Salmonella enterica QH with narrow spectrum of antibiotic resistance isolated from yak. Infect Genet Evol 82:104293 





Oelschlaeger TA, Zhang D, Schubert S, Carniel E, Rabsch W, Karch H, Hacker J (2003) The highpathogenicity island is absent in human pathogens of Salmonella enterica subspecies I but present in isolates of subspecies III and VI. J Bacteriol 185(3):1107–1111. https://doi.org/10. 1128/JB.185.3.1107-1111.2003 





Tsirigos A, Rigoutsos I (2005) A sensitive, support-vector-machine method for the detection of horizontal gene transfers in viral, archaeal and bacterial genomes. Nucleic Acids Res 33(12): 3699–3707 





Choi IG, Kim SH (2007) Global extent of horizontal gene transfer. Proc Natl Acad Sci U S A 104(11):4489–4494. https://doi.org/10.1073/pnas.0611557104 





Han Wang DC, Wang H, Fazekas J et al (2014) An accurate genomic island prediction method for sequenced bacterial and archaeal genomes. J Proteomics Bioinform 7:214–221 





Ortiz de la Rosa JM, Nordmann P, Poirel L (2020) Pathogenicity genomic island-associated CrpPlike fluoroquinolone-modifying enzymes among Pseudomonas aeruginosa clinical isolates in Europe. Antimicrob Agents Chemother 64(7):e00489–e00420 





Tu Q, Ding D (2003) Detecting pathogenicity islands and anomalous gene clusters by iterative discriminant analysis. FEMS Microbiol Lett 221(2):269–275 





Aravamuthan S, Mande SS (2007) Identification of compositionally distinct regions in genomes using the centroid method. Bioinformatics 23:2672–2677 





Coates AR, Hu Y (2007) Novel approaches to developing new antibiotics for bacterial infections. Br J Pharmacol 152:1147–1154 





Hasan MS, Liu Q, Wang H, Fazekas J, Chen B, Che D (2012) GIST: Genomic Island suite of tools for predicting genomic islands in genomic sequences. Bioinformation 8(4):203–205 





Ou HY, He X, Harrison EM, Kulasekara BR, Thani AB, Kadioglu A, Lory S, Hinton JC, Barer MR, Deng Z, Rajakumar K (2007) MobilomeFINDER: web-based tools for in silico and experimental discovery of bacterial genomic islands. Nucleic Acids Res 35(Web Server issue):W97– W104 





Verma J, Bag S, Saha B, Kumar P, Ghosh TS, Dayal M, Senapati T, Mehra S, Dey P, Desigamani A, Kumar D, Rana P, Kumar B, Maiti TK, Sharma NC, Bhadra RK, Mutreja A, Nair GB, Ramamurthy T, Das B (2019) Genomic plasticity associated with antimicrobial resistance in Vibrio cholerae. Proc Natl Acad Sci U S A 116(13):6226–6231 





Arndt D, Grant J, Marcu A, Sajed T, Pon A, Liang Y, Wishart D (2016) PHASTER: a better, faster version of the PHAST phage search tool. Nucleic Acids Res 44(W1):W16–W21 





Cohen E, Davidovich M, Rokney A, Valinsky L, Rahav G, Gal-Mor O (2020) Emergence of new variants of antibiotic resistance genomic islands among multidrug-resistant Salmonella enterica in poultry. Environ Microbiol 22(1):413–432 





Hensel M (2007) Genome-based identification and molecular analyses of pathogenicity islands and genomic islands in Salmonella enterica. Methods Mol Biol 394:77–88 





Pierneef R, Cronje L, Bezuidt O, Reva ON (2015) Pre_GI: a global map of ontological links between horizontally transferred genomic islands in bacterial and archaeal genomes. Database (Oxford) 17(2015):bav058. https://doi.org/10.1093/database/bav058 





Vincent AT, Intertaglia L, Loyer V, Paquet VE, Adouane É, Martin P, Bérard C, Lami R, Charette SJ (2021) AsaGEI2d: a new variant of a genomic island identified in a group of Aeromonas salmonicida subsp. salmonicida isolated from France, which bears the pAsa7 plasmid. FEMS Microbiol Lett 368(4):fnab021 





Arvey AJ, Azad RK, Raval A et al (2009) Detection of genomic islands via segmental genome heterogeneity. Nucleic Acids Res 37:5255–5266 





Coleman ML, Sullivan MB, Martiny AC, Steglich C, Barry K, Delong EF, Chisholm SW (2006) Genomic islands and the ecology and evolution of Prochlorococcus. Science 311(5768): 1768–1770 





Ho Sui SJ, Fedynak A, Hsiao WWL, Langille MGI, Brinkman FSL (2009) The association of virulence factors with genomic islands. PLoS One 4:e8094 





Pundhir S, Vijayvargiya H, Kumar A (2008) PredictBias: a server for the identification of genomic and pathogenicity islands in prokaryotes. In Silico Biol 8:223–234 





Waack S, Keller O, Asper R, Brodag T, Damm C, Fricke WF, Surovcik K, Meinicke P, Merkl R (2006) Score-based prediction of genomic islands in prokaryotic genomes using hidden Markov models. BMC Bioinf 16(7):142 





Assaf R, Xia F, Stevens R (2021) Identifying genomic islands with deep neural networks. BMC Genomics 22(Suppl 3):281. https://doi.org/10.1186/s12864-021-07575-5 





Cummins ML, Roy Chowdhury P, Marenda MS, Browning GF, Djordjevic SP (2019) Salmonella genomic island 1B variant found in a sequence type 117 avian pathogenic Escherichia coli isolate. mSphere 4(3):e00169–e00119 





Hsiao WW, Ung K, Aeschliman D, Bryan J, Finlay BB, Brinkman FS (2005) Evidence of a large novel gene pool associated with prokaryotic genomic islands. PLoS Genet 1(5):e62 





Rao RT, Sharma S, Sivakumar N, Jayakumar K (2020) Genomic islands and the evolution of livestock-associated Staphylococcus aureus genomes. Biosci Rep 40(11):BSR20202287 





Wei W, Gao F, Du MZ et al (2017) Zisland Explorer: detect genomic islands by combining homogeneity and heterogeneity properties. Brief Bioinform 18:357–366 





Baar C, Eppinger M, Raddatz G, Simon J, Lanz C et al (2003) Complete genome sequence and analysis of Wolinella succinogenes. Proc Natl Acad Sci U S A 100(20):11690–11695. https:// doi.org/10.1073/pnas.1932838100 





Dai Q, Bao C, Hai Y et al (2018) MTGIpick allows robust identification of genomic islands from a single genome. Brief Bioinform 19:361–373 





Hudson CM, Lau BY, Williams KP (2015) Islander: a database of precisely mapped genomic islands in tRNA and tmRNA genes. Nucleic Acids Res 43:D48–D53 





Ravatn R, Studer S, Springael D, Zehnder AJ, van der Meer JR (1998 Sep) Chromosomal integration, tandem amplification, and deamplification in Pseudomonas putida F1 of a 105-kilobase genetic element containing the chlorocatechol degradative genes from Pseudomonas sp. Strain B13. J Bacteriol 180(17):4360–4369. https://doi.org/10.1128/JB.180.17. 4360-4369.1998 





Yang J, Chen L, Sun L, Yu J, Jin Q (2008) VFDB 2008 release: an enhanced web-based resource for comparative pathogenomics. Nucleic Acids Res 36(Database issue):D539–D542. https://doi. org/10.1093/nar/gkm951 





Bach S, de Almeida A, Carniel E (2000) The Yersinia high-pathogenicity island is present in different members of the family Enterobacteriaceae. FEMS Microbiol Lett 183(2):289–294. https://doi.org/10.1111/j.1574-6968.2000.tb08973.x 





Dhillon BK, Laird MR, Shay JA, Winsor GL, Lo R, Nizam F, Pereira SK, Waglechner N, McArthur AG, Langille MG, Brinkman FS (2015) IslandViewer 3: more flexible, interactive genomic island discovery, visualization and analysis. Nucleic Acids Res 43(W1):W104–W108. https:// doi.org/10.1093/nar/gkv401. Epub 2015 Apr 27 





Ito T, Katayama Y, Hiramatsu K (1999) Cloning and nucleotide sequence determination of the entire mec DNA of pre-methicillin-resistant Staphylococcus aureus N315. Antimicrob Agents Chemother 43(6):1449–1458. https://doi.org/10.1128/AAC.43.6.1449 





Roos TE, van Passel MW (2011) A quantitative account of genomic island acquisitions in prokaryotes. BMC Genomics 24(12):427 





Yoon SH, Park YK, Lee S, Choi D, Oh TK, Hur CG, Kim JF (2007) Towards pathogenomics: a web-based resource for pathogenicity islands. Nucleic Acids Res 35(Database issue):D395– D400. https://doi.org/10.1093/nar/gkl790 





Bar H, Yacoby I, Benhar I (2008) Killing cancer cells by targeted drug-carrying phage nanomedicines. BMC Biotechnol 8:37 





Dobrindt U, Hochhut B, Hentschel U, Hacker J (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2(5):414–424 





Jaron KS, Moravec JC, Martı’nkova´ N (2014) SigHunt: horizontal gene transfer finder optimized for eukaryotic genomes. Bioinformatics 30(8):1081–1086 





Schmidt H, Hensel M (2004) Pathogenicity Islands in bacterial pathogenesis. Clin Mcrobiol Rev 17:14–56 





Zhang R, Ou HY, Gao F, Luo H (2014) Identification of horizontally-transferred genomic islands and genome segmentation points by using the GC profile method. Curr Genomics 15(2): 113–121 





Bazin A, Gautreau G, Médigue C, Vallenet D, Calteau A (2020) panRGP: a pangenome-based method to predict genomic islands and explore their diversity. Bioinformatics 36(Suppl_2): i651–i658 





Dong WL, Xu QJ, Atiah LA, Odah KA, Gao YH, Kong LC, Ma HX (2020) Genomic island type IV secretion system and transposons in genomic islands involved in antimicrobial resistance in Trueperella pyogenes. Vet Microbiol 242:108602 





Juhas M, Power PM, Harding RM, Ferguson DJ, Dimopoulou ID, Elamin AR, Mohd-Zain Z, Hood DW, Adegbola R, Erwin A, Smith A, Munson RS, Harrison A, Mansfield L, Bentley S, Crook DW (2007) Sequence and functional analyses of Haemophilus spp. genomic islands. Genome Biol 8(11):R237 





Schoeniger JS, Hudson CM, Bent ZW, Sinha A, Williams KP (2016) Experimental single-strain mobilomics reveals events that shape pathogen emergence. Nucleic Acids Res 44(14): 6830–6839 





Zhu D, Yang Z, Xu J, Wang M, Jia R, Chen S, Liu M, Zhao X, Yang Q, Wu Y, Zhang S, Liu Y, Zhang L, Yu Y, Chen X, Cheng A (2020) Pan-genome analysis of Riemerella anatipestifer reveals its genomic diversity and acquired antibiotic resistance associated with genomic islands. Funct Integr Genomics 20(3):307–320 





Bertelli C, Brinkman FSL (2018) Improved genomic island predictions with IslandPath-DIMOB. Bioinformatics. https://doi.org/10.1093/bioinformatics/bty095 





Dugan J, Rockey DD, Jones L, Andersen AA (2004) Tetracycline resistance in Chlamydia suis mediated by genomic islands inserted into the chlamydial inv-like gene. Antimicrob Agents Chemother 48(10):3989–3995 





Kläui AJ, Boss R, Graber HU (2019) Characterization and comparative analysis of the Staphylococcus aureus Genomic Island vSaβ: an in silico approach. J Bacteriol 201(22):e00777–e00718 





Schwarz S, Zhang W, Du XD, Krüger H, Feßler AT, Ma S, Zhu Y, Wu C, Shen J, Wang Y (2021) Mobile oxazolidinone resistance genes in gram-positive and gram-negative bacteria. Clin Microbiol Rev 34(3):e0018820 





Galibert F, Finan TM, Long SR, Puhler A, Abola P, Ampe F et al (2001) The composite genome of the legume symbiont Sinorhizobium meliloti. Science 293(5530):668–672. https://doi.org/10. 1126/science.1060966 





Kong R, Xu X, Liu X, He P, Zhang MQ, Dai Q (2020) 2SigFinder: the combined use of small-scale and large-scale statistical testing for genomic island detection from a single genome. BMC Bioinform 21(1):159 





Shrivastava S, Reddy CVSK, Mande SS (2010) INDeGenIUS, a new method for high-throughput identification of specialized functional islands in completely sequenced organisms. J Biosci 35: 351–364 





Gal-Mor O, Finlay BB (2006) Pathogenicity islands: a molecular toolbox for bacterial virulence. Cell Microbiol 8(11):1707–1719 





Lee CC, Chen YP, Yao TJ, Ma CY, Lo WC, Lyu PC, Tang CY (2013) GI-POP: a combinational annotation and genomic island prediction pipeline for ongoing microbial genome projects. Gene 518(1):114–123 





Soares SC, Abreu VA, Ramos RT, Cerdeira L, Silva A, Baumbach J, Trost E, Tauch A, Hirata R Jr, Mattos-Guaraldi AL, Miyoshi A, Azevedo V (2012) PIPS: pathogenicity island prediction software. PLoS One 7(2):e30848 





Gangotia D, Gupta A, Mani I (2021) Role of bioinformatics in biological sciences. In: Singh V, Kumar A (eds) Advances in bioinformatics. Springer Nature, Singapore, pp 37–57. ISBN: 978-981-336-191-1 





Lee SH, Choe H, Kim BK, Nasir A, Kim KM (2015) Complete genome of the marine bacterium Wenzhouxiangella marina KCTC 42284(T). Mar Genomics 24(Pt 3):277–280 





Song L, Pan Y, Chen S, Zhang X (2012) Structural characteristics of genomic islands associated with GMP synthases as integration hotspot among sequenced microbial genomes. Comput Biol Chem 36:62–70 





Gladieux P, Ropars J, Badouin H, Branca A, Aguileta G, de Vienne DM, Rodríguez de la Vega RC, Branco S, Giraud T (2014) Fungal evolutionary genomics provides insight into the mechanisms of adaptive divergence in eukaryotes. Mol Ecol 23(4):753–773 





Liang P, Zhang Y, Xu B, Zhao Y, Liu X, Gao W, Ma T, Yang C, Wang S, Liu R (2020) Deletion of genomic islands in the Pseudomonas putida KT2440 genome can create an optimal chassis for synthetic biology applications. Microb Cell Factories 19(1):70 





Stillson PT, Baltrus DA, Ravenscraft A (2022) Prevalence of an insect-associated genomic region in environmentally acquired Burkholderiaceae symbionts. Appl Environ Microbiol 88(9): e0250221 





González V, Bustos P, Ramírez-Romero MA, Medrano-Soto A, Salgado H, Hernandez-Gonzalez IL et al (2003) The mosaic structure of the symbiotic plasmid of Rhizobium etli CFN42 and its relation to other symbiotic genome compartments. Genome Biol 4(6):R36. https://doi.org/10. 1186/gb-2003-4-6-r36 





Lu B, Leong HW (2016) GI-SVM: a sensitive method for predicting genomic islands based on unannotated sequence of a single genome. J Bioinforma Comput Biol 14(01):1640003 





Mani I (2020) Current status and challenges of DNA sequencing. In: Singh V (ed) Advances in synthetic biology. Springer Nature, Singapore, pp 71–80. ISBN: 978-981-15-0081-7 





Mani I (2021) Role of bioinformatics in microRNA analysis. In: Singh V, Kumar A (eds) Advances in bioinformatics. Springer Nature, Singapore, pp 365–373. ISBN: 978-981-336-191-1 





Mantri Y, Williams KP (2004) Islander: a database of integrative islands in prokaryotic genomes, the associated integrases and their DNA site specificities. Nucleic Acids Res 32:D55–D58 



# Computation Tools for Prediction and Analysis of Genomic Islands

2 

Muskan Sharma, Sushil Kumar, Gourav Choudhir, Anju Singh, Anu Dalal, and Anuj Kumar 

## Abstract

The genomic island (GI) is a discrete cluster of genes in prokaryotic genomes acquired through horizontal gene transfer (HGT). GI includes genes having significant roles in genome evolution and adaptation to the changed environment. Genomic islands may be pathogenicity islands (PAIs), metabolic islands (MIs), secretion islands (SIs), symbiotic islands (SymIs), etc., according to the traits they carry. Major characteristics of GIs exhibit are sporadic distribution, large size, sequence composition, inserted adjacent or near to tRNA genes, and mobility genes. Prediction of genomic islands can be performed via experimental and/or computational methods. Sequence composition and comparative genomics are the two major approaches to predict GIs at the level of single genome and related genomes, respectively. Several computational tools have been designed and developed by researchers to predict the presence, type, transmission, and origin of genomic islands. Representatives of window-based programs are AlienHunter, 

M. Sharma 

Department of Bioscience and Biotechnology, Banasthali Vidyapith, Tonk, Rajasthan, India 

S. Kumar 

Department of Botany, Shaheed Mangal Pandey Govt Girls PG College, Meerut, India 

G. Choudhir 

Centre for Rural Development and Technology, Indian Institute of Technology Delhi, New Delhi, India 

A. Singh 

Department of Chemistry, Shaheed Mangal Pandey Govt Girls PG College, Meerut, India 

A. Dalal 

Chemistry Department, Indian Institute of Technology Delhi, New Delhi, India 

A. Kumar (✉) 

ICAR-Indian Agricultural Statistics Research Institute (IASRI), New Delhi, India 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_2 

Centroid, INDeGenIUS, Design-Island, and GI-SVM, whereas windowless methods include GC profile and MJSD. Among the available computational predictors GIPSy produced best results followed by Alien_Hunter, IslandViewer, predict Bias, GI Hunter, and Zisland Explorer. Till date except PAIs little information is available about other GIs like REIs, MIs, symbiotic islands, secretary islands, etc. PAIDB, IslandViewer, and InDeGenIUS software partially address these islands and need further exploration. 

## Keywords

Horizontal gene transfer · Pathogenicity islands · Mobile genetic elements · IslandViewer · AlienHunter · Zisland Explorer 

## 2.1 Introduction

Horizontal gene transfer (HGT) or lateral gene transfer (LGT) is the acquisition and integration of foreign DNA in prokaryotes. Bacteria and Archaea multiply through binary fission and are facile to annex DNA from other organisms via HGT. HGT played a significant role in microbial adaptation, genome evolution, and diversification (Bertelli et al. 2019). In 1990, researchers discovered some virulence gene clusters in the genomes of some E. Coli strains that were absent in others (Hacker et al. 1990). Such alien gene clusters were initially termed pathogenicity islands (PAIs). Research revealed the presence of such gene clusters and referred them as secretion islands, antimicrobial resistance islands, and metabolic islands. These facilitate microbial evolution, survival, adaptation, and pathogenicity (Lu and Leong 2016a, 2016b). A more general term “genomic island” (GI) has been given to these horizontally acquired gene clusters. Hence, GIs are discrete segments of DNA established through HGT to the host genome (Jaron et al. 2014). Newly discovered mobile genetic elements (MGEs) are first classified as GIs until their possible mode of transfer, origin, and insertion site is established, then specific names are assigned. Many times the genes responsible for transmission and other functions undergo mutations resulting in the loss of gene functions. After integration in the genome genomic islands evolve through mutations, recombination, and loss or gain of MGEs. The Genomic islands broadly include prophages, integrons, conjugative transposons, and integrative conjugative elements (Hacker and Kaper 2000). 

## 2.1.1 Major Features of GIs

Regardless of their kind putative horizontally transferred gene clusters or GIs share the following major features— 

Sporadic Distribution GIs are found sporadically distributed in a few strains of a species and their phyletic patterns differ from the genome patterns. Researches indicate that GIs show instability and an ability to excise spontaneously even in the same strains (Middendorf et al. 2004). A basic local alignment search tool (BLAST) can be used to identify the group of genes that are present in some strains or species but not represented in other related species using sequence similarity (Altschul et al. 1997). Mauve, a whole genome sequence alignment tool can recognize conserved regions found around freshly inserted DNA and provide clues that the inserted region may be a GI (Darling et al. 2004). 

Size This is challenging to identify horizontally transferred single genes with different phyletic patterns in a genome. But the nearby genes if showing abnormal phyletic patterns provide support to assume that the particular region may be a genomic island. Although, there is no clear-cut size limit to GIs many methods use a minimum size of 8 genes or 8 kb. The MGEs below this size are termed genomic islets. 

Sequence Composition Genomic island predictors employing sequence composition greatly depend upon the fact that the sequence composition of genomes from different lineages is different. The sequence composition of GIs certainly differs from the host’s genome. Percent GC content, oligonucleotide frequency, CU, and flanked with direct repeats (DRs) are the best signals indicating the presence of non-host gene contents (Juhas et al. 2009). These strategies can be employed for recently sequenced genomes waiting for annotation. The sequence composition bias may lead to false positive results under certain circumstances such as highly expressed ribosomal genes, GIs originating from a species having similar genome composition, and the mutational pressure. This indicates that the results should be confirmed with some other methods (Karlin 2001). 

Inserted Adjacent or Near to tRNA Genes Several research reports indicated that the tRNA genes are preferred phage integration sites and direct repeats resulted due to phage insertion (Williams 2002). The BLAST and tRnAscan-SE analysis of genomes revealed that the GIs are generally found inserted in or adjacent to tRNA genes and flanked by direct repeats. Certain types of tRNA genes like tmRNA (transfer messenger RNA) and genes encoding tRNA for amino acids serine, arginine, leucine, threonine, etc., are preferentially used for insertion of GIs (Langille and Brinkman 2009). However, this shows only a small fraction of GIs because many more were found inserted at other locations in the genome. 

Mobility Genes MGEs including GIs may be equipped with certain protein-coding genes such as integrases and transposases. The products of such genes provide autonomy (self-mobility) to these horizontally transferred GIs. A specific group of genes encoding surface antigens, host interaction proteins, and other phage-related proteins over-express in GIs (Vernikos and Parkhill 2008). This indicates that phages are probable ancestors of many GIs (Hsiao et al. 2005). All the mentioned features are not necessary to be present in a single genomic island but the presence of a few provides strong evidence in favor of HGT. Hence, we can say that GIs are a superfamily of mobile genetic elements with a core of variable characteristics (Vernikos and Parkhill 2008). These allowed the computational methods to be developed for the prediction of genomic islands in the genome of bacterial strains. Genomic islands can be classified based on their mobility as some are mobile and move horizontally to new locations, for example, integrative and conjugative elements, conjugative transposons, and prophages while others cannot. 

## 2.1.2 Subclasses of GIs

Based on their functions GIs may be grouped as— 

Pathogenicity Islands (PAIs) Horizontally transferred DNA fragments of 10–100 kb size encoding virulence factors and allied proteins are termed pathogenicity islands (PAIs). PAIs are associated with pathogenesis. These are generally found inserted in bacterial chromosomes and rarely from plasmids or phages. PAIs are flanked with DRs at both ends and show homology with tRNA genes which enable them to insert into tRNA genes through recombination. These are equipped with integrase, transposase along with virulence factors. The virulence genes include but are not limited to adhesins, secretion systems, toxins, invasions, modulins, effectors, superantigens, iron uptake systems, immunoglobulin A proteases, apoptosis, capsule synthesis, etc. PAIs are highly unstable due to their susceptibility to deletion or mobilization (Hacker and Kaper 2000). 

Resistance Islands (REIs) The genomic islands that provide resistance against antibiotics are referred to as resistance islands (REIs). In Staphylococcus aureus, SCCmec islands provide methicillin resistance and function like the hotspot to integrate extra genetic elements. REIs size varies from 10 kb to more than 60 kb and incorporates more as well (Hiramatsu et al. 2002). These are generally found inserted in plasmid, integrons, super-integrons, and transposons mobile DNA, these are comparatively more mobile than those occur in bacterial chromosomes. 

Metabolic Islands (MIs) The variability in genes related to primary metabolism leads to enhanced adaptability and competitiveness to the bacteria under changed niches. Enterobacteria, Salmonella senftenberg in general do not grow on media having only sucrose as a source of carbohydrate (sucrose negative) but a few isolates found sucrose positive. After analysis, this was observed that the responsible genes were located in a ~100 kb fragment inserted into pheVtRNA designated as CTnscr94. CTnscr94 encodes an integrase gene and is flanked by 50 bp DRs. Possession of scr genes expands the metabolic versatility of the recipient (Dobrindt et al. 2004). Studies on Thermotoga maritima, a thermophile revealed that some strains show large DNA fragments transferred through HGT leading to increased genomic diversity. This enabled them to survive at higher temperatures (Nesbo and Doolittle 

2003). Similarly, Wolinella succinogenes were reported to have horizontally transferred DNA inserted at a $\mathrm { \ t R N A } ^ { \mathrm { M e t } }$ and codes for T4SS. The T4SS is found in Helicobacter pylori and Campylobacter jejuni, significant human pathogens (Baar et al. 2003). 

Secretion Islands (SIs) Several microorganisms establish close associations like parasitism and symbiosis with their eukaryotic hosts. Specialized vectorial signal exchange from to host and vice versa through their plasma membranes is required. For example, some animal pathogens consist of PAIs encoding T3SSs and T4SSs responsible for the delivery of effectors that directly interfere with the functions of host cells. T4SSs also help in DNA exchange and led to adaptations to the changed niches. PAI based secretary systems modulate their interactions with a host by interfering with signal transduction pathways, boosting apoptosis, easing out intracellular growth, and initiating the synthesis of nutrients for pathogen multiplication (Büttner and Bonas 2002; Cornelis 2002). 

Symbiosis Islands (SymIs) Symbiotic organisms like Rhizobia are soil inhabiting, they remain in contact with other soil microorganisms and frequently exchange genetic information through HGT. Shreds of evidence reflect that present diversity in rhizobial strains is mainly due to the acquisition of extra genetic information. This results in adaptation to soil life as well as high metabolic flexibility. This allows the evolution of symbiosis-related complex cellular programs. For instance, strain 1021 of Sinorhizobium meliloti the composite structure with three replicons had arisen by the acquisition of pSymA and pSymB megaplasmids and extended metabolic capacities and environmental adaptabilities. pSymA carries genes needed for nodule formation, multiplication at low oxygen concentrations, and nitrogen metabolism while pSymB enabled it to metabolize a broad range of polysaccharides (Galibert et al. 2001). USDA110 strain of Bradyrhizobium japonicum comprises the properties of both pSymA and pSymB in a single replicon located in the genome near $\mathrm { \ t R N A } ^ { \mathrm { v a l } }$ (Kaneko et al. 2002). In Mesorhizobium loti strain ICMP3153 a symbiotic island of 500 kb associated with $\mathbf { t R N A } ^ { \mathrm { P h e } }$ has also been identified (Sullivan and Ronson 1998). The number of GIs has increased tremendously with the advancements in technology related to screening and comparing whole genomes. 

## 2.1.3 Detection of Genomic Islands

GIs can be predicted via experimental or computational methods. The two approaches used for the detection of GIs are based on sequence composition and comparative genomics. The former is desirable and easy to apply because they require a single genome but even face the problem of false positive and false negative results while the latter method needs related genomes to be compared (Langille et al. 2010). There are many sequenced genomes without complete annotations and require GI prediction using DNA sequences alone. Based on genome segmentation approaches the sequence composition methods are divided into window-based and windowless methods (Lu and Leong 2016a, 2016b). Commonly used single threshold window-based methods using the single sliding window for segmentation of genome into small regions. Few representative programs under this approach are AlienHunter, Centroid, INDeGenIUS, Design-Island, and GI-SVM. Some windowless methods include GC profile and MJSD (Zhang et al. 2014). Both DNA sequence and gene sequence composition based methods have similar strengths and flaws. 

## 2.2 Tools for Prediction and Analysis of Genomic Islands

An overview of computational tools with their functions is given in Table 2.1. 

## Virulence Factor Database (VFDB)

VFDB is a computational tool originally built to provide a better idea of the presence of virulence factors from bacterial pathogens. It is used to store entire data of bacterial pathogenesis on one platform. In further studies, comparative pathogenesis was introduced to this database to increase its efficiency. This allowed researchers to explore bacterial genome diversity and also the common virulence factors present in various bacterial species/strains. Manual analysis of results was considered a serious drawback to this database. To overcome this issue, a VFanalyzer was introduced into this database. This allowed automatic inspection of virulence factors present in complete bacterial genomes. The introduction of the VFanalyzer increased the efficiency of the original VFDB and provides divergent virulence factors, even with fewer sequence similarities. This eludes the presence of false positives in the virulence factors related to GI results (Liu et al. 2018). 

## Zisland Explorer

Keeping in mind the homogeneity and heterogeneity of genomic sequences, a novel tool was built that worked on segmental cumulative GC profiles. This tool is called Zisland Explorer. Zisland Explorer for the first time combines both homogeneity and heterogeneity of a sequence, which increases the dependence of GI prediction on the genomic sequence, making the process less time-consuming. Wei et al. (2016) predicted that Zisland Explorer showed more genuine GIs than many other widely used computational tools. 

## Pathogenic Island Database (PAIDB)

The PAIDB is the only database that is used to provide comprehensive information on predicted PAIs in prokaryotic genomes. It also automatically identifies homologous PAIs to previously known PAIs. The PAIDB released in the year 2007 had 112 types of PAIs and 889 GenBank accessions in around 497 pathogenic bacterial strains. In 2014, another version of PAIDB called PAIDB v2.0 was introduced, which has 223 types of PAIs and 1331 GenBank accessions. Not only that, this new version also has over 88 types of REIs from 108 accessions. This version provides more accurate island detection than the previous one, and it has more diversity of analyzed genomes (Yoon et al. 2015). 


Table 2.1 Overview of computational tools with their functions


<table><tr><td>S. N.</td><td>Computational tools</td><td>Functions</td></tr><tr><td>1</td><td>VFDB—virulence factor database</td><td>Identify PAIs on the basis of virulence, now available with an additional feature of VFanalyzer</td></tr><tr><td>2</td><td>Zisland Explorer</td><td>Works on the basis of heterogeneity and homogeneity of genomic sequence</td></tr><tr><td>3</td><td>PAIDB—Pathogenic Island Database</td><td>Provides comprehensive information on pathogenicity islands (PAIs), new version PAIDBv2.0 includes resistance islands (REIs)</td></tr><tr><td>4</td><td>GC profile</td><td>Works on identifying G-C content of the genome</td></tr><tr><td>5</td><td>GI-POP—Genomic Island prediction by genomic profile scanning</td><td>Use genomic profile scanning(GI-GPS) for the prediction of genomic islands</td></tr><tr><td>6</td><td>GIST—Genomic Island Suite of Tools</td><td>Combines 5 main genomic tools and the result is optimized using EGID (Ensemble Algorithm for Genomic Island Detection)</td></tr><tr><td>7</td><td>PIPS—Pathogenicity Island Prediction Software</td><td>Combines various pathogenicity island detecting methods at one platform</td></tr><tr><td>8</td><td>GI-SVM—Genomic Island-Support Vector Machine</td><td>Uses one-class SVM to detect GI of unannotated sequences.</td></tr><tr><td>9</td><td>LiSSI—Lifestyle Specific Islands</td><td>Prediction of GIs on the basis of bacterial lifestyles like oxygen consumption and pathogenicity.</td></tr><tr><td>10</td><td>GIPSy—Genomic Island Prediction Software</td><td>Modification of PIPS allows the identification of four types of genomic islands.</td></tr><tr><td>11</td><td>IslandViewer</td><td>Web interface that is a compilation of SIGI-HMM, IslandPath-DIMOB, and IslandPick</td></tr><tr><td>12</td><td>IslandPath-DIMOB</td><td>Uses dinucleotide bias including a mobility gene.</td></tr><tr><td>13</td><td>SIGI-HMM</td><td>Score-based prediction based on HMM.</td></tr><tr><td>14</td><td>IslandPick</td><td>Does a comparative study on genomic inputs</td></tr><tr><td>15</td><td>MobilomeFinder</td><td>Comparative study tool to identify tRNA associated genomic islands</td></tr><tr><td>16</td><td>Centroid</td><td>Uses k-mer frequency to identify genomic islands</td></tr><tr><td>17</td><td>Alien_Hunter</td><td>GI prediction using interpolated variable order motifs (IVOM)</td></tr><tr><td>18</td><td>INDeGenIUS</td><td>Identifies 6 different types of genomic islands, similar to the centroid method</td></tr><tr><td>19</td><td>PredictBias</td><td>Prediction by codon bias, percent GC, or dinucleotide bias, VFPB is used to identify PAIs</td></tr><tr><td>20</td><td>EuGI</td><td>Database to predict genomic islands of eukaryotes.</td></tr><tr><td>21</td><td>panRGP</td><td>Pangenome based prediction of region of genomic plasticity (RGPs)</td></tr></table>

## GC Profile

To check the global availability of GC content on a genome, a GC profile is used. This is a high resolution method to predict GIs. The presence of GI is detected by a drop in the profile, the main reason for which is the decrease in the GC content. One of the major drawbacks of this method is its lack of discriminating power of GC content, therefore it is necessary to use other features with this method (Gao and Zhang 2006). 

## Genomic Island Prediction by Genomic Profile Scanning (GI-POP)

Prediction of GI of the whole microbial genome is a time-consuming process. Also, the presence of REIs an antibiotic gene on these GIs makes it very important to find a better GI predictor. Keeping this in mind, GI-POP was made. GI-POP is a web server that contains tools to assemble the genomic sequences and provides an annotation pipeline and GI module with high quality. 

It uses SVM based method that is called genomic profile scanning (GI-GPS) and hence the name of the server GI-POP. When an ongoing genomic project is submitted to GI-POP, it provides both functional annotation and GI prediction. This feature allows researchers to find potential GIs which can further help in completing a genome sequence project in a time-efficient manner (Lee et al. 2013). 

## Pathogenicity Island Prediction Software (PIPS)

Different computational tools use different methods to predict PAIs on genomic sequences. Detection of PAIs is based on various methods like GC content deviation in CU, virulence factors, hypothetical protein, etc. To combine all these approaches on one platform to provide more accurate detection of PAIs, PIPS was introduced. PIPS is an easy to install (installation independent), more accessible tool which has a web-based interface and the potential to do fast analysis. Soares et al. (2012) used PIPS to study PAIs of Corynebacterium pseudotuberculosis and it was observed that PIPS provides more accurate GI prediction results as compared to other computational tools. 

## Genomic Island Suite of Tools (GIST)

GIST as the name suggest is a software that hosts five main genomic tools. These tools are: Columbo, SIGI-HMM, PAI-IDA, IslandPath, Alien_Hunter, and INDeGenIUS. Along with these tools, an optimization tool called EGID is also added. The main function of this tool is to overcome the lacking quality of results shown by the former five tools individually. EGID allows a better GI prediction by compiling the result of existing tools. Another advantage of GIST is its automatic genome download feature. This provides a platform to download the genomic files via the FTP server of the National Centre for Biotechnology Information (NCBI) (Hasan et al. 2012). 

## Genomic Island-Support Vector Machine (GI-SVM)

GI-SVM is a computational tool that allows the detection of GI of unannotated sequences to a single genome. The use of one-class SVM (Support Vector Machine) 

in GI-SVM allows detection of laterally transferred regions, also known as outliers. This method also uses a string kernel to describe the k-mer spectrum, which makes GI prediction more precise. Lu and Leong (2016a, 2016b) studied a comparative GI prediction was done between GI-SVM and other computational tools that use unannotated sequences (like Alien_Hunter and MJSD). The results of this study concluded that GI-SVM provides a better and improved result for GI prediction. 

## Lifestyle Specific Islands (LiSSI)

This bioinformatics tool helps in GI prediction based on different lifestyles of bacteria like oxygen consumption and pathogenicity. It works on a combination of evolutionary sequence analysis and a statistical approach. Unlike other tools, it works on lifestyle based comparative analysis between genomic islands of two sets of species. The major limitation of this tool is that the non-conserved genetic elements are usually difficult to detect with this approach (Barbosa et al. 2017). 

## Genomic Island Prediction Software (GIPSy)

GIPSy is a modification of PIPS. While PIPS was used to detect only one type of genomic island, i.e., PAIs, GIPSy helps in detecting all four types of GIs, which are MIs, SymIs, REIs, and PAIs. Therefore, it is not just a pathogenicity or virulence oriented tool. Developed in Java, GIPSy has no dependence on a platform for installation. But this tool does have its limitations. Due to the lack of pre-existing information on different islands other than PAIs, the validation of GIPSy is hindered. Still, the increased diversity of genome analysis using a comprehensive approach to target all types of genomic islands makes GIPSy one of a kind of tool that helps understand the bacterial genome in a better way (Soares et al. 2015). 

## IslandViewer

The unavailability of a web interface made researchers develop IslandViewer. Earlier the researchers used to download the program on their computer and then work on it. IslandViewer provides a web interface that compiles three tools for GI prediction (SIGI-HMM, IslandPath-DIMOB, and IslandPick). SIGI-HMM and IslandPath-DIMOB use a sequence composition based approach for genomic island prediction and IslandPick uses a comparative genome approach. Pre-computation of the GI dataset makes this web source easy to use for researchers. The validation of GI prediction is done manually. Prediction is available in various formats which can be uploaded to the genomic browser like Artemis; this provides multiple links to GI resources (Langille and Brinkman 2009). 

## IslandPath-DIMOB

One of the main GI prediction tools of the IslandViewer web server is IslandPath-DIMOB. It predicts GI and uses IslandPick which does comparative genomic analysis and builds a test set. The genomic regions are detected with biased dinucleotide composition. This composition encodes at least eight genes, one of which is a mobility gene. The presence of mobility gene along with dinucleotide bias increases the accuracy of IslandPath-DIMOB. Mobility gene identification is carried out by using genome annotation for mobility gene research and an HMMer search is conducted for the predicted gene against PFAM mobility gene profiles. This tool has higher recall than SIGI-HMM (Langille et al. 2010). A new modified and more recall offering a version of IslandPath-DIMOB is developed called IslandPath-DIMOB v1.0.0 which provides more precise results for genomic island prediction (Bertelli et al. 2018). 

## SIGI-HMM

It is a score-based graphical tool under the IslandViewer web server that allows the identification of genomic islands using HMM (Hidden Markov Model). SIGI-HMM works on CU analysis of each alien gene present on the genome input. A comparison of this CU from each gene is done with selected CU tables that contain donor or highly expressed genes. This comparison allows researchers to predict the putative donor of a gene and thus helps detect the origin of a gene. Formulae are used to check if each gene resembles the donor or host. If it is more close to the host, then it is called a putative foreign gene. HMM is used to make putative GIs by combining non-contagious clusters of these putative foreign genes. This provides distinguished data between a normal and HGT associated CU derivation. 

SIGI-HMM has higher accuracy than IslandPath-DIMOB. The value of less recall of this tool is compensated by the high recall of IslandPath-DIMOB as both of these tools are used in combination by IslandViewer. The higher accuracy of SIGI-HMM is because of its ability to remove ribosomal regions from the genome (Waack et al. 2006). 

## IslandPick

This tool is also a part of IslandViewer web sources like SIGI-HMM and IslandPath-DIMOB. It predicts overlapping GIs of SIGI-HMM and IslandPath-DIMOB. IslandPick uses a comparative approach to query genome input. The pre-computation of GI prediction here eliminates the presence of any manual selection-based bias. Alignment of the selected comparative genomes is done by Mauve; this allows refinement of the boundary of a predicted GI by the correction in flanking regions. BLAST is used to ensure that duplication is not present in the predicted region. Default is set to update available predicted data for a genome monthly. Researchers can also do a separate analysis of the unpublished genome as input (Langille et al. 2010). 

## MobilomeFinder

Like islandPick, this tool also works on a comparative approach. It predicts tRNA gene associated genomic island. A comparison among genomic inputs is made for similar tRNA genes and Mauve is used to align and predict GI in these tRNA regions. The presence of GI associated with the tRNA gene makes this a much more robust tool, but with a limitation that some GI can be missed because not all GIs are necessarily linked with tRNA (Langille et al. 2010). 

## Centroid

This tool uses the k-mer size or nonoverlapping window size of a genome. It breaks the genome into fragments of a certain size, using the centroid method which converts the k-mers into words and k-mer frequency is used for predicting Islands by detecting outliers. This identifies sequences embedded in the genome that have foreign genes. Working without annotations makes this method efficient. The centroid method for genome island prediction is considered better than the percent GC and Karlin method. Alien_Hunter and INDeGenIUS use the same approach of k-mer frequency for GI prediction (Rajan et al. 2007). 

## Alien_Hunter

It works on interpolated variable order motifs (IVOM) approach to predict GIs. Variable lengths of k-mers are used. Although the weight of longer k-mers is higher in the scoring system than the shorter k-mers, it is still preferred over shorter k-mers because it has more information and specificity. The predictions made are exposed to 2-state second-order HMM that helps set the boundaries of the predicted genomic island. GI prediction can be uploaded into Artemis genome viewer automatically in embl format (Da Silva Filho et al. 2018). 

## INDeGenIUS

The Improved N-mer Based Detection of GIs using Sequence-Clustering (INDeGenIUS) is similar to the centroid method, except that centroids are computed by hierarchical clustering. This method allows the study of diverse bacterial genomes by prediction of new GIs that were not mentioned by another prediction method. A study carried out by Shrivastava et al. (2010) mentioned that the application of INDeGenIUS on 400 sequenced species of proteobacteria lead to the identification of 6 different types of genomic islands (SymIs, PAIs, ReIs, MIs, Motility Islands, and Secretion Islands). INDeGenIUS algorithm allows the identification of GIs in a large number of genomes. 

## PredictBias

PredictBias is a web application used to predict GI along with PAIs and it also allows the study of various features of these islands. Genomic islands are predicted in regions that have a codon bias, percent GC, or dinucleotide bias. PredictBias helps to differentiate PAIs from GIs. If in case a sequence with more than three genes has VFPD hits but does not show composition bias, it is still considered a PAI. Similarly, if even a single virulence protein is encoded by a region, then it is categorized as PAIs and if no such protein is encoded then it is marked as GI. BLASTP provides a graphical view of protein BLAST hits for a GI and comparison can be done for a genome by using a comparison tool (Langille et al. 2010). 

## EuGI

Prediction of GI is mostly done for the prokaryotic genome. But the work on the eukaryotic genome is still in its juvenile phase. EuGI database is the first GI prediction database for the prediction and comparison of eukaryotes. This database uses SWGIS 2.0 algorithm on 66 different eukaryotic species and is put together on the EuGI web resource. A total of 10,550 GIs were predicted using this tool, out of which 5299 GIs codes functional protein. SWGIS 2.0 is the first prediction tool for the eukaryotic genome. It is a modification of pre-existing SWGIS (SeqWord Gene Island Sniffer). EuGI provides a computational platform that allows researchers to freely access GI identification in an easy-to-use way with a visual interface as well (Clasen et al. 2018). 

## panRGP

Most recently developed computational tool that allows detection of Region of Genomic Plasticity (RGP) using pangenome. This tool is a part of PPanGGOLin software suite. panRGP uses pangenome graphs and makes a comparative genome approach for the prediction of Genomic Islands. It provides access to large-scale studies by identifying GI among thousands of genomes in a time-efficient way. panRGP algorithm is considered to be more reliable for detecting points of genome insertion and hence it gives more accurate results for genomic prediction. The largescale study done by this tool allows researchers to explore a greater diversity of genome sequences (Bazin et al. 2020). 

## 2.3 Conclusion and Future Perspectives

The evolution of genomes especially in bacteria occurs through various mechanisms like mutations, recombination, and HGT. HGT by comparison recently discovered a mechanism leading the fitness of bacterial strains in their niche. The major consequence of genomic islands is that they provide a large number of genes or full operons conferring new traits. The traits acquired in this way became the regular part of the genome by natural selection and provide adaptability to specific and constantly changing growth conditions, maintain genetic flexibility, and enhance competitive ability in their ecological niches. It is speculated that GIs originated from different mobile genetic elements such as integrative plasmids, phages, and insertion sequences and evolved through loss or gain processes. The loss of genetic information from a genome sometimes results in genetic diversification. This might help us in the assessment of risks related to antibiotic resistance in potential human pathogens. This will be interesting to know the mechanisms involved in the maintenance of the genome during the addition and deletion of genetic elements despite the disruption of operons. 

The presence and mobility of GIs can be experimentally or computationally predicted. Computational tools are regarded as more convenient to use and manage the retrieved information. With the development in computer sciences and the accumulation of information regarding GIs, several tools have been made based on different characteristics of mobile genetic elements. Genomic comparison analysis and sequence composition analysis are two basic approaches for the development of GI prediction tools. The first strategy compares the related genomes for unique regions whereas the second compares composition of specific regions with other regions in the genome. The next-generation sequencing technologies and high throughput techniques have made large genome drafts that are waiting for annotation. Many software tools have been developed to tackle the problem of genomic island prediction but still, there is a need to develop new GI prediction tools in conjunction with artificial intelligence, machine learning, and pan genomic-based analysis. Software tools such as GI-SVM, IGIPT, PAI-IDA, and SIGI-HMM generally predict GIs acquired recently because these use the signature sequences only. EGID, Islander, and IslandPath help to identify the GIs of homogeneous genomic signatures by using flanking tRNAs, mobility genes, insertion sequences, etc. Based on the literature survey, it is concluded that among the available computational predictors GIPSy produced the best results followed by Alien_Hunter, IslandViewer, predict Bias, GI Hunter, and Zisland Explorer. To date except PAIs little information is available about other GIs like REIs, MIs, symbiotic islands, secretary islands, etc. PAIDB, IslandViewer, and InDeGenIUS software partially address these islands and need further exploration. Prediction of origin needs more attention as GIs adapt their signature with time and their origin prediction is not always possible by comparing the genomic signature of other organisms. 

## References



Dobrindt U, Hochhut B, Hentschel U, Hacker J (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2:414–425 





Middendorf B, Hochhut B, Leipold K, Dobrindt U, Blum-Oehler G, Hacker J (2004) Instability of pathogenicity islands in uropathogenic Escherichia coli 536. J Bacteriol 186(10):3086–3096 





Galibert F, Finan TM, Long SR, Puhler A, Abola P, Ampe F, Barloy-Hubler F, Barnett MJ, Becker A, Boistard P, Bothe G, Boutry M, Bowser L, Buhrmester J, Cadieu E, Capela D, Chain P, Cowie A, Davis RW, Dreano S, Federspiel NA, Fisher RF, Gloux S, Godrie T, Goffeau A, Golding B, Gouzy J, Gurjal M, Hernandez-Lucas I, Hong A, Huizar L, Hyman RW, Jones T, Kahn D, Kahn ML, Kalman S, Keating DH, Kiss E, Komp C, Lelaure V, Masuy D, Palm C, Peck MC, Pohl TM, Portetelle D, Purnelle B, Ramsperger U, Surzycki R, Thebault P, Vandenbol M, Vorholter FJ, Weidner S, Wells DH, Wong K, Yeh KC, Batut J (2001) The composite genome of the legume symbiont Sinorhizobium meliloti. Science 293(5530):668–672. https://doi.org/10.1126/science.1060966 





Nesbo CL, Doolittle WF (2003) Targeting clusters of transferred genes in Thermotoga maritima. Environ Microbiol 5:1144–1154 





Altschul SF, Madden TL, Schaffer AA, Zhang J, Zhang Z, Miller W, Lipman DJ (1997) Gapped BLAST and PSI-BLAST: a new generation of protein database search programs. Nucleic Acids Res 25:3389–3402 





Gao F, Zhang CT (2006) GC-Profile: a web-based tool for visualizing and analyzing the variation of GC content in genomic sequences. Nucleic Acids Res 34:W686–W691. https://doi.org/10.1093/ nar/gkl040 





Rajan I, Aravamuthan S, Mande SS (2007) Identification of compositionally distinct regions in genomes using the centroid method. Bioinformatics 23(20):2672–2677. https://doi.org/10.1093/ bioinformatics/btm405 





Baar C, Eppinger M, Raddatz G, Simon J, Lanz C, Klimmek O, Nandakumar R, Gross R, Rosinus A, Keller H, Jagtap P, Linke B, Meyer F, Lederer H, Schuster SC (2003) Complete genome sequence and analysis of Wolinella succinogenes. Proc Natl Acad Sci U S A 100: 11690–11695. https://doi.org/10.1073/pnas.1932838100 





Hacker J, Bender L, Ott M, Wingender J, Lund B, Marre R, Goebel W (1990) Deletions of chromosomal regions coding for fimbriae and hemolysins occur in vitro and in vivo in various extra intestinal Escherichia coli isolates. Microb Pathog 8(3):213–225 





Shrivastava S, Reddy Ch VSK, Mande SS (2010) INDeGenIUS, a new method for high-throughput identification of specialized functional islands in completely sequenced organisms. J Biosci 35: 351–364. https://doi.org/10.1007/s12038-010-0040-4 





Barbosa E, Rottger R, Hauschild AC, de Castro SS, Bocker S, Azevedo V, Baumbach J (2017) LifeStyle-specific-islands (LiSSI): integrated bioinformatics platform for genomic island analysis. J Integr Bioinform 14:20170010. https://doi.org/10.1515/jib-2017-0010 





Hacker J, Kaper JB (2000) Pathogenicity islands and the evolution of microbes. Annu Rev Microbiol 54:641–679 





Soares SC, Geyik H, Ramos RTJ, de Sá PHCG, Barbosa EGV, Baumbach J, Figueiredo HCP, Miyoshi A, Tauch A, Silva A, Azevedo V (2015) GIPSy: genomic island prediction software. J Biotechnol 232:2. https://doi.org/10.1016/j.jbiotec.2015.09.008 





Bazin A, Gautreau G, Medigue C, Vallenet D, Calteau A (2020) panRGP: a pangenome-based method to predict genomic islands and explore their diversity. Bioinformatics 36:i651–i658. https://doi.org/10.1093/bioinformatics/btaa792 





Hasan MS, Liu Q, Wang H, Fazekas J, Chen B, Che D (2012) GIST: genomic island suite of tools for predicting genomic islands in genomic sequences. Bioinformation 8:203–205 





Soares SC, Vinícius AC, Ramos RTJ, Cerdeira L, Silva A, Baumbach J, Trost E, Tauch A, Hirata R, Mattos-Guaraldi AL, Miyoshi A, Azevedo V, Mokrousov I (2012) PIPS: pathogenicity island prediction software. PLoS One 7:e30848. https://doi.org/10.1371/journal.pone.0030848 





Bertelli C, Brinkman FSL, Valencia A (2018) Improved genomic island predictions with IslandPath-DIMOB. Bioinformatics 34:2161–2167. https://doi.org/10.1093/ bioinforBioinformatic 





Hiramatsu K, Katayama Y, Yuzawa H, Ito T (2002) Molecular genetics of methicillin-resistant Staphylococcus aureus. Int J Med Microbiol 292:67–74 





Sullivan JT, Ronson CW (1998) Evolution of rhizobia by acquisition of a 500-kb symbiosis island that integrates into a phe-tRNA gene. Proc Natl Acad Sci U S A 95:5145–5149 





Bertelli C, Tilley KE, Brinkman FSL (2019) Microbial genomic island discovery, visualization, and analysis. Brief Bioinform 20:1685–1698 





Hsiao WW, Ung K, Aeschliman D, Bryan J, Finlay BB, Brinkman FS (2005) Evidence of a large novel gene pool associated with prokaryotic genomic islands. PLoS Genet 1:e62. https://doi.org/ 10.1371/journal.pgen.0010062 





Vernikos GS, Parkhill J (2008) Resolving the structural features of genomic islands: a machine learning approach. Genome Res 18:331–342 





Büttner D, Bonas U (2002) Getting across-bacterial type III effector proteins on their way to the plant cell. EMBO J 21:5313–5322 





Jaron KS, Moravec JC, Martínková N (2014) SigHunt: horizontal gene transfer finder optimized for eukaryotic genomes. Bioinformatics 30:1081–1086 





Waack S, Keller O, Asper R, Brodag T, Damm C, Fricke WF, Surovcik K, Meinicke P, Merkl R (2006) Score-based prediction of genomic islands in prokaryotic genomes using hidden Markov models. BMC Bioinform 7:142. https://doi.org/10.1186/1471-2105-7-142 





Clasen FJ, Pierneef RE, Slippers B, Reva O (2018) EuGI: a novel resource for studying genomic islands to facilitate horizontal gene transfer detection in eukaryotes. BMC Genom 19:323 





Juhas M, Van der Meer JR, Gaillard M, Harding RM, Hood D, Crook DW (2009) Genomic islands: tools of bacterial horizontal gene transfer and evolution. FEMS Microbiol Rev 33:376–393. https://doi.org/10.1111/j.1574-6976.2008.00136.x 





Wei W, Gao F, Du M-Z, Hua H-L, Wang J, Guo FB (2016) Zisland Explorer: detect genomic islands by combining homogeneity and heterogeneity properties. Brief Bioinform 18(3): 357–366. https://doi.org/10.1093/bib/bbw019 





Cornelis GR (2002) The Yersinia Ysc–Yop virulence apparatus. Int J Med Microbiol 291:455–462 





Kaneko T, Nakamura Y, Sato S, Minamisawa K, Uchiumi T, Sasamoto S, Watanabe A, Idesawa K, Iriguchi M, Kawashima K, Kohara M, Matsumoto M, Shimpo S, Tsuruoka H, Wada T, Yamada M, Tabata S (2002) Complete genomic sequence of nitrogen-fixing symbiotic bacterium Bradyrhizobium japonicum USDA110. DNA Res 9:189–197. https://doi.org/10.1093/ dnares/9.6.189 





Williams KP (2002) Integration sites for genetic elements in prokaryotic tRNA and tmRNA genes: sublocation preference of integrase subfamilies. Nucleic Acids Res 30:866–875 





Da Silva Filho AC, Raittz RT, Guizelini D, De Pierri CR, Augusto DW, dos Santos-Weiss ICR, Marchaukoski JN (2018) Comparative analysis of genomic island prediction tools. Front Genet 9:619. https://doi.org/10.3389/fgene.2018.00619 





Karlin S (2001) Detecting anomalous gene clusters and pathogenicity islands in diverse bacterial genomes. Trends Microbiol 9:335–343 





Yoon SH, Park YK, Kim JF (2015) PAIDB v2.0: exploration and analysis of pathogenicity and resistance islands. Nucleic Acids Res 43(D1):D624–D630. https://doi.org/10.1093/nar/gku985 





Darling ACE, Mau B, Blattner FR, Perna NT (2004) Mauve: multiple alignments of conserved genomic sequence with rearrangements. Genome Res 14:1394–1403 





Langille MG, Brinkman FS (2009) IslandViewer: an integrated interface for computational identification and visualization of genomic islands. Bioinformatics 25:664–665 





Zhang R, Ou HY, Gao F, Luo H (2014) Identification of horizontally-transferred genomic islands and genome segmentation points by using the GC profile method. Curr Genomics 15:113–121 





Langille MGI, Hsiao WWL, Brinkman FSL (2010) Detecting genomic islands using bioinformatics approaches. Nat Rev Microbiol 8:373–382 





Lee CC, Chen YPP, Yao TJ, Ma CY, Lo WC, Lyu PC, Tang CY (2013) GI-POP: a combinational annotation and genomic island prediction pipeline for ongoing microbial genome projects. Gene 518:14–123. https://doi.org/10.1016/j.gene.2012.11.063 





Liu B, Zheng D, Jin Q, Chen L, Yang J (2018) VFDB 2019: a comparative pathogenomic platform with an interactive web interface. Nucleic Acids Res 47:D687. https://doi.org/10.1093/nar/ gky1080 





Lu B, Leong HW (2016a) Computational methods for predicting genomic islands in microbial genomes. Comput Struct Biotechnol J 14:200–206 





Lu B, Leong HW (2016b) GI-SVM: a sensitive method for predicting genomic islands based on unannotated sequence of a single genome. J Bioinforma Comput Biol 14:1640003. https://doi. org/10.1142/s0219720016400035 



# An Overview of Genomic Islands’ Main Features and Computational Prediction: The CMNR Group of Bacteria As a Case Study

3 

Thaís Cristina Vilela Rodrigues, Arun Kumar Jaiswal, Flávia Figueira Aburjaile, Carlos Augusto Almeida, Rodrigo Dias de Oliveira Carvalho, Janaíne Aparecida de Paula, Rodrigo Profeta Silveira Santos, Fabiana Vieira Dominici, Andrei Giacchetto Felice, Pedro Henrique Marques, Michele Min San Wu, Yngrid Victória Cassiano Mascarenhas, Alexandre Claudino Junior, Thiago de Jesus Sousa, Victor Augusto Sallum Ceballos, Eduarda Guimarães Sousa, Debmalya Barh, Vasco Ariston de Carvalho Azevedo, Sandeep Tiwari, and Siomar de Castro Soares 

Sandeep Tiwari and Siomar de Castro Soares contributed to this work equally and shared the position. 

T. C. Vilela Rodrigues · A. K. Jaiswal · R. P. S. Santos · A. C. Junior · T. de Jesus Sousa · D. Barh · V. A. d. C. Azevedo (✉) 

Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

F. F. Aburjaile 

Preventive Veterinary Medicine Department, Veterinary School, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

C. A. Almeida 

Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Preventive Veterinary Medicine Department, Veterinary School, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

R. Dias de Oliveira Carvalho 

Postgraduate Program in Bioinformatics, Department of Genetics, Ecology, and Evolution, Institute of Biological Sciences, Federal University of Minas Gerais (UFMG), Belo Horizonte, Brazil 

Department of Biochemistry and Biophysics, Federal University of Bahia, Salvador, Brazil 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_3 

## Abstract

DNA sequencing, one of the biggest dilemmas of the age is solved with the nextgeneration sequencing technologies. The challenge now is to develop accurate tools to analyze the massive quantity of data that encompass invaluable information regarding all kinds of organisms. Genomic Islands (GEIs) contain genes and other elements that evidence the horizontal transfer process, having a huge impact on the evolution and adaptability of bacterial species. Several aspects are important to discriminate genomic regions that harbor GEIs from the regions inherited through vertical gene transfer. GC content, codon deviation, flanking tRNA, and transposase genes are some of the most important features. Besides that, distinct categories of GEIs are classified by the nature and function of the genes which it harbors. For bacterial pathogens, Pathogenicity and Resistance Islands are key features for the understanding of the virulence factors and the mechanism of the infection and disease development of a pathogen. Further, in the era of resistant microorganisms, knowing the behavior and the pattern of gene migration through different species and strains is of huge importance. In this book chapter, we described the leading points to predict GEIs, demonstrating the main available tools and some plasticity features regarding bacterial species from the CMNR group, which contains specific highly resistant species. 

## Keywords

Genomic Islands · GEIs · Comparative genomics · CMNR group bacteria 

## 3.1 Introduction to the Genomic Age and Comparative Genomics of Microorganisms

The DNA structure was solved in 1953 by Watson and Crick when they also proposed that the molecule was a kind of a genetic repository discovering that revealing the sequence was crucial (Watson and Crick 1953). In the same year, the first sequence of a biological was achieved by Sanger through sequencing the insulin chains (Sanger and Thompson 1953). However, the first DNA molecule was only 

J. A. de Paula · F. V. Dominici · A. G. Felice · P. H. Marques · M. M. S. Wu · Y. V. C. Mascarenhas · V. A. S. Ceballos · E. G. Sousa · S. d. C. Soares (✉) 

Department of Microbiology, Immunology, and Parasitology, Institute of Biological and Natural Sciences, Federal University of Triângulo Mineiro (UFTM), Uberaba, Brazil 

S. Tiwari 

Postgraduate Program in Microbiology, Institute of Biology, Federal University of Bahia, Salvador, Brazil 

Postgraduate Program in Immunology, Institute of Health Sciences, Federal University of Bahia, Salvador, Brazil 

sequenced in 1968 (Wu and Kaiser 1968). A few years later, Sanger and Coulson achieved the mark of sequencing the first genome, a phage of 5,368 bp, through the method they developed, named: plus, and minus (Sanger et al. 1977a). Finally, a similar procedure named after Sanger was proposed in 1977 (Sanger et al. 1977b). 

Along with technological progress, larger genomes could be sequenced in a shorter time. Through Shotgun techniques, DNA fragments were cloned in bacterial vectors, and through bioinformatics, the overlapping of reads was firstly used to assemble the sequences (Staden 1979). The whole genome of the Epstein–Barr virus, with 172,282 bp, was one of the main accomplishments using the Sanger method at the time (Baer et al. 1984). Also, because bacterial and archaeal genomes are much smaller and less complex than eukaryotic genomes, a massive amount of data from these groups began to be generated (Setubal et al. 2018). The increase of data required the creation of specific repositories, so in 1982 the database GenBank from the US National Institute of Health (NIH) was created, achieving at the end of the 80s more than 40 million bases. Nowadays, it has more than 1 billion and 7 million sequences deposited (GenBank and WGS Statistics 2022). The last years had notable growth in genomic sequencing, with a decrease in the processing errors and an improvement in throughput, mediated mainly by the Human Genome Project, which aimed to obtain the entire genetic information of the complete human genome (Craig Venter et al. 1979). 

The first bacterial genomes to be sequenced originated from two species with less than 2Mb genomes: Haemophilus influenzae and Mycoplasma genitalium in 1995. In the following years, the collection of genomes increased exponentially, and, simultaneously, the comparative analysis allowed us to understand phylogenetic relationships among them. This was the beginning of microbial genomics (Koonin et al. 2021). The number of computational methods developed to assess the microbial genomic data and the number of sequenced genomes increased in a direct proportion. Analysis regarding orthologous gene clusters supports evolutionary studies and functional gene annotation (Tatusov et al. 1997; Huerta-Cepas et al. 2017; Jensen et al. 2008). Besides, those approaches allow the comparison of multiple genomes yielding evolutionary insights beyond the development of models, which illustrates the rules that guide the prokaryote evolution (Koonin et al. 2021). 

Comparative genomics allows the understanding of the genetic similarities and divergences among strains in species or several species in a genus. Thus, combined with phenotypic knowledge, that information plays a pivotal role in better comprehending the overall microbial species’ behavior (Setubal et al. 2018). Orthology comparisons can be performed to verify the presence/absence of genes in genomes, assisting in further phylogenetic comprehension and genome annotation, which is highly important in the biology research field (Nichio et al. 2017). The pan-genome analysis is another section of this field defined by, briefly, the comparison of all genomes of an interesting set (species or genus, for instance), which is divided into the subsections: Core genome, including only the genes harbored by all genomes and, the accessory genome, which englobes gene families that are not present in all genomes (Tettelin et al. 2005). Those subsets can be used to discriminate essential genes between species- or strain-specific genes. Further, the phylogenetic analysis may be integrated into comparative genomics, in a phylogenomic analysis, to provide essential observations about the ancestrality, divergence, and taxonomy studies of microorganisms (Washburne et al. 2018). Those methodologies have brought new insights regarding the microbiologic area, mainly with the recent advances in metagenomics. One of the main challenges dealt with the microbiological research is the difficulty to obtain the DNA of some species once many of them are demand laborious growth techniques or are still unculturable. Nowadays, with the new advances in the area, the characterization of entire microbial populations and the identification of new species and strains are feasible (Segata 2018). 

Hence, the combination of different approaches related to comparative microbiological data supports significant advances in interpreting the behavior of many microorganisms, providing highlights about the diversity of the species, genus, or strains and features related to its cellular mechanisms as cell pathogenic and metabolic characteristics. 

## 3.2 Main Characteristics of Genomic Islands

## 3.2.1 Genomic Plasticity and Genomic Features of Horizontally Acquired Regions

Genome plasticity is one feature of the DNA that allows it to evolve dynamically. This alterable property results from several mechanisms, such as point mutations, rearrangements (inversion and translocation), gene conversion, deletions, and foreign DNA insertions (plasmids, bacteriophages, transposons, insertion elements, and GEIs). This genome plasticity mainly results in genomic changes where the evolutionary forces may act, taking the bacteria to evolve by leaps. Also, it is linked to bacterial diseases, in which highly resistant strains can share their genes, being one threat and demanding the attention of the scientific community (Anastasi et al. 2016). 

In the first years of the studies of genomics of microorganisms, bacterial species were defined partly by the G+C (Guanine and Cytosine) content of their genomes. The overall G+C content reflects the base composition across the genome, where the bacterial genomes slowly change over time. Most genes in a given genome can evolve over a considerable period when subjected to selective pressures (Deng et al. 2002). Some genome sequence analyses have indicated that the nucleotide compositions from the genomes of individual replicates are not homogeneous, so a significant degree of gene flow involving the acquisition of DNA sequences from different sources at different times has been observed (Welch et al. 2002). Concluding, the bacterial genome is not static, presenting gene gain and loss over time, where those associated with selective advantage are preserved, and those not advantageous to the organism may be lost (Lawrence and Roth 2014). 

Horizontal gene transfer (HGT) is the central process of gene sequence acquisition. HGT was described in 1928 by Frederick Griffith, which he demonstrated a bacterial transformation mechanism with external DNA (Griffith 1928). Mobile genetic elements (MGEs), such as plasmids, bacteriophages, and transposons, are frequent vectors of genes obtained through HGT. In the bacterial life cycle, HGT acts among the biological processes classified as Transformation, Conjugation, and Transduction. Transformation, the uptake of nucleic acids, is mediated by proteins natively present in the chromosome of bacteria. Conjugation, the plasmid-mediated gene transfer, requires independent replication of genetic components such as plasmids or transposons. Finally, transduction allows the displacement of genetic material mediated by bacterial viruses or bacteriophages (Frost et al. 2005). The gene regions acquired by HGT normally contain evidence of their functions, such as MGE transposases and site-specific recombinases that catalyze the intracellular movement of MGEs. In addition, host homologous recombination systems allow for chromosomal deletions and other rearrangements. 

Several elements may be involved in HGT events, where they portray a decisive role in evolution by leaps in virtue of gene incorporations, such as plasmids, bacteriophages, transposons, insertion elements, and GEIs. As a result of sourcespecific characteristics and mechanisms used in incorporation, regions that have been acquired through HGT share some characteristics as deviation in genomic signature related to G+C content and codon usage, which reflect the genomic signature of the donor organism; the existence of insertion sequences (IS) and/or flanking tRNAs that may present a specific IS in their 3'-terminal regions; and harbor transposases (Soares et al. 2012). 

Techniques to identify HGT have upgraded with time, revealing the notably extent and relevance of HGT to viral, prokaryotic, and eukaryotic genomes (Swithers et al. 2012; Treangen and Rocha 2011). For a transferred gene endure in the new organism for a prolonged time, it demands to contribute with a selective advantage for the receptor. However, many of the HGT genes identified through comparative genomics among near ancestors have indifferent or nearly neutral achievements for the receptor in both prokaryotic organisms (Gogarten and Townsend 2005). According to Zhou et al. (2022), the successfully integrated gene must not harm the receptor, be expressed at small rates, and encode an important function (Zhou et al. 2021). Phylogenetic distance, shared ecology, and economic restrictions are considered factors in HGT identification, although their relative contributions are not as clear (Williams et al. 2011). 

On the other hand, vertical gene transfer is also described; however, it exerts less influence on genome evolution. It involves the transfer of DNA sequences from the parents to the progeny, like the asexual reproduction of bacteria. Although the horizontal transfer is expected to be succeed mainly between related than distant species, it also occurs with distant species as divergent as those found in the diverse domains of life (Sulaiman et al. 2018). In summary, the presence or absence of any gene between two phylogenetically related bacteria could be the result of a relevant HGT event. Studies in bacteria with open pan-genomes show higher variability in gene content compared to bacteria with closed pan-genomes and, thus, have great potential for discovering new genes. Therefore, comparative genomics is crucial to unravel the existence and absence of a genetic profile in certain strains. These procedures can also help to discriminate between phenotypic and genotypic patterns of pathogenic strains. 

In comparative bacterial genomics, the characterization of the presence and absence of genes that are active in antibiotic resistance, pathogenesis, or related to metabolic ability is expected. This dynamic nature of the DNA is called genome plasticity, which is machinery adopted by the organism that causes it to genetically mold itself providing better adaptability to the environment. Finally, the presence– absence variation of genes (PAV) between genomes contributes fundamentally in the environmental- and host-adaptation, allowing the maintenance of the microorganism in new stress situations and the innovation and evolution of the bacterial genome (Wan et al. 2020; Sollitto et al. 2022). Generally, this variation of gene content within comparative genomics is related to accessory genes between species (Medini et al. 2005). 

## 3.2.2 Codon Usage

61 combinations of the 4 nucleotide bases in groups of three result in coding codons, which are involved in amino acid recruitment, therefore encoding proteins and playing a vital role in biochemical information for the organism (Nirenberg 1963). However, the genetic code is degenerated, once the same amino acid may be coded by more than one codon (Gonzalez et al. 2019). The selection of a codon for one specific amino acid is not a random process, as some preferred codons influence the expression level, impacting the whole translational procedure (Zhoua et al. 2016). 

The GEIs are gene clusters with compelling evidence that they were acquired by HGT and one such feature used in the identification and characterization of this process is the codon usage, as each species have its characteristic preferred codons (Azevedo et al. 2011) due to: tRNA availability, transcriptional fidelity, and efficiency; and selective and non-selective substitutional bias (Karlin et al. 1998). The level of expression of a gene acquired by horizontal transfer will depend on the compatibility of the receptor with the expression process. Due to codon preference, translation efficiency due to the unavailability of carrier RNA, for example, can negatively affect the production of gene products (Sharp and Matassi 1994; Callens et al. 2021). 

Various theories about the use of these optimal codons have been created throughout history. Some bring that codon bias contributes for the equity of the natural selection, favoring the permanence of codons advantageous to the organism and genetic drift favoring the likelihood of fixing the less advantageous ones, but the mutation-selection-drift (MSD) theory is the most widely accepted (Bulmer 1988; Akashi 1994). 

As a general rule for codon usage, the most efficient translations according to the strength of the relationship between codon and anticodon will be benefited, where an intermediate strength prevails over a strong or weak one and codons for medium and larger tRNA are preferred, with the smaller ones being avoided (Grosjean and Fiers 1982). Based on this, codon usage may be used as a feature of GEIs precisely because they carry a pattern/signature from the donor organism (Langille et al. 2008), which makes it easier to trace these regions. 

## 3.2.3 GC Content

Chargaff’s rule states that the total number of adenine (A) nucleotides equals the number of thymine nucleotides (T) due to double-stranded DNA base pairing. Similarly, the total number of guanine nucleotides (G) is equivalent to the number of cytosine nucleotides (C) (Kresge et al. 2005). For that reason, it is possible to refer to the genomic nucleotide composition as AT or GC content. 

Because of the miscellaneous genome combination of distinct bacterial strains, GEIs will generally have a significantly different sequence composition from the new host genome (Langille et al. 2010). As shown for the codon usage, regarding the nucleotide composition, the GC content of a given island is also different from the overall GC of the genome, which is represented by the percentage of G and C it has, which is complementary to the fraction of A and T, as represented by the formula: 

$$
\% \mathrm{GC} = \left(\frac {G + C}{A + T + C + G}\right) \times 100
$$

The GC content among species is highly variable, where it can range in prokaryotes from 13.5% in Candidatus Zinderia insecticola strain CARI, a betaproteobacterial symbiont (Langille et al. 2010), to 77.4% in Actinomycetales bacterium strain S29, a high G + C Gram-positive bacteria (Genome List 2022). In general, the GC content tends to increase as the genome size increases, with longer genomes having higher %GC (Almpanis et al. 2018). The reasons for this correlation are yet to be completely understood, although both environmental pressure and phylogenetic relationships seem to play a core influence (Reichenberger et al. 2015). 

## 3.2.4 Transposases and Insertion Sequences

Insertion sequences (ISs) are little/single units of transposons, capable of moving through DNA and were widely distributed in bacterial genomes (Mahillon and Chandler 1998). ISs carry genes that encode enzymes as transposases, in which recognizes the terminal repeated and inverted sequences (RIs) that flank the transposon gene, enabling transposition to occur while transferring itself to the host’s DNA, for instance (Cho et al. 2014; Siguier et al. 2014; Rice and Baker 2001). 

Transposition largely contributes to the development of genomic diversity and plasticity as it may induce mutations, inversions, duplications, and deletions, with genomic rearrangements generating mosaic regions where the genes present in the inserted DNA may be differentially modulated (Preston et al. 2004; Lysnyansky et al. 2009). In this scenario, the evolution of the bacterial genome also stems from many results of transpositions, since bacteria can start to acquire ISs through the mechanisms of conjugation, transformation, and transduction. These are important factors that can confer evolutive advantages but also can generate instability of the bacterial genome, as deleterious mutations with dysfunctional phenotype can lead to drastic consequences for the organism (Williams 2016; Schlüter et al. 2007; Colonna Romano and Fanti 2022). 

There are two transposition mechanisms: non-replicative and replicative. The non-replicative mechanism of transposition is carried out by composite transposons, those consisting of two insertion sequences that flank a gene, which is often antibiotic resistance genes. The integron-cassette system is one of the common genetic elements responsible for the spread of antibiotic resistance genes (Schlüter et al. 2007; Teuber et al. 1999). Replicative transposition is performed by non-composite transposons. In this mechanism, one copy of the sequence of the transposon is transferred to the target site and another to the original bacterial site (Hickman and Dyda 2015). 

The progress of bioinformatics tools aimed at the identification of transposon elements (TEs) has been widely studied in recent years, although the choice of the best tools for specific cases is under discussion (Nelson et al. 2017; Hoen et al. 2015). There are two main approaches available for detecting these elements in whole genomes: mapping discordant reading pairs and “split” reads that share common alignment junctions (Vendrell-Mir et al. 2019). The combination of both approaches seems to be a good strategy, however, improvements in the accuracy of the predictions are still needed. 

## 3.2.5 Specific Factors (Virulence, Resistance, Metabolic, and Symbiotic Factors)

Genomic Islands (GEIs) can be categorized differently according to their gene content: Symbiotic Islands, implicated in the association of bacteria to Leguminosae (Hadjilouka et al. 2018); Resistance Islands, harboring genes related to antibiotic resistance (Krizova and Nemec 2010); Metabolic Islands, composed by genes related to the biosynthesis of metabolites of the second class (Tumapa et al. 2008); and Pathogenicity Islands (PAIs), presenting a prominent concentration of virulence factors, which appear linked to pathogenic bacteria and are involved in the reemergence of several pathogens (Dobrindt et al. 2000; Soares et al. 2016). Among the specific factors, there are virulence factors, resistance genes, and metabolism- and symbiosis-associated genes, respectively, that are predominant in their respective islands. 

Virulence factors (VFs) are gene products that can favor the pathogenicity of a microorganism by expanding its potential to cause disease and may be classified into at least 5 types of distinct mechanisms: motility, adhesion, invasion, immune system evasion, and toxin production (vanden Broeck et al. 2007; de Jong et al. 2019; Veerachamy et al. 2014; Chaban et al. 2015). An example of a classic pathogenicity island that contains essential ${ \mathrm { V F } } { \mathbf { \bar { s } } } .$ s, is LIPI-1 from Listeria monocytogenes. It i composed of 6 genes (prfA, plcA, hly, mpl, actA, plcB) whose products are fundamental to the intracellular lifestyle of the bacterium, allowing the progression of infection (Hadjilouka et al. 2018). 

Once the microorganism has already infected the host, resisting treatments is crucial for the life-maintenance of the pathogen. In this sense, antibiotic resistance genes (ARGs) encode proteins with functions that confer resistance to a specific drug. For instance, a new RI "AbGRI4" was recently identified in multidrug-resistant clinical isolates of A. baumannii, which contained the genes aacC1 and aadA1, conferring resistance to gentamicin and streptomycin, respectively (Chan et al. 2020). In this sense, selective pressure on ARGs and their spread via horizontal transfer is a serious public health problem, which makes the area of RIs studies impactful. 

The bacterial metabolism can be a determining factor in whether or not it adapts to an environment (or in a host). MIs harbor genes associated with energy generation and conversion, metabolism, and transport of carbohydrates, amino acids, nucleotides, inorganic ions, lipids, coenzymes, and secondary metabolites. For example, in marine Acinetobacter, GEIs associated with secondary metabolites may provide a better functional adaptation of these microorganisms (Penn et al. 2009). In Vibrio spp., there are arguments that support the hypothesis that iron transport and acquisition systems may have been disseminated via horizontal gene transfer(Payne et al. 2016). Finally, genes associated with symbiosis are those that promote a symbiotic relationship. Therefore, the repertoire of a GEI that provides support for the symbiotic host–bacterium relationship to the point of sustaining it, classifies the island as a Symbiosis Island (SI). One gene with evidence of horizontal transmission is the nifH encoding nitrogenase present in species such as Bradyrhizobium japonicum, which fixes nitrogen, making it useful for plantsassociated bacteria (Barcellos et al. 2007). 

## 3.3 Software/Databases for Prediction and Visualization of Genomic Islands

GEIs affect the genome plasticity through their ability to transfer and incorporate a huge number of genes in the block, i.e. operons and groups of genes coding correlate functions. They may cause drastic modifications, taking the bacteria to evolve by leaps compared to the parent strain. GEIs are portions of DNA obtained from a different organism that sharing in common: the size ranging from 10 to 200 Kb; and, the presence of sequences derived from phage and/or plasmid, the existence of transfer genes or integrases and insertion sequences. Also, they are normally flanked by tRNA genes or insertion sequences that may be involved in their instability (Hacker and Carniel 2001), resulting in the deletion and transfer events, besides rendering the region mosaic (Letek et al. 2008). Tools for predicting GEIs have followed the advances in the next-generation sequencing technologies. Thus, comparative genomics and sequence composition are the main approaches for predicting GEIs, combined with the support of different databases (da Silva Filho et al. 2018). 

Several analysis tools are currently available for these predictions (Table 3.1) and visualization of data. 

GIPSy is a software program that predicts the 4 types of GEIs explained above. It has been developed in Java including different databases such as PFAM (protein families database), CARD (Comprehensive Antibiotic Resistance Database), and Mvirdb (microbial database of protein toxins, virulence factors, and antibiotic resistance genes), among others, to perform the predictions in an independent platform. The program requires the genomes of the target and a reference organism, where the data may be in EMBL (.embl) or Genbank (.genbank, .gb, .gbk) format. The prediction of GEIs will be based on: genomic signature deviation such as G + C content; presence/absence of transposase genes; virulence, metabolism, antibiotic resistance, and symbiosis factors; and, presence/absence of flanking tRNAs (Soares et al. 2016). 

The Alien Hunter software created by researchers at the Sanger Institute in the UK predicts GEIs through Interpolated Variable Order Motifs (IVONs), detecting atypical regions of the genome such as G + C content, dinucleotides, and recurrence of the codons. The result is given through the IVON score, where the higher the score, the more accurate is the prediction, meaning the portion that corresponds to the island differs from the remaining genome. In addition, a threshold is also given based on the average of the complete genome according to the similarity. In this way, the atypical regions that are candidates for GIs are constructed (Vernikos and Parkhill 2006). 

Another tool is GI Hunter, it can predict GEIs from both bacteria and archaea through eight features associated with GI: tRNA, Phage, Integrase, Transposase, Highly expressed gene, Gene density, Average intergenic distance, and IVOM (Alien Hunter's Variable Order Interpolated Motifs methodology). The information is based on the study by Langille and collaborators (Evaluation of GEI predictors using a comparative genomics approach—IslandPick) in addition to genome annotations (Che et al. 2014b). 

The IslandViewer3 besides being a GEI database is also a web-based prediction software that relies on three methodologies: for genomic comparison analysis it utilizes IslandPick, for gene composition, SIGI-HMM, and search for atypical regions and mobility-related genes, it uses IslandPath-DIMOB. In addition, it uses annotations from other databases to obtain information on pathogenicity, virulence, antibiotic resistance, and homologous genes (Dhillon et al. 2015). Here phylogenetically related genome analyses are needed so other tools such as CVTree and Mauve are used, which build phylogenetic trees of complete genomes and perform multiple genome alignments (Rissman et al. 2009). 


Table 3.1 Available bioinformatics resources for the prediction and visualization of Genomic Islands


<table><tr><td>Tool</td><td>Software tool/ database</td><td>Genomic signature</td><td>References</td></tr><tr><td>AlienHunter</td><td>SW</td><td>ON</td><td>Vernikos and Parkhill (2006)</td></tr><tr><td>Centroid</td><td>SW</td><td>GC</td><td>Rajan et al. (2007)</td></tr><tr><td>Colombo</td><td>SW</td><td>CU</td><td>Waack et al. (2006)</td></tr><tr><td>Design-Island</td><td>SW</td><td>GC + ON</td><td>Chatterjee et al. (2008)</td></tr><tr><td>EGID</td><td>ES</td><td>GC + DI + TRI + ON + CU</td><td>Che et al. (2011)</td></tr><tr><td>GC-Profile</td><td>SW</td><td>GC</td><td>Gao and Zhang (2006)</td></tr><tr><td>GEMINI</td><td>SW</td><td>-</td><td>Che et al. (2010)</td></tr><tr><td>detector</td><td>SW</td><td>k-mers + IVOM</td><td>Che et al. (2010)</td></tr><tr><td>GIHunter</td><td>SW</td><td>-</td><td>Che et al. (2014a)</td></tr><tr><td>GI-POP</td><td>SW</td><td>GC + ON + CU</td><td>Lee et al. (2013)</td></tr><tr><td>GIPSy</td><td>ES</td><td>GC + CU</td><td>Soares et al. (2016)</td></tr><tr><td>GIST</td><td>ES</td><td>GC + DI + ON + CU</td><td>Hasan et al. (2012)</td></tr><tr><td>GI-SVM</td><td>SW</td><td>GC + CU</td><td>Lu and Leong (2016a)</td></tr><tr><td>HGTector</td><td>SW</td><td>-</td><td>Zhu et al. (2014)</td></tr><tr><td>IGIPT</td><td>SW</td><td>GC + DI + CU</td><td>Jain et al. (2011)</td></tr><tr><td>INDeGenIUS</td><td>SW</td><td>ON</td><td>Shrivastava et al. (2010)</td></tr><tr><td>IslandCompare workflow</td><td>ES</td><td>GI + DI</td><td>Bertelli et al. (2022)</td></tr><tr><td>Islander</td><td>DB</td><td>GC</td><td>Hudson et al. (2015)</td></tr><tr><td>IslandPath</td><td>DB</td><td>GC + DI</td><td>Hsiao et al. (2003)</td></tr><tr><td>IslandPick</td><td>SW</td><td>-</td><td>Langille et al. (2008)</td></tr><tr><td>IslandViewer 3</td><td>DB+ES</td><td>GC + DI + CU</td><td>Dhillon et al. (2015)</td></tr><tr><td>MJSD</td><td>SW</td><td>GC</td><td>Arvey et al. (2009)</td></tr><tr><td>MSGIP</td><td>SW</td><td>GC</td><td>de Brito et al. (2016)</td></tr><tr><td>MTGIpick</td><td>SW</td><td>Tetranucleotide</td><td>Yoon et al. (2007)</td></tr><tr><td>PAIDB</td><td>DB</td><td>GC + CU</td><td>Yoon et al. (2015))</td></tr><tr><td>PAIDB v2.0</td><td>DB</td><td>GC + DI + CU</td><td>Yoon et al. (2015)</td></tr><tr><td>PAI-IDA</td><td>SW</td><td>GC + DI + CU</td><td>Tu and Ding (2003)</td></tr><tr><td>PIPS</td><td>ES</td><td>GC + CU</td><td>Soares et al. (2012)</td></tr><tr><td>Predict Bias</td><td>SW</td><td>GC + DI + CU</td><td>Pundhir et al. (2008)</td></tr><tr><td>Pre_GI</td><td>DB</td><td>GC + ON</td><td>Pierneef et al. (2015)</td></tr><tr><td>RGPFinder</td><td>SW</td><td>GC + CU + ON</td><td>Ogier et al. (2010)</td></tr><tr><td>Sighunt</td><td>SW</td><td>Tetranucleotide</td><td>Jaron et al. (2014)</td></tr><tr><td>SIGI-HMM</td><td>SW</td><td>CU</td><td>Waack et al. (2006)</td></tr><tr><td>VRprofile</td><td>SW</td><td>GC + DI + CU</td><td>Li et al. (2018)</td></tr><tr><td>Zisland Explorer</td><td>SW</td><td>GC + CU</td><td>Wei et al. (2017)</td></tr><tr><td>BRIG</td><td>SW</td><td>CGView + BLAST</td><td>Alikhan et al. (2011)</td></tr><tr><td>GIV</td><td>SW</td><td>GIHunter + Circos</td><td>Che and Wang (2013)</td></tr></table>


DB (database); SW (software tool); ES (ensemble software that combines different software tools); GC (G + C content); DI (dinucleotide frequency); TRI (trinucleotide frequency); O (oligonucleotide); CU (codon usage). 


## 3.4 Examples of Bacteria of the Group CMNR in the Context of Genomic Islands

The CMNR group, composed of Corynebacterium, Mycobacterium, Nocardia, and Rhodococcus species, is characterized by bacteria with an outer membrane composed of diverse lipids such as mycolic acid. This feature is a strong virulent factor which implies a natural antimicrobial resistance (Bansal-Mutalik and Nikaido 2011; Dorella et al. 2006). 

## 3.4.1 Genus Corynebacterium

The genus comprises nearly 100 species of Gram-positive bacteria with a large amount of Guanine + Cytosine in the genome. There are extremely pathogenic representatives of this genus to animals and humans, in which the main species for the human health being Corynebacterium diphtheriae, and others can be used in industry and food production (Tauch et al. 2016). In the microbiome of the human body, several Corynebacterium species have been described as opportunistic bacteria, once they colonizes naturally the gut however, unusually, they have been related to human infections due to contaminations of clinical specimens (Tauch et al. 2016; Mangutov et al. 2021). 

Despite the common colonization of the human microbiome, different diseases associated with the respiratory tract, such as pharyngitis, bronchitis, rhinosinusitis, and pneumonia are caused by representatives such as C. diphtheriae and C. ulcerans (Mangutov et al. 2021). Also, orthopedic infections (such as septic arthritis and osteomyelitis), as well as endocarditis, abscesses, genitourinary tract infections, and various types of infections in both immunologically healthy and immunocompromised patients were described (Kalt et al. 2018). 

## 3.4.1.1 Corynebacterium pseudotuberculosis

C. pseudotuberculosis is responsible for triggering chronic infections causing lymphadenitis in addition to other lesions and abscesses in various species of animals. Infections in humans have been documented, normally farm workers and veterinarians who have had contact with contaminated animals, which may culminate in necrotizing lymphadenitis (Join-Lambert et al. 2006). 

C. pseudotuberculosis may harbor the gene for the Diphtheria Toxin (DT) (the main cause of C. diphtheriae virulence). The gene for this toxin may be acquired via bacteriophages through HGT (Soares et al. 2013). More than 10% of the isolated C. pseudotuberculosis microorganisms produce DT, but there are no diphtheria cases associated with the species. However, these strains of C. pseudotuberculosis can also produce the dermonecrotic toxin, another relevant virulence factor for this species (Emmerson et al. 1987). 

The plasticity level of the C. pseudotuberculosis genomes is highly diverse between ovis biovar and equi biovar strains (Soares et al. 2013). This can be explained because even sharing the same PAIs, genetic deletions are found in different positions in each strain. Some harbor the diphtheria toxin gene and others harbor clusters of pilus genes, where a deletion was noted at the position where the genes should be in the equi biovar strains. Also, the clusters of pilus genes show a low similarity between the biovars, because of small deletions, nucleotide substitutions, and frameshift mutations. Finally, some strains harbor the pld (Phospholipase D) gene and the $f a g$ (Fe Acquisition Gene) operon, which are both important for encoding important virulence factors of the species (Soares et al. 2013). 

In the strains of biovar ovis, besides the elevated genetic similarity rate, a similar deletion pattern was also observed in the same PAIs. In the equi biovar strains, it has been witnessed large deletions and a lower level of intra-biovar similarity in GEIs compared to the ovis biovar. Furthermore, a clonal-like behavior of the species was indicated when compared to C. diphtheriae. Also, the majority of the variable genes in the ovis biovar strains were obtained in blocks by horizontal gene transfer and are hugely conserved in the whole biovar. Contrary to this, the equi biovar strains showed large variability in island gene content (both inter-and intra-biovar). It’s possible to conclude that the acquisition of genes through HGT and the maintenance of the acquired regions along with the plasticity of these regions may be due to the colonization of specific/exclusive hosts (Soares et al. 2013). 

Regarding the RIs, the number found was quite versatile among the strains, where the strains with a higher number of RIs have a lower number of isolated resistance genes. Despite this, these genes were grouped in a larger number on islands, concluding that they were more obtained through HGT events and resulting in a greater variability. The number of ARGs in the Equi biovar was higher than in the Ovis biovar, including membrane permeases, beta-lactamase, among others (Baraúna et al. 2017). 

A total amount of 16 normal and 5 strong PAIs were predicted using GIPSy software in C. pseudotuberculosis, where C. glutamicum was the non-pathogenic reference species. Also, the software predicted 8, 14, and 16 normal RIs, SIs, and MIs, respectively, whereas 4 RIs, 3 SIs, and 4 MIs were strong. 

## 3.4.2 Rhodococcus

There are approximately 57 species of bacteria in the genus Rhodococcus. They present a high diversity of metabolic and industrial applications, or potential in bioremediation. However, leastwise six species (R. equi, R. erythropolis, R. ruber, R. gordoniae, R. fascians, and R. defluvii) have been related to animal and plant disorders (Vázquez-Boland et al. 2013; Vázquez-Boland and Meijer 2019). 

In R. equi, as in the genus Rhodococcus, niche specialization is determined by plasmid genetic content. In environmental Rhodococcus species, the functions encoded by plasmids are mainly catabolic, while in R. equi they promote colonization of the animal host (Vázquez-Boland et al. 2013; von Bargen and Haas 2009). The evolution of the R. equi genome is mainly driven by genetic gain/loss mechanisms, with an important support of HGT events. Phages are also numerous in R. equi (Petrovski et al. 2013; Salifu et al. 2013; Summer et al. 2011) and likely have an essential place in HGT-driven genome plasticity. 

In this species, the conjugative virulence plasmid is an important part of the accessory genome, being a key factor for pathogenesis. Three different plasmids related to the virulence for the host have been identified: the circular variants pVAPA and pVAPB, found in horses and swine, respectively, and the linear pVAPN found in bovine (ruminant) isolates. The pVAP has 80 to 100 kb in size and carries the horizontally acquired vap PAIs, whose products are essential for pathogenesis and survival in macrophages (Vázquez-Boland et al. 2013; Anastasi et al. 2016; Letek et al. 2008). 

The different aspects among the three vap PAIs are primarily explained by the type of genes. Each vap PAI contains a group of homologous virulence-associated genes, in addition to specific non-vap genes present in each of the three PAIs, which tend to be deeply preserved (Anastasi et al. 2016; Letek et al. 2008; Coulson et al. 2010; Valero-Rello et al. 2015). Moreover, they possess several non-vap genes, notably the vir operon harboring two regulators (virR and virS), which activate the expression of vap PAI (Byrne et al. 2007). In addition to vap genes found to this plasmid, several chromosomal genes in R. equi appear to have been co-evolved to act under the control of virR and virS presumably in a vap PAI co-regulated network (Coulson et al. 2015; Letek et al. 2010). 

Furthermore, these plasmids have specificity for different hosts and can be found in both animal and humans isolates. Therefore, the origin of R. equi transmission to human can be inferred from the type of plasmid contained in the variant strains (Takai et al. 2020). The three types of plasmids are found in human isolates (Ocampo-Sosa et al. 2007). 

The strict association of certain types of vap PAIs with an animal species indicates that the selective pressure is determined by the host. Studies have shown that most strains of R. equi in the co-infection by HIV in humans contained type B plasmids (primarily derived from swine). Thus, suggesting that human exposure to this type of animal may be a significant risk factor (Anastasi et al. 2016). 

Comparative genomic analyses were accomplished to characterize the discrepancies between the genomes of the recently sequenced R. equi WY strain and other previously sequenced R. equi genomes. As a result, nine GEIs were identified in R. equi WY that showed a variation of 4.3 kb to 29.5 kb in size. They encoded genes involved in virulence, resistance, or niche adaptation, including three unique GEIs in R. equi WY. Regarding resistance genes, nine R. equi genomes share a 12.2 kb GEI region containing a tunicamycin resistance protein (tmrB), a metallo-β-lactamase, as well as a putative integrase followed by an efflux pump belonging to the major facilitator superfamily (MFS). In addition, such GEIs also have an iupABC operon, and the first iupA gene of this operon, which encodes proteins from an ABC transport system extremely similar to siderophore uptake mechanisms that provide R. equi with the capacity to use as a source of iron, the heme and the hemoglobin (Ying et al. 2019). 

A recent study performed a broader comparative analysis among R. equi and other species genomes belonging to the genus Rhodococcus. To accomplish these comparative genomic analyses, 94 Rhodococcus complete genome sequences belonging to 22 species were used. The Rhodococcus spp. were isolated from different sources, such as plants (R. fascians), soil and seawater (R. erythropolis), and R. equi isolated from both animal hosts (such as equine, swine, and humans) and also from soil (Ying et al. 2019). The GC rate of the 94 genomes varies from 61.67% to 70.67%. Furthermore, the genome sizes of the 22 Rhodococcus spp. are different among diverse species (3.89–12.41 Mb). R. wratislaviensis had the largest average genome size (9.77 Mb, 9.16–10.38 Mb) and the smallest genome belonged to R. corynebacterioides (3.89 Mb), with a difference of 5.8 Mb between them. This enormous diversity of genomes suggests alterability behavior in the Rhodococcus genome and may have allowed them to adapt to a wide spectrum of environments, such as soil, plants, water, and animals (Ying et al. 2019). 

It is known that GEIs in R. equi has consistently been related to niche adaptation, antibiotic resistance, and also virulence and they possibly work together with prophages, therefore contributing to most of the genome expansion (Vázquez-Boland et al. 2013; Petrovski et al. 2013; Summer et al. 2011; Anastasi et al. 2016). Analysis revealed that Two-Component System genes, resistance genes, and virulence factors were substantially enriched in the core genome of R. equi. These data suggest the contribution of the core genome to the pathogenicity and niche adaptation of R. equi as well. In addition, the comparative genomic analysis demonstrated an identical collinearity relationship shared between R. equi genomes, in addition to not showing significant chromosomal rearrangements, and genes located in unaligned regions were acquired mainly in the form of GEIs and prophages (Ying et al. 2019). 

In conclusion, as a valued resource for functional genomic researches, comparative analyses have increasingly facilitated a better understanding of the genomic diversity, evolution, and structural variation of the genus Rhodococcus and R. equi. 

## 3.4.3 Genus Mycobacterium

Mycobacterium is a genus belonging to the order Actinomycetales, of the family Mycobacteriaceae. They are pleomorphic bacilli bacteria with different shapes, ranging from thin filamentous forms to more curved, straight, or slightly curved forms. They are obligate aerobic, non-motile, non-endospore forming, non-encapsulated, and highly pathogenic bacteria, which cause several diseases, including leprosy, tuberculosis, and non-tuberculous mycobacterial infections (Rastogi et al. 2001; Tortoli 2014). This genus contains about 172 species, which are divided into groups, where the main ones are the M. tuberculosis Complex, the M. avium Complex, and the non-tuberculous mycobacteria (Levy-Frebault and Portaels 1992). 

## 3.4.3.1 Mycobacterium tuberculosis Complex

The Mycobacterium tuberculosis complex is the group of Mycobacterium species from the genus Mycobacterium that cause tuberculosis in humans or other organisms. It includes the species M. tuberculosis, M. africanum, M. bovis, M. microti, M. canetti, M. caprae, and M. pinnipedii. The species in this group share a genomic sequence identity of approximately 99.9%, which probably evolved from a single clonal ancestor (Riojas et al. 2018). The two most important species in this complex are M. tuberculosis and M. bovis. Although M. bovis causes tuberculosis in cattle, it may also cause tuberculosis in humans with the same clinic as M. tuberculosis. However, this infection is less frequent, due to the control of bovine tuberculosis (Yu et al. 2011). 

## 3.4.3.2 Mycobacterium tuberculosis

The main virulence factors of M. tuberculosis are the complex lipid wall; the cholesterol catabolism, which is a source of energy and material for the synthesis of lipids of the complex wall; and, proteins and cell envelope lipoproteins important for bacterial adhesion to cells host. These proteins inhibit macrophage antimicrobial responses due to resistance to toxic compounds of the host, mechanisms related to the control of apoptosis and control of the progression and transformation of the phagosome into a phagolysosome, as well as factors that control and regulate gene expression under different conditions of activity of the pathogen (Forrellad et al. 2012). 

The active M. tuberculosis strains have as one of the head points of their virulent factors, genes acquired by horizontal transfer that are inserted in PAIs (Xie et al. 2014). Genes related to immune evasion and persistent infection of M. tuberculosis were found in PAIs, showing the critical importance of those regions for the survival and maintenance of the pathogen (Xie et al. 2014; Arnvig and Young 2012; Marraffini and Sontheimer 2010). Besides that, other GEI regions from this pathogen have shown high sequence variation in their family genes, resulting in proteins with antigenic variability, which may also influence in the immune system evasion (Yu et al. 2011). Another interesting finding is related to the expression rate of the genes of a GEI being different in attenuated strains like M. bovis and virulent M. tuberculosis, corresponding with different patterns in the maintenance of the infection (Yu et al. 2011). 

## 3.4.4 Genus Nocardia

The genus Nocardia consists of aerobic and Gram-positive bacteria of the class Actinobacteria, order Actinomycetales, and family Nocardiaceae, many of which are opportunistic pathogens. These bacteria are widely found in plants, gardens, and soil, and to date, 122 species of Nocardia have been reported, and more than 50 have been considered clinically relevant and may cause disease in humans (Conville and Witebsky 2010). The most identified species in human diseases are N. nova, N. cyriacigeorgica, N. brasiliensis, N. abscessus complex, N. transvalensis complex, and N. farcinica, the latter being the most common (Wang et al. 2022). The clinical manifestations may be localized or disseminated infections, but sometimes it leads to more serious cases, such as Nocardial osteomyelitis and septicemia. Also, lately there has been an expansion in reports of Nocardia infections worldwide in immunocompetent people (Xu et al. 2021; Martínez-Barricarte 2020; Lu et al. 2020). 

The virulence of Nocardia is related to the capacity to neutralize phagosomal acidification, inhibit phagosome–lysosome fusion, modulate lysosomal enzymes, and resist toxic oxidative metabolites (Beaman 1994). Also, other virulence characteristic is the important ability to survive in a facultative intracellular way in several human cells, especially in N. farcinica, a very virulent species with resistance to several antibiotics (Toyokawa et al. 2021). The combination of Trimethoprim and Sulfamethoxazole (TMP-SMX), for instance, is a drug used for the treatment and as a prophylactic agent for Nocardia infections, turning it less effective over time and also demonstrating the ability to acquire mobile elements carrying resistance genes through HGT (Mehta and Shamoo 2020). Nocardia is currently a genus of bacteria not deeply studied and few information regarding the prediction of GEIs has been found in the literature. 

The virulence of Nocardia is associated with immune escape by hindering phagocytosis processes, resistance to toxic oxidative metabolites, in addition to being able to survive in a facultative intracellular way in several human cells. N. farcinica, a very virulent species, exhibits resistance to several antibiotics, in addition to demonstrating the ability to acquire mobile elements carrying new resistance mechanisms through horizontal gene transfer (Komaki et al. 2014; Männle et al. 2020; Valdezate et al. 2015; Yasuike et al. 2017). Within this context, a carried-out study showed that the 76 Nocardia resistant to TMP-SMX, isolated from patients, belonged to 12 species and 75 of these carried class 1 and/or class 3 integrons, which are mobile elements associated with acquisition of antimicrobial resistance (Valdezate et al. 2015; Gillings 2014). In addition, the strains also carried genes encoding proteins that are involved in the resistance against different antimicrobials as: β-lactams (β-lactamases), aminoglycosides (aminoglycosidemodifying enzymes), macrolides (RNA methylases), tetracyclines (ribosomal protection proteins), as well as efflux pumps (Valdezate et al. 2015). Another study reported in N. soli Y48 a total of 17 GEIs composed of 173 genes and 84 hypothetical proteins, including functions such as signal transduction, metabolism (energetic, carbohydrate, nucleotides, and carbon), replication and repair, membrane transport, translation, environmental information processing, and xenobiotic biodegradation (Yang et al. 2019). Furthermore, it was predicted that the transposase genes that may be associated with the possible active HGT in the strain were predominantly related to the EI family and spread throughout the chromosome (Yang et al., 2019). The adaptation of this strain to the soil contaminated by oil and to the degradation of hydrocarbons have been attributed to the presence of these genes, which suggests that there is a great possibility that N. Soli Y48 has evolved and acquired GEIs, making the strain more adapted genetically to mineralize, use, or degrade crude oil (Yang et al. 2019). 

## 3.4.5 Artificial Intelligence As an Improving Approach to Genomic Islands Prediction

Small microorganisms, especially bacterial species, are the most plentiful organisms on the earth. Nowadays, bacterial species shows an immense diversity, demonstrating adaptation abilities to the environment over several thousand years. Bacterial species have the capability to acquire genes horizontally from several other ways, comprising other microorganisms such as prokaryotes, viruses, and eukaryotes (Ochman et al. 2000). The genomic sequences of bacteria have suggested that the HGT events in bacteria, and its cluster of genes involvement in HGT play an important role and give the edge to the bacteria and empower them to the adaptation to the environmental habitat (da Silva Filho et al. 2018; Schmidt and Hensel 2004). The notion of GEI was obtained from the pathogenicity island coined by Hacker and his colleagues in uropathogenic Escherichia coli to report genomic regions that harbor a group of virulence factors that can be spontaneously deleted (Langille et al. 2008; Hacker et al. 1990). 

Programs and software for the prediction of GEIs generally use genomic and sequence comparison techniques. The comparative analysis identifies exclusive regions in genomes of particular pathogens, whereas sequence composition analysis estimates and associates the specific regions with different GEI features in the genome (Lu and Leong 2016b). The comparative genomic analysis predicts variable regions in comparatively close organisms (several genomes), whereas the analysis of sequence composition is performed in one organism (single genome). However, many programs and software are available, but the correctness is inadequate. The use of only one strategy may not be enough to provide adequate results, while multiple different techniques may be a better strategy and can help in GEI identification (da Silva Filho et al. 2018; Lu and Leong 2016b). The majority of bioinformatics programs and software developed for the identification of pathogenicity islands depend on the composition-based methods that handle GEI’s specific properties, while other programs try to correlate closely related genomes. Earlier it was revealed that integrating several features of GEIs for the prediction returns better outputs, for which the application of artificial intelligence can be useful in the GEI prediction analysis (Lu and Leong 2016b; Uelze et al. 2020). Many programs and software based on artificial intelligence and machine learning for the identification of GEIs are available that are helping researchers in gene identification that encodes adaptations used by microorganisms (Lu and Leong 2016b). 

The first machine learning-based method for structural models of GEIs identification is Relevance Vector Machine (RVM). The datasets were assembled by comparative genomics techniques. Eight different types of genomic features were used to train the model such as IVOM score, insertion point, GI size, gene density, repeats, phage-related protein domains, integrase protein domains, and non-coding RNAs (Lu and Leong 2016b). 

The program Genomic Island Hunter is based on a decision tree-based bagging model. Based on the performance metric comparison with other programs, GIHunter showed more accuracy in prediction and has been in use for more than 2000 prokaryotic genomes (Che et al. 2014a). Another program is the GI-SVM, which is formed on a one-class support vector machine (SVM) to identify GEIs in a single genome. It employs composition bias in terms of k-mer content. GI-SVM also allows flexible parameters to identify optimum outcomes for each genome. GI-SVM method is a more sensible and quick approach for researchers in the first steps of detection of GEIs in new sequenced genomes (Lu and Leong 2016a). HGT may account for 1.6%–32.6% of a bacterial genome (Boto 2010). This percentage value suggests that variation throughout the bacterial genome and clades can be featured in GEIs. Most importantly, prediction of GEIs in bacterial species also leads to vaccine and antibiotics development (Coates and Hu 2007) as well as in cancer therapy (Coates and Hu 2007; Bar et al. 2008). For instance, significantly PAIs carry several pathogenicity and virulence genes that help researchers to identify possible vaccine candidates (Moriel et al. 2010; Assaf et al. 2021). Program Shutter Island applies powerful deep neural networks for the identification of GEIs. Shutter Island exhibits a convolutional neural network on visual depictions of the genome for GEIs identification and also exhibits this program based on deep neural networks (Assaf et al. 2021). 

An artificial intelligence-based pipeline was developed by Mbulayi Onesime et al., in 2021 for GEIs identification using the chi-square test and random forest algorithm. They used seven different types of sequence features such as the composition of k-spaced nucleic acid pairs, dinucleotide composition, nucleic acid composition, pseudo dinucleotide composition, electron–ion-interaction pseudopotentials of trinucleotide, reverse compliment k-mer, and trinucleotide composition. All used features were filtered by the chi-square test and then the random forest decision tree algorithm was used for GEI prediction. Their experimental outcome demonstrated that the considered method of the pipeline has an improved performance than older methodologies (Onesime et al. 2021). 

## 3.5 Conclusions

The data generated through the high throughput sequencing methods have been remarkably beneficial for biological significance. The comparative genomics study using this data can help us in understanding the molecular machinery of microorganisms. However, this data needs to be efficiently analyzed. Also, phylogenetic and pan-genomics analyses normally highlight the use of conserved regions for several purposes, while the genome plasticity is normally disregarded, even with its profound impact on bacterial adaptation to hosts/environments and bacterial evolution. Here, we discussed the main features of GEIs, their HGT events, the software normally used, some studies in CMNR group, and mostly important, new approaches in Artificial Intelligence that hold the potential for overcoming outdated methods. 

## References



Bertelli C, Gray KL, Woods N, Lim AC, Tilley KE, Winsor GL et al (2022) Enabling genomic island prediction and comparison in multiple genomes to investigate bacterial evolution and outbreaks. Microbial Genom 8(5):000818. [cited 2022 Aug 15]. Available from: https://www. microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000818 





Coates ARM, Hu Y (2007) Novel approaches to developing new antibiotics for bacterial infections. Br J Pharmacol 152(8):1147–1154. [cited 2022 Jun 29]. Available from: https://onlinelibrary. wiley.com/doi/full/10.1038/sj.bjp.0707432 





Gogarten JP, Townsend JP (2005) Horizontal gene transfer, genome innovation and evolution. Nat Rev Microbiol 3(9):679–687. [cited 2022 Jun 14]. Available from: https://www.nature.com/ articles/nrmicro1204 





de Jong NWM, van Kessel KPM, van Strijp JAG (2019) Immune Evasion by Staphylococcus aureus. Microbiol Spectr 7(2) [cited 2022 Jun 15]. Available from: https://pubmed.ncbi.nlm.nih. gov/30927347/ 





Lu B, Leong HW (2016a) GI-SVM: a sensitive method for predicting genomic islands based on unannotated sequence of a single genome. J Bioinform Comput Biol 14(1). https://doi.org/10. 1142/S0219720016400035 





Ogier JC, Calteau A, Forst S, Goodrich-Blair H, Roche D, Rouy Z et al (2010) Units of plasticity in bacterial genomes: new insight from the comparative genomics of two bacteria interacting with invertebrates, Photorhabdus and Xenorhabdus. BMC Genomics 11(1):1–21. [cited 2022 Aug 15]. Available from: https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164- 11-568 





Sanger F, Air GM, Barrell BG, Brown NL, Coulson AR, Fiddes JC et al (1977a) Nucleotide sequence of bacteriophage φX174 DNA. Nature 265:5596. [cited 2022 May 5]. Available from: https://www.nature.com/articles/265687a0 





Summer EJ, Liu M, Gill JJ, Grant M, Chan-Cortes TN, Ferguson L et al (2011) Genomic and functional analyses of Rhodococcus equi phages ReqiPepy6, ReqiPoco6, ReqiPine5, and ReqiDocB7. Appl Environ Microbiol 77(2):669–683. [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/full/10.1128/AEM.01952-10 





Vázquez-Boland JA, Giguère S, Hapeshi A, MacArthur I, Anastasi E, Valero-Rello A (2013) Rhodococcus equi: the many facets of a pathogenic actinomycete. Vet Microbiol 167(1–2): 9–33. [cited 2022 Jun 28]. Available from: https://pubmed.ncbi.nlm.nih.gov/23993705/ 





Rep 41(9):5883–5889. [cited 2022 Jul 29]. Available from: https://pubmed.ncbi.nlm.nih.gov/2 5108673/ 





Akashi H (1994) Synonymous codon usage in Drosophila melanogaster: natural selection and translational accuracy. Genetics 136(3):927–935. [cited 2022 Jun 14]. Available from: https:// pubmed.ncbi.nlm.nih.gov/8005445/ 





Boto L (2010) Horizontal gene transfer in evolution: facts and challenges. Proc Royal Soc B Biol Sci 277(1683):819–827. [cited 2022 Aug 15]. Available from: https://royalsocietypublishing. org/doi/10.1098/rspb.2009.1679 





Colonna Romano N, Fanti L (2022) Transposable elements: major players in shaping genomic and evolutionary patterns. Cells 11(6):1048. [cited 2022 Jun 17]. Available from: /pmc/articles/ PMC8947103/ 





Gonzalez DL, Giannerini S, Rosa R (2019) On the origin of degeneracy in the genetic code. Interface Focus 9(6):20190038. [cited 2022 Jun 15]. Available from: https:// royalsocietypublishing.org/doi/10.1098/rsfs.2019.0038 





Kalt F, Schulthess B, Sidler F, Herren S, Fucentese SF, Zingg PO et al (2018) Corynebacterium species rarely cause orthopedic infections. J Clin Microbiol 56(12) [cited 2022 Jun 15]. Available from: https://journals.asm.org/doi/full/10.1128/JCM.01200-18 





Lu B, Leong HW (2016b) Computational methods for predicting genomic islands in microbial genomes. Comput Struct Biotechnol J 14:200–206 





Onesime M, Yang Z, Dai Q (2021) Genomic island prediction via chi-square test and random forest algorithm. Comput Math Methods Med 2021:9969751 





Sanger F, Nicklen S, Coulson AR (1977b) DNA sequencing with chain-terminating inhibitors. Proc Natl Acad Sci U S A 74(12):5463–5467. [cited 2022 May 5]. Available from: https://www. pnas.org 





Swithers KS, Soucy SM, Gogarten JP (2012) The role of reticulate evolution in creating innovation and complexity. Int J Evol Biol 2012:1–10 





Vázquez-Boland JA, Meijer WG (2019) The pathogenic actinobacterium Rhodococcus equi: what’s in a name? Mol Microbiol 112(1):1–15. [cited 2022 Jun 28]. Available from: https:// onlinelibrary.wiley.com/doi/full/10.1111/mmi.14267 





Xu S, Li Z, Huang Y, Han L, Che Y, Hou X et al (2021) Whole genome sequencing reveals the genomic diversity, taxonomic classification, and evolutionary relationships of the genus Nocardia. PLoS Negl Trop Dis. [cited 2022 Jun 16]. Available from: https://journals.plos.org/ plosntds/article?id=10.1371/journal.pntd.0009665 





Alikhan NF, Petty NK, Ben Zakour NL, Beatson SA (2011) BLAST Ring Image Generator (BRIG): simple prokaryote genome comparisons. BMC Genomics 12:402. [cited 2018 Nov 8]. Available from: http://www.ncbi.nlm.nih.gov/pubmed/21824423 





de Brito DM, Maracaja-Coutinho V, de Farias ST, Batista L, v., do Rego TG. (2016) A novel method to predict genomic islands based on mean shift clustering algorithm. PLoS One 11(1): e0146352. [cited 2022 Aug 15]. Available from: https://journals.plos.org/plosone/article? id=10.1371/journal.pone.0146352 





Conville PS, Witebsky FG (2010) The complexity of nocardia taxonomy: implications for the clinical microbiology laboratory. Clin Microbiol Newslett 32(16):119–125 





Griffith F (1928) The significance of pneumococcal types. J Hyg (Lond) 27(2):113–159. [cited 2022 Jul 29]. Available from: https://pubmed.ncbi.nlm.nih.gov/20474956/ 





Karlin S, Mrázek J, Campbell AM (1998) Codon usages in different gene classes of the Escherichia coli genome. Mol Microbiol 29(6):1341–1355. [cited 2022 Aug 11]. Available from: https:// pubmed.ncbi.nlm.nih.gov/9781873/ 





Lu SH, Qian ZW, Mou PP, Xie L (2020) Clinical Nocardia species: Identification, clinical characteristics, and antimicrobial susceptibility in Shandong, China. Bosnian J Basic Med Sci 20(4):531–538. [cited 2022 Jun 16]. Available from: https://www.bjbms.org/ojs/index.php/ bjbms/article/view/4764 





Payne SM, Mey AR, Wyckoff EE (2016) Vibrio iron transport: evolutionary adaptation to life in multiple environments. Microbiol Mol Biol Rev 80(1):69–90. [cited 2022 Jun 15]. Available from: https://journals.asm.org/doi/full/10.1128/MMBR.00046-15 





Sanger F, Thompson EO (1953) The amino-acid sequence in the glycyl chain of insulin. 2. The investigation of peptides from enzymic hydrolysates. Biochem J 53(3):366–374. [cited 2022 May 5]. Available from: https://portlandpress.com/biochemj/article/53/3/366/47647/ The-amino-acid-sequence-in-the-glycyl-chain-of 





Takai S, Sawada N, Nakayama Y, Ishizuka S, Nakagawa R, Kawashima G et al (2020) Reinvestigation of the virulence of Rhodococcus equi isolates from patients with and without AIDS. Lett Appl Microbiol 71(6):679–683. [cited 2022 Jun 28]. Available from: https://onlinelibrary.wiley. com/doi/full/10.1111/lam.13386 





Veerachamy S, Yarlagadda T, Manivasagam G, Yarlagadda PK (2014) Bacterial adherence and biofilm formation on medical implants: a review. Proc Inst Mech Eng H 228(10):1083–1099. [cited 2022 Jun 15]. Available from: https://journals.sagepub.com/doi/10.1177/0954411914 556137 





Yang R, Liu G, Chen T, Li S, An L, Zhang G et al (2019) Characterization of the genome of a Nocardia strain isolated from soils in the Qinghai-Tibetan Plateau that specifically degrades crude oil and of this biodegradation. Genomics 111(3):356–366 





Almpanis A, Swain M, Gatherer D, McEwan N (2018) Correlation between bacterial G+C content, genome size and the G+C content of associated plasmids and bacteriophages. Microb Genom 4(4):e000168. [cited 2022 Jun 14]. Available from: https://www.microbiologyresearch.org/ content/journal/mgen/10.1099/mgen.0.000168 





vanden Broeck D, Horvath C, de Wolf MJS (2007) Vibrio cholerae: cholera toxin. Int J Biochem Cell Biol 39(10):1771–1775. [cited 2022 Jun 15]. Available from: https://pubmed.ncbi.nlm.nih. gov/17716938/ 





Coulson GB, Agarwal S, Hondalus MK (2010) Characterization of the role of the pathogenicity island and vapG in the virulence of the intracellular actinomycete pathogen Rhodococcus equi. Infect Immun 78(8):3323–3334. [cited 2022 Jun 28]. Available from: https://pubmed.ncbi.nlm. nih.gov/20439471/ 





Grosjean H, Fiers W (1982) Preferential codon usage in prokaryotic genes: the optimal codonanticodon interaction energy and the selective codon usage in efficiently expressed genes. Gene 18(3):199–209 





Komaki H, Ichikawa N, Hosoyama A, Takahashi-Nakaguchi A, Matsuzawa T, Kichiro S et al (2014) Genome based analysis of type-I polyketide synthase and nonribosomal peptide synthetase gene clusters in seven strains of five representative Nocardia species. BMC Genomics 15(1):1–11. [cited 2022 Jun 28]. Available from: https://bmcgenomics.biomedcentral.com/ articles/10.1186/1471-2164-15-323 





Lysnyansky I, Calcutt MJ, Ben-Barak I, Ron Y, Levisohn S, Methé BA et al (2009) Molecular characterization of newly identified IS3, IS4 and IS30 insertion sequence-like elements in Mycoplasma bovis and their possible roles in genome plasticity. FEMS Microbiol Lett 294(2):172–182. [cited 2022 Jun 15]. Available from: https://academic.oup.com/femsle/ article/294/2/172/512759 





Penn K, Jenkins C, Nett M, Udwary DW, Gontang EA, McGlinchey RP et al (2009) Genomic islands link secondary metabolism to functional adaptation in marine Actinobacteria. ISME J 3(10):1193–1203. [cited 2022 Jun 15]. Available from: https://www.nature.com/articles/ ismej200958 





Schlüter A, Szczepanowski R, Pühler A, Top EM (2007) Genomics of IncP-1 antibiotic resistance plasmids isolated from wastewater treatment plants provides evidence for a widely accessible drug resistance gene pool. FEMS Microbiol Rev 31(4):449–477. [cited 2022 Jun 15]. Available from: https://academic.oup.com/femsre/article/31/4/449/2399130 





Tatusov RL, Koonin EV, Lipman DJ (1997) A genomic perspective on protein families. Science 278(5338):631–637. [cited 2022 Jun 8]. Available from: https://pubmed.ncbi.nlm.nih.gov/93 81173/ 





Vendrell-Mir P, Barteri F, Merenciano M, González J, Casacuberta JM, Castanera R (2019) A benchmark of transposon insertion detection tools using real data. Mob DNA 10(1):1–19. [cited 2022 Jun 15]. Available from: https://mobilednajournal.biomedcentral.com/articles/10.1186/ s13100-019-0197-9 





Yasuike M, Nishiki I, Iwasaki Y, Nakamura Y, Fujiwara A, Shimahara Y et al (2017) Analysis of the complete genome sequence of Nocardia seriolae UTF1, the causative agent of fish nocardiosis: the first reference genome sequence of the fish pathogenic Nocardia species. PLoS One 12(3):e0173198. [cited 2022 Jun 28]. Available from: https://journals.plos.org/ plosone/article?id=10.1371/journal.pone.0173198 





Anastasi E, MacArthur I, Scortti M, Alvarez S, Giguére S, Vázquez-Boland JA (2016) Pangenome and phylogenomic analysis of the pathogenic actinobacterium rhodococcus equi. Genome Biol Evol 8(10):3140–3148. [cited 2022 Jun 28]. Available from: https://academic.oup.com/gbe/ article/8/10/3140/2939557 





Bulmer M (1988) Are codon usage patterns in unicellular organisms determined by selectionmutation balance? J Evol Biol 1(1):15–26. [cited 2022 Jun 14]. Available from: https:// onlinelibrary.wiley.com/doi/full/10.1046/j.1420-9101.1988.1010015.x 





Coulson GB, Miranda-CasoLuengo AA, Miranda-CasoLuengo R, Wang X, Oliver J, Willingham-Lane JM et al (2015) Transcriptome reprogramming by plasmid-encoded transcriptional regulators is required for host niche adaption of a macrophage pathogen. Infect Immunity 83(8):3137–3145. [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/ full/10.1128/IAI.00230-15 





Hacker J, Bender L, Ott M, Wingender J, Lund B, Marre R et al (1990) Deletions of chromosomal regions coding for fimbriae and hemolysins occur in vitro and in vivo in various extra intestinal Escherichia coli isolates. Microb Pathog 8(3):213–225 





Koonin E, Makarova KS, Wolf YI (2021) Evolution of microbial genomics: conceptual shifts over a quarter century. Trends Microbiol 29(7):582–592. [cited 2022 Jun 8]. Available from: http:// www.cell.com/article/S0966842X2100007X/fulltext 





Mahillon J, Chandler M (1998) Insertion sequences. Microbiol Mol Biol Rev 62(3):725–774. [cited 2022 Jun 14]. Available from: https://journals.asm.org/doi/full/10.1128/MMBR.62.3.725-774.1 998 





Petrovski S, Seviour RJ, Tillett D (2013) Genome sequence and characterization of a Rhodococcus equi phage REQ1. Virus Genes 46:588–590. [cited 2022 Jun 28]. Available from: https://link. springer.com/article/10.1007/s11262-013-0887-1 





Schmidt H, Hensel M (2004) Pathogenicity islands in bacterial pathogenesis. Clin Microbiol Rev 17(1):14–56. [cited 2022 Jun 16]. Available from: https://pubmed.ncbi.nlm.nih.gov/14726454/ 





Tauch A, Fernández-Natal I, Soriano F (2016) A microbiological and clinical review on Corynebacterium kroppenstedtii. Int J Infect Dis 48:33–39. [cited 2022 Jun 15]. Available from: https:// pubmed.ncbi.nlm.nih.gov/27155209/ 





Vernikos GS, Parkhill J (2006) Interpolated variable order motifs for identification of horizontally acquired DNA: revisiting the Salmonella pathogenicity islands. Bioinformatics 22(18): 2196–2203. [cited 2022 Aug 15]. Available from: https://academic.oup.com/bioinformatics/ article/22/18/2196/316809 





Ying J, Ye J, Xu T, Wang Q, Bao Q, Li A (2019) Comparative genomic analysis of Rhodococcus equi: an insight into genomic diversity and genome evolution. Int J Genomics 2019:8987436 





Arnvig KB, Young DB (2012) Non-coding RNA and its potential role in Mycobacterium tuberculosis pathogenesis. RNA Biol 9(4):427F. [cited 2022 Jul 29]. Available from: /pmc/articles/ PMC3384566/ 





Byrne GA, Russell DA, Chen X, Meijer WG (2007) Transcriptional regulation of the virR operon of the intracellular pathogen Rhodococcus equi. J Bacteriol 189(14):5082–5089. [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/full/10.1128/JB.00431-07 





Craig Venter J, Adams MD, Myers EW, Li PW, Mural RJ, Sutton GG et al (1979) The sequence of the human genome. Science 291(5507):1304–1351. [cited 2022 May 5]. Available from: https:// www.science.org/doi/abs/10.1126/science.1058040 





Hacker J, Carniel E (2001) Ecological fitness, genomic islands and bacterial pathogenicity. A Darwinian view of the evolution of microbes. EMBO Rep 2(5):376–381. [cited 2022 Jul 29]. Available from: https://pubmed.ncbi.nlm.nih.gov/11375927/ 





Kresge N, Simoni RD, Hill RL (2005) Chargaff’s rules: the work of Erwin Chargaff. J Biol Chem 280(24):172–174. [cited 2022 Jun 14]. Available from: http://www.jbc.org/article/S002192 5820615228/fulltext 





Mangutov EO, Kharseeva GG, Alutina EL (2021) Corynebacterium spp. - problematic pathogens of the human respiratory tract (review of literature). Klin Lab Diagn 66(8):502–508. [cited 2022 Jun 15]. Available from: https://pubmed.ncbi.nlm.nih.gov/34388322/ 





Pierneef R, Cronje L, Bezuidt O, Reva ON (2015) Pre_GI: a global map of ontological links between horizontally transferred genomic islands in bacterial and archaeal genomes. Database 2015:58. [cited 2022 Aug 15]. Available from: https://academic.oup.com/database/article/ doi/10.1093/database/bav058/2433191 





Segata N (2018) On the road to strain-resolved comparative metagenomics. mSystems 3(2):e00190. [cited 2022 Jun 14]. Available from: https://journals.asm.org/doi/full/10.1128/mSystems.001 90-17 





Tettelin H, Masignani V, Cieslewicz MJ, Donati C, Medini D, Ward NL et al (2005) Genome analysis of multiple pathogenic isolates of Streptococcus agalactiae: implications for the microbial “pan-genome”. Proc Natl Acad Sci U S A 102(39):13950–13955. [cited 2022 Jun 8]. Available from: https://www.pnas.org/doi/10.1073/pnas.0506758102 





Waack S, Keller O, Asper R, Brodag T, Damm C, Fricke WF et al (2006) Score-based prediction of genomic islands in prokaryotic genomes using hidden Markov models. BMC Bioinform 7(1): 1–12. [cited 2022 Aug 15]. Available from: https://bmcbioinformatics.biomedcentral.com/ articles/10.1186/1471-2105-7-142 





Yoon SH, Park YK, Kim JF (2015) PAIDB v2.0: exploration and analysis of pathogenicity and resistance islands. Nucleic Acids Res 43(D1):D624–D630. [cited 2022 Aug 15]. Available from: https://academic.oup.com/nar/article/43/D1/D624/2439790 





Arvey AJ, Azad RK, Raval A, Lawrence JG (2009) Detection of genomic islands via segmental genome heterogeneity. Nucleic Acids Res 37(16):5255–5266. [cited 2022 Aug 15]. Available from: https://academic.oup.com/nar/article/37/16/5255/2410410 





Callens M, Scornavacca C, Bedhomme S (2021) Evolutionary responses to codon usage of horizontally transferred genes in pseudomonas aeruginosa: gene retention, amelioration and compensatory evolution. Microb Genom 7(6):000587. [cited 2022 Aug 15]. Available from: https://www.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000587 





Deng W, Burland V, Plunkett G, Boutin A, Mayhew GF, Liss P et al (2002) Genome sequence of Yersinia pestis KIM. J Bacteriol 184(16):4601–4611. [cited 2022 Jun 14]. Available from: https://journals.asm.org/doi/full/10.1128/JB.184.16.4601-4611.2002 





Hadjilouka A, Paramithiotis S, Drosinos EH (2018) Genetic analysis of the listeria pathogenicity island 1 of listeria monocytogenes 1/2a and 4b isolates. Curr Microbiol 75(7):857–865. [cited 2022 Jun 16];75. Available from: https://link.springer.com/article/10.1007/s00284-018-1458-4 





Krizova L, Nemec A (2010) A 63 kb genomic resistance island found in a multidrug-resistant Acinetobacter baumannii isolate of European clone I from 1977. J Antimicrob Chemother 65(9): 1915–1918. [cited 2022 Jul 29]. Available from: https://pubmed.ncbi.nlm.nih.gov/20558468/ 





Männle D, McKinnie SMK, Mantri SS, Steinke K, Lu Z, Moore BS et al (2020) Comparative genomics and metabolomics in the genus Nocardia. mSystems 5(3) [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/full/10.1128/mSystems.00125-20 





Preston A, Parkhill J, Maskell DJ (2004) The bordetellae: lessons from genomics. Nat Rev Microbiol 2(5):379–390. [cited 2022 Jun 15]. Available from: https://www.nature.com/ articles/nrmicro886 





Setubal JC, Almeida NF, Wattam AR (2018) Comparative genomics for prokaryotes. Methods Mol Biol 1704:55–78. [cited 2022 Jun 8]; Available from: https://pubmed.ncbi.nlm.nih.gov/292 77863/ 





Teuber M, Meile L, Schwarz F (1999) Acquired antibiotic resistance in lactic acid bacteria from food. In: Lactic acid bacteria: genetics, metabolism and applications. CRC Press, Boca Raton, pp 115–137. [cited 2022 Jun 17]. Available from: https://link.springer.com/chapter/10.1007/ 978-94-017-2027-4_5 





Wan Y, Wick RR, Zobel J, Ingle DJ, Inouye M, Holt KE (2020) GeneMates: an R package for detecting horizontal gene co-transfer between bacteria using gene-gene associations controlled for population structure. BMC Genom 21(1):658. [cited 2022 Jul 22]. Available from: https:// bmcgenomics.biomedcentral.com/articles/10.1186/s12864-020-07019-6 





Yoon SH, Park YK, Lee S, Choi D, Oh TK, Hur CG et al (2007) Towards pathogenomics: a web-based resource for pathogenicity islands. Nucleic Acids Res 35(suppl_1):D395–D400. [cited 2022 Aug 15]. Available from: https://academic.oup.com/nar/article/35/suppl_1/D3 95/1093086 





Assaf R, Xia F, Stevens R (2021) Identifying genomic islands with deep neural networks. BMC Genom 22(3):1–11. [cited 2022 Jun 16]. Available from: https://bmcgenomics.biomedcentral. com/articles/10.1186/s12864-021-07575-5 





Chaban B, Hughes HV, Beeby M (2015) The flagellum in bacterial pathogens: for motility and a whole lot more. Semin Cell Dev Biol 46:91–103 





Dhillon BK, Laird MR, Shay JA, Winsor GL, Lo R, Nizam F et al (2015) IslandViewer 3: more flexible, interactive genomic island discovery, visualization and analysis. Nucleic Acids Res 43 (W1):W104–W108. [cited 2022 Aug 15]. Available from: https://academic.oup.com/nar/ article/43/W1/W104/2467901 





Hasan MS, Liu Q, Wang H, Fazekas J, Chen B, Che D (2012) GIST: genomic island suite of tools for predicting genomic islands in genomic sequences. Bioinformation 8(4):203. [cited 2022 Aug 15]. Available from: /pmc/articles/PMC3302003/ 





Langille MGI, Hsiao WWL, Brinkman FSL (2008) Evaluation of genomic island predictors using a comparative genomics approach. BMC Bioinform 9(1):1–10. [cited 2022 Jun 14]. Available from: https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105- 9-329 





Marraffini LA, Sontheimer EJ (2010) CRISPR interference: RNA-directed adaptive immunity in bacteria and archaea. Nat Rev Genet 11(3):181. [cited 2022 Jul 29]. Available from: /pmc/ articles/PMC2928866/ 





Pundhir S, Vijayvargiya H, Kumar A (2008) PredictBias: a server for the identification of genomic and pathogenicity islands in prokaryotes. Undefined. 





Sharp PM, Matassi G (1994) Codon usage and genome evolution. Curr Opin Genet Dev 4(6): 851–860 





Tortoli E (2014) Microbiological features and clinical relevance of new species of the genus Mycobacterium. Clin Microbiol Rev 27(4):727–752. [cited 2022 Jun 29]. Available from: https://journals.asm.org/doi/full/10.1128/CMR.00035-14 





Wang H, Zhu Y, Cui Q, Wu W, Li G, Chen D et al (2022) Epidemiology and antimicrobial resistance profiles of the Nocardia species in China, 2009 to 2021. Microbiol Spectrum 10(2): e0156021. [cited 2022 Jun 16]. Available from: https://journals.asm.org/doi/full/10.1128/ spectrum.01560-21 





Yu G, Fu X, Jin K, Zhang L, Wu W, Cui Z et al (2011) Integrative analysis of transcriptome and genome indicates two potential genomic islands are associated with pathogenesis of Mycobacterium tuberculosis. Gene 489(1):21–29 





Azevedo V, Abreu V, Almeida S, Santos A, Soares S, Ali A et al (2011) Whole genome annotation: in silico analysis. Bioinformatics: Trends Methodol. [cited 2022 Jun 14]. Available from: undefined/state.item.id 





Chan AP, Choi Y, Clarke TH, Brinkac LM, White RC, Jacobs MR et al (2020) AbGRI4, a novel antibiotic resistance island in multiply antibiotic-resistant Acinetobacter baumannii clinical isolates. J Antimicrob Chemoth 75(10):2760–2768. [cited 2022 Jun 15]. Available from: https://academic.oup.com/jac/article/75/10/2760/5873331 





Dobrindt U, Janke B, Piechaczek K, Nagy G, Ziebuhr W, Fischer G et al (2000) Toxin genes on pathogenicity islands: impact for microbial evolution. Int J Med Microbiol 290(4–5):307–311. [cited 2022 Jul 29]. Available from: https://pubmed.ncbi.nlm.nih.gov/11111903/ 





Hickman AB, Dyda F (2015) Mechanisms of DNA transposition. Microbiol Spectr 3(2):MDNA3. [cited 2022 Jun 17]. Available from: /pmc/articles/PMC7422641/ 





Langille MGI, Hsiao WWL, Brinkman FSL (2010) Detecting genomic islands using bioinformatics approaches. Nat Rev Microbiol 8(5):373–382. [cited 2022 Jun 14]. Available from: https:// www.nature.com/articles/nrmicro2350 





Martínez-Barricarte R (2020) Isolated Nocardiosis, an Unrecognized Primary Immunodeficiency? Fronti Immunol 11:2393 





Rajan I, Aravamuthan S, Mande SS (2007) Identification of compositionally distinct regions in genomes using the centroid method. Bioinformatics 23(20):2672–2677. [cited 2022 Aug 15]. Available from: https://academic.oup.com/bioinformatics/article/23/20/2672/230015 





Shrivastava S, Siva Kumar Reddy CV, Mande SS (2010) INDeGenIUS, a new method for highthroughput identification of specialized functional islands in completely sequenced organisms. J Biosci 35(3):351–364. [cited 2022 Aug 15]. Available from: https://link.springer.com/ article/10.1007/s12038-010-0040-4 





Toyokawa M, Ohana N, Ueda A, Imai M, Tanno D, Honda M et al (2021) Identification and antimicrobial susceptibility profiles of Nocardia species clinically isolated in Japan. Sci Rep 11: 1–11. [cited 2022 Jun 16]. Available from: https://www.nature.com/articles/s41598-021- 95870-2 





Washburne AD, Morton JT, Sanders J, McDonald D, Zhu Q, Oliverio AM et al (2018) Methods for phylogenetic analysis of microbiome data. Nat Microbiol 3:652. [cited 2022 Jun 14]. Available from: https://www.nature.com/articles/s41564-018-0156-0 





Zhou H, Beltrán JF, Brito IL (2021) Functions predict horizontal gene transfer and the emergence of antibiotic resistance. Sci Adv 7(43):eabj5056. [cited 2022 Jun 14]. Available from: https://www. science.org/doi/10.1126/sciadv.abj5056 





Baer R, Bankier AT, Biggin MD, Deininger PL, Farrell PJ, Gibson TJ et al (1984) DNA sequence and expression of the B95-8 Epstein—Barr virus genome. Nature 310(5974):207–211. [cited 2022 May 5]. Available from: https://www.nature.com/articles/310207a0 





Chatterjee R, Chaudhuri K, Chaudhuri P (2008) On detection and assessment of statistical significance of Genomic Islands. BMC Genom 9(1):1–11. [cited 2022 Aug 15]. Available from: https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-9-150 





Dorella FA, Pacheco LGC, Oliveira SC, Miyoshi A, Azevedo V (2006) Corynebacterium pseudotuberculosis: microbiology, biochemical properties, pathogenesis and molecular studies of virulence. Veter Res 37(2):201–218 





Hoen DR, Hickey G, Bourque G, Casacuberta J, Cordaux R, Feschotte C et al (2015) A call for benchmarking transposable element annotation methods. Mob DNA 6(1):1–9. [cited 2022 Jun 15]. Available from: https://mobilednajournal.biomedcentral.com/articles/10.1186/s13100-015- 0044-6 





Lawrence JG, Roth JR (2014) Genomic flux: genome evolution by gene loss and acquisition. In: Organization of the prokaryotic genome. Wiley, Hoboken, pp 263–289. [cited 2022 Jun 14]. Available from: https://onlinelibrary.wiley.com/doi/full/10.1128/9781555818180.ch15 





Medini D, Donati C, Tettelin H, Masignani V, Rappuoli R (2005) The microbial pan-genome. Curr Opin Genet Dev 15(6):589–594. [cited 2022 Jul 22]. Available from: https://pubmed.ncbi.nlm. nih.gov/16185861/ 





Rastogi N, Legrand E, Sola C (2001) The mycobacteria: an introduction to nomenclature and pathogenesis. Rev Sci Tech 20(1):21–54. [cited 2022 Jun 29]. Available from: https://pubmed. ncbi.nlm.nih.gov/11288513/ 





Siguier P, Gourbeyre E, Chandler M (2014) Bacterial insertion sequences: their genomic impact and diversity. FEMS Microbiol Rev 38(5):865–891. [cited 2022 Jun 14]. Available from: https://academic.oup.com/femsre/article/38/5/865/496682 





Treangen TJ, Rocha EPC (2011) Horizontal transfer, not duplication, drives the expansion of protein families in prokaryotes. PLoS Genet 7(1):e1001284. [cited 2022 Jun 14]. Available from: https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.10012 84 





Watson JD, Crick FHC (1953) Molecular structure of nucleic acids: a structure for deoxyribose nucleic acid. Nature 171:4356. [cited 2022 May 5]. Available from: https://www.nature.com/ articles/171737a0 





Zhoua Z, Danga Y, Zhou M, Li L, Yu CH, Fu J et al (2016) Codon usage is an important determinant of gene expression levels largely through its effects on transcription. Proc Natl Acad Sci U S A 113(41):E6117–E6125. [cited 2022 Jun 15]. Available from: www.pnas.org/ cgi/doi/10.1073/pnas.1606724113 





Bansal-Mutalik R, Nikaido H (2011) Quantitative lipid composition of cell envelopes of Corynebacterium glutamicum elucidated through reverse micelle extraction. Proc Natl Acad Sci U S A 108(37):15360–15365. [cited 2022 Jul 26]. Available from: https://www.pnas.org/doi/ abs/10.1073/pnas.1112572108 





Che D, Hasan MS, Wang H, Fazekas J, Huang J, Liu Q (2011) EGID: an ensemble algorithm for improved genomic island detection in genomic sequences. Bioinformation 7(6):311–314. [cited 2022 Aug 15]. Available from: https://pubmed.ncbi.nlm.nih.gov/22355228/ 





Emmerson A, Hawkey P, Gillespie S (1987) Principles and practice of clinical bacteriology. J Clin Pathol 40(11):1390–1391. [cited 2022 Jun 15]. Available from: https://books.google.com/ books/about/Principles_and_Practice_of_Clinical_Bact.html?hl=pt-BR&id=0RN2 QgAACAAJ 





Hsiao W, Wan I, Jones SJ, Brinkman FSL (2003) IslandPath: aiding detection of genomic islands in prokaryotes. Bioinformatics 19(3):418–420. [cited 2022 Aug 15]. Available from: https:// academic.oup.com/bioinformatics/article/19/3/418/258350 





Lee CC, Chen YPP, Yao TJ, Ma CY, Lo WC, Lyu PC et al (2013) GI-POP: a combinational annotation and genomic island prediction pipeline for ongoing microbial genome projects. Gene 518(1):114–123 





Mehta HH, Shamoo Y (2020) Pathogenic Nocardia: a diverse genus of emerging pathogens or just poorly recognized? PLoS Pathogens 16(3):e1008280. [cited 2022 Jun 16]. Available from: https://journals.plos.org/plospathogens/article?id=10.1371/journal.ppat.1008280 





Reichenberger ER, Rosen G, Hershberg U, Hershberg R (2015) Prokaryotic nucleotide composition is shaped by both phylogeny and the environment. Genome Biol Evol 7(5):1380–1389. [cited 2022 Jun 14]. Available from: https://academic.oup.com/gbe/article/7/5/1380/603567 





da Silva Filho AC, Raittz RT, Guizelini D, de Pierri CR, Augusto DW, dos Santos-Weiss ICR et al (2018) Comparative analysis of genomic island prediction tools. Front Genet 9:619 





Tu Q, Ding D (2003) Detecting pathogenicity islands and anomalous gene clusters by iterative discriminant analysis. FEMS Microbiol Lett 221(2):269–275. [cited 2022 Aug 15]. Available from: https://academic.oup.com/femsle/article/221/2/269/630498 





Wei W, Gao F, Du MZ, Hua HL, Wang J, Guo FB (2017) Zisland Explorer: detect genomic islands by combining homogeneity and heterogeneity properties. Brief Bioinform 18(3):357–366. [cited 2022 Aug 15. Available from: https://academic.oup.com/bib/article/18/3/357/2562748 





Zhu Q, Kosoy M, Dittmar K (2014) HGTector: an automated method facilitating genome-wide discovery of putative horizontal gene transfers. BMC Genomics 15(1):1–18. [cited 2022 Aug 15]. Available from: https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-1 5-717 





Bar H, Yacoby I, Benhar I (2008) Killing cancer cells by targeted drug-carrying phage nanomedicines. BMC Biotechnol 8(1):1–14. [cited 2022 Jun 16]. Available from: https:// bmcbiotechnol.biomedcentral.com/articles/10.1186/1472-6750-8-37 





Che D, Hockenbury C, Marmelstein R, Rasheed K (2010) Classification of genomic islands using decision trees and their ensemble algorithms. BMC Genomics 11(Suppl. 2):1–9. [cited 2022 Aug 15]. Available from: https://bmcgenomics.biomedcentral.com/articles/10.1186/1471-21 64-11-S2-S1 





Forrellad MA, Klepp LI, Gioffré A, García JS, Morbidoni HR, de la Paz Santangelo M et al (2012) Virulence factors of the Mycobacterium tuberculosis complex. Virulence 4(1):3–66. [cited 2022 Jun 16]. Available from: https://www.tandfonline.com/doi/abs/10.4161/viru.22329 





Hudson CM, Lau BY, Williams KP (2015) Islander: a database of precisely mapped genomic islands in tRNA and tmRNA genes. Nucleic Acids Res 43(D1):D48–D53. [cited 2022 Aug 15]. Available from: https://academic.oup.com/nar/article/43/D1/D48/2437357 





Letek M, González P, MacArthur I, Rodríguez H, Freeman TC, Valero-Rello A et al (2010) The genome of a pathogenic rhodococcus: cooptive virulence underpinned by key gene acquisitions. PLoS Genet 6(9):e1001145. [cited 2022 Jun 28]. Available from: https://journals.plos.org/ plosgenetics/article?id=10.1371/journal.pgen.1001145 





Moriel DG, Bertoldi I, Spagnuolo A, Marchi S, Rosini R, Nesta B et al (2010) Identification of protective and broadly conserved vaccine antigens from the genome of extraintestinal pathogenic Escherichia coli. Proc Natl Acad Sci U S A 107(20):9072–9077. [cited 2022 Jun 16]. Available from: www.pnas.org/cgi/doi/10.1073/pnas.0915077107 





Rice PA, Baker TA (2001) Comparative architecture of transposase and integrase complexes. Nat Struct Biol 8(4):302–307. [cited 2022 Jun 14]. Available from: https://www.nature.com/articles/ nsb0401_302 





Soares SC, AbreuViní VAC, Ramos RTJ, Cerdeira L, Silva A, Baumbach J et al (2012) PIPS: pathogenicity island prediction software. PLoS One 7(2):e30848. [cited 2022 Aug 15]. Available from: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0030848 





Tumapa S, Holden MTG, Vesaratchavest M, Wuthiekanun V, Limmathurotsakul D, Chierakul W et al (2008) Burkholderia pseudomallei genome plasticity associated with genomic island variation. BMC Genom 9(1):1–10. [cited 2022 Jul 29]. Available from: https://bmcgenomics. biomedcentral.com/articles/10.1186/1471-2164-9-190 





Welch RA, Burland V, Plunkett G, Redford P, Roesch P, Rasko D et al (2002) Extensive mosaic structure revealed by the complete genome sequence of uropathogenic Escherichia coli. Proc Natl Acad Sci U S A 99(26):17020–17024. [cited 2022 Jun 14]. Available from: https://www. pnas.org/doi/10.1073/pnas.252529799 





Baraúna RA, Ramos RTJ, Veras AAO, Pinheiro KC, Benevides LJ, Viana MVC et al (2017) Assessing the genotypic differences between strains of Corynebacterium pseudotuberculosis biovar equi through Comparative Genomics. PLoS One 12(1):e0170676. [cited 2022 Jun 16]. Available from: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0170676 





Che D, Wang H (2013) GIV: A Tool for Genomic Islands Visualization. Bioinformation 9(17): 879–882. [cited 2022 Aug 15]. Available from: https://pubmed.ncbi.nlm.nih.gov/24250116/ 





Frost LS, Leplae R, Summers AO, Toussaint A (2005) Mobile genetic elements: the agents of open source evolution. Nat Rev Microbiol 3(9):722–732. [cited 2022 Jul 22];3(9). Available from: https://www.nature.com/articles/nrmicro1235 





Huerta-Cepas J, Forslund K, Coelho LP, Szklarczyk D, Jensen LJ, von Mering C et al (2017) Fast genome-wide functional annotation through orthology assignment by eggNOG-Mapper. Mol Biol Evol 34(8):2115–2122. [cited 2022 Jun 8]. Available from: https://pubmed.ncbi.nlm.nih. gov/28460117/ 





Letek M, Ocampo-Sosa AA, Sanders M, Fogarty U, Buckley T, Leadon DP et al (2008) Evolution of the Rhodococcus equi vap pathogenicity island seen through comparison of host-associated vapA and vapB virulence plasmids. J Bacteriol 190(17):5797–5805. [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/full/10.1128/JB.00468-08 





Nelson MG, Linheiro RS, Bergman CM (2017) McClintock: an integrated pipeline for detecting transposable element insertions in whole-genome shotgun sequencing data. G3 7(8): 2763–2778. [cited 2022 Jun 15]. Available from: https://academic.oup.com/g3journal/article/ 7/8/2763/6031520 





Riojas MA, McGough KJ, Rider-Riojas CJ, Rastogi N, Hazbón MH (2018) Phylogenomic analysis of the species of the Mycobacterium tuberculosis complex demonstrates that Mycobacterium africanum, Mycobacterium bovis, Mycobacterium caprae, Mycobacterium microti and Mycobacterium pinnipedii are later heterotypic synonyms of Mycobacterium tuberculosis. Int J Syst Evol Microbiol 68(1):324–332. [cited 2022 Jun 29]. Available from: https://pubmed.ncbi.nlm. nih.gov/29205127/ 





Soares SC, Geyik H, Ramos RTJ, de Sá PHCG, Barbosa EGV, Baumbach J et al (2016) GIPSy: genomic island prediction software. J Biotechnol 20(232):2–11 





Uelze L, Grützke J, Borowiak M, Hammerl JA, Juraschek K, Deneke C et al (2020) Typing methods based on whole genome sequencing data. One Health Outlook 2:1–19. [cited 2022 Jun 16]. Available from: https://onehealthoutlook.biomedcentral.com/articles/10.1186/s42522- 020-0010-1 





Williams AB (2016) Genome instability in bacteria: causes and consequences. In: Genome stability: from virus to human application, vol 1. Academic Press, London, pp 69–85 





Barcellos FG, Menna P, Batista JSDS, Hungria M (2007) Evidence of horizontal transfer of symbiotic genes from a Bradyrhizobium japonicum inoculant strain to indigenous diazotrophs Sinorhizobium (Ensifer) fredii and Bradyrhizobium elkanii in a Brazilian savannah soil. Appl Environ Microbiol 73(8):2635–2643. [cited 2022 Jun 15]. 





Che D, Wang H, Fazekas J, Chen B (2014a) An accurate genomic island prediction method for sequenced bacterial and archaeal genomes. J Proteom Bioinform 7(8):1–8. [cited 2022 Aug 15]. Available from: https://www.longdom.org/open-access/an-accurate-genomic-island-predictionmethod-for-sequenced-bacterialand-archaeal-genomes-33848.html 





Gao F, Zhang CT (2006) GC-Profile: a web-based tool for visualizing and analyzing the variation of GC content in genomic sequences. Nucleic Acids Res 34(suppl_2):W686–W691. [cited 2022 Aug 15]. Available from: https://academic.oup.com/nar/article/34/suppl_2/W686/2505479 





Jain R, Ramineni S, Parekh N (2011) IGIPT - integrated genomic island prediction tool. Bioinformation 7(6):307–310. [cited 2022 Aug 15]. Available from: https://pubmed.ncbi.nlm. nih.gov/22355227/ 





Levy-Frebault V, Portaels F (1992) Proposed minimal standards for the genus Mycobacterium and for description of new slowly growing Mycobacterium species. Int J Syst Bacteriol 42(2): 315–323 





Nichio BTL, Marchaukoski JN, Raittz RT (2017) New tools in orthology analysis: a brief review of promising perspectives. Front Genet 8:165 





Rissman AI, Mau B, Biehl BS, Darling AE, Glasner JD, Perna NT (2009) Reordering contigs of draft genomes using the Mauve Aligner. Bioinformatics 25(16):2071–2073. [cited 2022 Jun 17]. Available from: https://academic.oup.com/bioinformatics/article/25/16/2071/204845 





Soares SC, Silva A, Trost E, Blom J, Ramos R, Carneiro A et al (2013) The pan-genome of the animal pathogen Corynebacterium pseudotuberculosis reveals differences in genome plasticity between the biovar ovis and equi strains. PLoS One 8(1):e53818. [cited 2022 Jun 16]. Available from: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0053818 





Valdezate S, Garrido N, Carrasco G, Villalón P, Medina-Pascual MJ, Saéz-Nieto JA (2015) Resistance gene pool to co-trimoxazole in non-susceptible Nocardia strains. Front Microbiol 6 (APR):376 





Williams D, Fournier GP, Lapierre P, Swithers KS, Green AG, Andam CP et al (2011) A rooted net of life. Biol Direct 6(1):1–20. [cited 2022 Jun 14]. Available from: https://biologydirect. biomedcentral.com/articles/10.1186/1745-6150-6-45 





von Bargen K, Haas A (2009) Molecular and infection biology of the horse pathogen Rhodococcus equi. FEMS Microbiol Rev 33(5):870–891. [cited 2022 Jun 28]. Available from: https:// academic.oup.com/femsre/article/33/5/870/562772 





Che D, Wang H, Fazekas J, Chen B (2014b) An accurate genomic island prediction method for sequenced bacterial and archaeal genomes. J Proteom Bioinform 7(8):214–221. [cited 2022 Jun 29]. Available from: http://www5.esu.edu/cpsc/bioinfo/dgi 





GenBank and WGS Statistics [Internet]. [cited 2022 May 5]. Available from: https://www.ncbi. nlm.nih.gov/genbank/statistics/ 





Jaron KS, Moravec JC, Martínková N (2014) SigHunt: horizontal gene transfer finder optimized for eukaryotic genomes. Bioinformatics 30(8):1081–1086. [cited 2022 Aug 15]. Available from: https://pubmed.ncbi.nlm.nih.gov/24371153/ 





Li J, Tai C, Deng Z, Zhong W, He Y, Ou HY (2018) VRprofile: gene-cluster-detection-based profiling of virulence and antibiotic resistance traits encoded within genome sequences of pathogenic bacteria. Brief Bioinform 19(4):566–574. [cited 2022 Aug 15]. Available from: https://academic.oup.com/bib/article/19/4/566/2888442 





Nirenberg MW (1963) The genetic code: II. Sci Am 208(3):80–95. Available from: http://www. jstor.org/stable/24936501 





Salifu SP, Valero-Rello A, Campbell SA, Inglis NF, Scortti M, Foley S et al (2013) Genome and proteome analysis of phage E3 infecting the soil-borne actinomycete Rhodococcus equi. Environ Microbiol Rep 5(1):170–178. [cited 2022 Jun 28]. Available from: https:// onlinelibrary.wiley.com/doi/full/10.1111/1758-2229.12028 





Sollitto M, Kenny NJ, Greco S, Tucci CF, Calcino AD, Gerdol M (2022) Detecting structural variants and associated gene presence-absence variation phenomena in the genomes of marine organisms. Methods Mol Biol 2498:53–76. [cited 2022 Jul 29]. Available from: https://pubmed. ncbi.nlm.nih.gov/35727540/ 





Valero-Rello A, Hapeshi A, Anastasi E, Alvarez S, Scortti M, Meijer WG et al (2015) An invertronlike linear plasmid mediates intracellular survival and virulence in bovine isolates of Rhodococcus equi. Infect Immunity 83(7):2725–2737. [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/full/10.1128/IAI.00376-15 





Wu R, Kaiser AD (1968) Structure and base sequence in the cohesive ends of bacteriophage lambda DNA. J Mol Biol 35(3):523–537 





Beaman BL (1994) Mechanisms for the virulence of Nocardia. Springer, Dordrecht, pp 561–572. [cited 2022 Jun 16]. Available from: https://link.springer.com/chapter/10.1007/978-94-011-074 6-4_39 





Cho KS, Bang SM, Toh A (2014) Lipids and lipid signaling in drosophila models of neurodegenerative diseases. In: Omega-3 fatty acids in brain and neurological health, vol 1. Academic Press, London, pp 327–336 





Genome List - Genome - NCBI [Internet]. [cited 2022 Jun 14]. Available from: https://www.ncbi. nlm.nih.gov/genome/browse/#!/prokaryotes/ 





Jensen LJ, Julien P, Kuhn M, von Mering C, Muller J, Doerks T et al (2008) eggNOG: automated construction and annotation of orthologous groups of genes. Nucleic Acids Res 36(Database issue):D250. [cited 2022 Jun 8]. Available from: https://pubmed.ncbi.nlm.nih.gov/17942413/ 





Ocampo-Sosa AA, Lewis DA, Navas J, Quigley F, Callejo R, Scortti M et al (2007) Molecular epidemiology of Rhodococcus equi based on traA, vapA, and vapB virulence plasmid markers. J Infect Dis 196(5):763–769. [cited 2022 Jun 28]. Available from: https://pubmed.ncbi.nlm.nih. gov/17674320/ 





Staden R (1979) A strategy of DNA sequencing employing computer programs. Nucleic Acids Res 6(7):2601–2610. [cited 2022 May 5]. Available from: https://academic.oup.com/nar/article/6/ 7/2601/2384187 





Xie J, Zhou F, Xu G, Mai G, Hu J, Wang G et al (2014) Genome-wide screening of pathogenicity islands in Mycobacterium tuberculosis based on the genomic barcode visualization. Mol Biol 





Gillings MR (2014) Integrons: past, present, and future. Microbiol Mol Biol Rev 78(2):257–277. [cited 2022 Jun 28]. Available from: https://journals.asm.org/doi/full/10.1128/MMBR.000 56-13 





Join-Lambert OF, Ouache M, Canioni D, Beretti JL, Blanche S, Berche P et al (2006) Corynebacterium pseudotuberculosis necrotizing lymphadenitis in a twelve-year-old patient. Pediatr Infect Dis J 25(9):848–851. [cited 2022 Aug 11]. Available from: https://pubmed.ncbi.nlm.nih.gov/1 6940849/ 





Ochman H, Lawrence JG, Grolsman EA (2000) Lateral gene transfer and the nature of bacterial innovation. Nature 405(6784):299–304. [cited 2022 Jun 16]. Available from: https://pubmed. ncbi.nlm.nih.gov/10830951/ 





Sulaiman S, Yusoff NS, Mun NS, Makmur H, Firdaus-Raih M. Inference of horizontal gene transfer: gaining insights into evolution via lateral acquisition of genetic material. Encyclopedia of bioinformatics and computational biology: ABC of bioinformatics. 2018, Elsevier, San Diego 1;1–3:953–964. 



# Microbial Genomic Island Discovery: Visualization and Analysis

4 

Ashutosh Kabiraj, Moitri Let, Krishnendu Majhi, Shrabana Sarkar, Bhramar Dutta, Rajendra Kr Roy, Dibyendu Khan, Raju Biswas, Urmi Halder, and Rajib Bandopadhyay 

## Abstract

Genomic Islands (GIs), the integrative part of the prokaryotic genomes which contain many genes with important biological functions. The islands are one of the main quests of today’s concern as they frequently contain genes that are involved in adaptation in diverse environments by providing antimicrobial resistance, virulence, and pathogenicity. The frequency of occurrence of GIs within genome is directly proportional to organism’s genomic plasticity and thus the motion of evolution. GIs of prokaryotes can be visualized by using many computational tools. Various databases are spectacularly involved in the analysis of GIs and predictions of their probable functions. Besides pathogenic and antibiotic resistant islands, thermophilic, psychrophilic, acidophilic, halophilic, metal-tolerating prokaryotes, etc., sufficiently harbour GIs within their genomes to adapt to the hectic environments. GIs acquisition through horizontal gene transfer (HGT) or change in frame of genome is supposed to be a driving force of prokaryotic evolution. 

## Keywords

Genomic Islands · Extremophiles · Databases · Tools · Symbiosis islands 

## 4.1 Microbial Genomic Islands (GIs): An Overview

For colonization perspective and adaptation within an environment, microbes use to reframe their genetic materials to compensate changing environmental scenario. Horizontal Gene Transfer (HGT) mechanisms like conjugation, transduction, and transformation are the crucial factors provide some clues to face the challenge of critical environmental circumstances (Dobrindt et al. 2004; Bellanger et al. 2014; Assaf et al. 2021). Chromosomal segments acquired through HGT carry some important genes that are responsible for providing adaptation potentialities and fitness to the organism, designated as genomic islands (GIs), and so these appears as a critical member of bacterial mobilome. Larger chromosomal segments coupled with a gene pool, sometimes encode their own transposase or integrase of tyrosine recombinase family, flanking with a few repeated structures and association of tRNA genes are typical characteristics of GIs (Dobrindt et al. 2004; Boyd et al. 2009). GIs containing genes are usually novel or their functions are not elucidated so far, but still they have some roles in adaptation in a specific condition. 

It is now well established that GIs are one of the key regulators of bacterial diversity, adaptation within a particular habitat, and of course bacterial evolution (Vale et al. 2022). Its availability varies from species to species, sometimes within the same species inhabiting different habitats. To cope up with ever changing environments, and selection pressure of any contaminants like heavy metals or toxic organic and inorganic materials, antimicrobials, etc., are the crucial factors for acquisition of specific GIs within bacterial chromosomes. According to their functional roles, they could be classified as pathogenic islands, harbouring pathogenic genes; degradation islands, involving in degradation of complex molecules; metabolic islands, related to metabolism of carbon and nitrogenous compounds; and resistant islands, providing resistance capabilities against toxic compounds or antibiotics (van der Meer and Sentchilo 2003; Boyd et al. 2009; Juhas et al. 2009; Langille and Brinkman 2009; Carraro et al. 2014; Bertelli et al. 2019). In the very early 90s, scientists found some pathogenic genes within an E. coli strain which was devoid of other strains of E. coli (Langille and Brinkman 2009). This discovery may be called as a first step for GIs studies. A distinct difference between prokaryotic and eukaryotic organisms in context to their genetic element is predictable in terms of orthologous sequences which are not only found in the same species but also in the distinctly related eukaryotic species. But the scenario is quite different in prokaryotes where they conserve about 50% of their genome as core genome and genes of rest 50% accessory genome might be unique for the specific strain like., hundred of genome sequences of E. coli comprising of more than 45,000 gene families (Rodriguez-Valera et al. 2016). 

For detecting GIs within bacterial genome, there are two basic approaches are available, such as depending on the sequence composition and another is based on comparative genomics. The first technique does not need any reference genome for detection; whereas the latter one needs a reference genome should be selected from the same species. After comparing with the reference genome, this approach finds out GIs from target genome (Langille and Brinkman 2009; Bertelli et al. 2019). There are several programs like SIGI-HMM, PAI-IDA, Centroid, Alien_Hunter, IslandPick, etc., and these programs detect GIs by measuring codon adaptation index, dinucleotide bias, percentage of GC content, etc. (Langille et al. 2008). 

After confirming presence of GIs within genome, it is necessary to visualize them for calculating their positions and numbers. So visualization is an important step for studying about GIs. In this chapter, we have discussed comprehensively about genomic island origin, distribution, types, role in adaptation in different hectic conditions in respect to microbial evolution and related tools and finally mentioned some of the relevant databases for studying GIs. 

## 4.2 Origin and Acquisition of GIs

GIs are often considered as the clusters of functionally related genes that are acquired via HGT and have a great impact on the evolutionary lineage of prokaryotes (Jani and Azad 2021). In the late 1980s, the concept of genomic islands (GIs) was first stricken in the mind of J. Hacker and his colleagues as pathogenicity islands (PAIs), who deeply studied the genetic background of the virulence factor of Escherichia coli (Hacker et al. 1990). Notably, they observed that the PAIs were unstable regions of chromosomes having variable virulence factors associated with different characteristics and phenotypes (Phillips-Houlbracq et al. 2018). These PAIs islands are of 10 kb–100 kb in size and can be up to 500 kb large. GIs of below 10 kb size are known as genomic islets (Juhas et al. 2009). The evolutionary relationships between different GIs are based on specific sequence and functional homologies. The coding region of genomic islands is not only confined to pathogenicity, but it also comprises other traits like symbiosis aromatic compound and sucrose metabolism (Bertelli et al. 2019), siderophore synthesis (Bertelli et al. 2019), and mercury resistance (Norambuena 2020). This could suggest that GIs evolved for selected adaptive and auxiliary functions. 

The acquisition of GIs has happened via horizontal gene transfer. GIs have selfmobility capability; they could excise from their chromosomal region, can transfer itself independently into a different cell, and integrate into the specific target site of host’s chromosome (Juhas et al. 2009). GIs are also acquired into the host cell through a well-defined group of the genetic element known as integrative and conjugative elements. It also includes conjugative transposons with multiple integration sites into the host cell (Burrus and Waldor 2004). A group of GIs does not have any self-mobility capability and they transfer via phage packaging, release, and infection (Juhas et al. 2009). In the detailed mechanism of GIs acquisition, it is sometimes inserted into the 30-end of tRNA genes by a phage-like recombinase, named as integrases which acts site specifically (Juhas et al. 2009). Other than GIs, different tRNA could also be inserted by integrases (Williams 2002). Specifically, GI-encoded integrases are related to the lambda, XerD, or P4 families (Juhas et al. 2009). The integrase coding gene, int may be located at one extreme part of the island and adjacent to the tRNA gene where they are integrated into GIs. The phage packaging GIs are often observed in staphylococcal pathogenicity islands (SaPIs) (Pantůček et al. 2018; Jin et al. 2021). SaPIs are involved in phage-induced excision, integration, replication, and proliferation resulting in acquisition of GI. 

## 4.2.1 Islands Related to Pollution Degradation

Natural and manmade organic chemicals sometimes cause environmental pollution. Potent bacteria associated with some important adapted genes are responsible for chlorobenzene, nitrobenzene, phenoxyalkanoic acids and atrazine degradation for their own metabolism. Pollutant degrading metabolic genes (referred as ‘evolutionary greenhouse’) harboured by GIs are intrinsic factors responsible for environmental sustainability (van der Meer and Sentchilo 2003). Tn4371-like integrative or conjugative elements harboured in GIs of Cupriavidus and Ralstonia genera are responsible for toluene degradation (Van Houdt et al. 2012). 

## 4.2.2 Islands Related to Pathogenicity

Genomic islands associated with pathogenicity may be the most studied topic among genomic islands and associated with environmental adaptations. Host organisms usually produce or secrete some chemical compounds that inhibit the growth of pathogens. On the other hand, pathogens adapted to be associated with their own host by producing some toxin degrading proteins. Not only Yersinia, a well-known pathogen bears GIs associated pathogenic genes, but also harmless bacteria E. coli and Klebsiella sometimes acquire pathogenic islands and cause disease (Hacker and Carniel 2001). E. coli is a well-known commensal organism present in the intestine of many organisms helping in metabolism, but when it acquires pathogenic islands (PAI), causes diseases. Loss of pathogenic genes from a genome of plasmid sometimes leads to produce non-pathogenic strains. For example, thermophilic strain Bacillus anthracis PFAB2 is a novel strain without common virulence genes (Banerjee et al. 2020). 

## 4.3 Islands in Extremophiles

## 4.3.1 Thermophiles

Horizontal gene transfer mainly provides the advantages to bacteria to adapt in punitive environment (da Silva Filho et al. 2018), one of the example is high temperature. Horizontal gene transfer enlightens the evolutionary explanation on extreme thermophilic bacteria as model for ancient bacteria (Gogarten and Townsend 2005). 

The selection of genomic island is controlled by some internal mechanisms which may be a random manner or controlled by specific selection procedure, but it is till date remain mystery. Relative age and movement of genomic island had been studied to analyse the competence level of Thermus spp. Several horizontally transferred genomic islands had been studied in genome of Thermus spp. by Kumwenda et al. (2014). Genomic island incorporation in chromosome is responsible for DNA amelioration and oligonucleotide distance pattern calculation determining reletive aquisition time (Kumwenda et al. 2014). From the point of evolution it had been found that Deinococcus lineage had acquired GI from Thermus species. Hence, it can be said that genomic island is most likely to play an evolutionary role in case of Thermus species lineage (Kumwenda et al. 2014). On the other hand, GI has also important role in holding the genes responsible for adaptation in extreme environment like high temperature. As per example, in one study done by Mercer et al. (2015)) heat resistance food isolate Escherichia coli AW1.7 showed more than 6 min $\mathrm { D } _ { 6 0 } \mathrm { - v a l u e }$ (highly resistant to heat). A ~14 Kb genomic island consists of many putative heat shock proteins present in 16 open reading frames encoding protease, responsible for highly heat resistance. Hence, this genomic island was converted to locus of heat resistance (LHR) that could help foodborne pathogens to withstand heat (Mercer et al. 2015). An LHR of 15–19 kb comprise of yfdX2, $y f d \mathrm { X } 1 _ { \mathrm { G I } }$ , $h d e \mathrm { D } _ { \mathrm { G I } }$ , orf11, kefB, trxGI, etc. genes that confers heat resistance in Enterobacteriaceae (Mercer et al. 2017). Genomic island PYG1 of 21.4 kb had been identified in the genomic sequence of the hyper-thermophile Pyrococcus yayanosii. TheΔPYG1 mutant strain had shown reduced growth at $1 0 0 ^ { \circ } \mathrm { C }$ compared to the wild one (Li et al. 2016). 

## 4.3.2 Psychrophiles

Microorganisms have evolved diverse cold-adaptation mechanisms to survive and proliferate in the Earth’s cold biosphere like cold aquatic and terrestrial ecosystems, or seasonally cold environments. The GIs provided us valuable insight into the unique characteristics of cold-adapted genome that assessed possible HGT events for cold adaptation (Penn et al. 2009; Murray and Grzymski 2007; De Maayer et al. 2014; Bowman 2017). A psychrophilic archaeon, Methanosarcina burtonii was reported with 125 genomic islands that represented >50% of the genome. Whereas, the GIs of mesophilic Methanosarcina genomes were represented ${ \leq } 4 0 \%$ of its genome. The high proportion of unclassified genes harboured in genomic island denotes genes from unknown organisms that were perhaps acquired through HGT event. The GIs were overrepresented with different cellular parts such as cell wall and cell membrane (outer part); envelope biogenesis and signal transduction mechanisms (inner metabolism) and these are related to cold adaptation (Allen et al. 2009). Likewise, the GIs of an extreme psychrophilic bacterium Psychroflexus torquis harboured most of the genes to dwell in a sea-ice environment. A majority of 44 GIs were represented with insertional elements, addiction modules, and pseudogene. Some GIs were flanked by tRNA genes that are well-known hot-spot for site-specific recombination (Ou et al. 2006; Feng et al. 2014). The GIs of a flavobacterial epiphyte Psychroflexus torquis habituating in sea ice algal assemblages harboured genes that encode proteins or enzymes to synthesize polyunsaturated fatty acids, exopolysaccharides, putative antifreeze proteins, and to uptake compatible solutes (Feng et al. 2014; Bowman 2017). The genome of an Alteromonas species was represented by 15 specific GIs with genes to provide the ecological fitness in a cold marine environment (Math et al. 2012). An Antarctic deep lake habituating Halobacterium species acquired unique gene features like gas vesicle, polyhydroxyalkanoate, bacteriorhodopsin biosynthesis genes to survive in the cold ecosystem (DeMaere et al. 2013). 

## 4.3.3 Halophiles

Halophiles are organisms that grow in saline environment. They can be found in various habitats like hypersaline water, saltern pond crystallizers, salt lakes, saline soil (Dutta and Bandopadhyay 2022). Horizontal acquisitions of various osmoresponsive genes might be a consequence of improving tolerance to salinity stress. Extremely halophilic archaea, Haloarcula hispanica possesses insertion element (IS), terminal inverted repeat (TIR), transposase gene (without TIRs) (Woods et al. 1999). 50% of the megaplasmid genes including two prophage regions were reported from GIs of moderately halophilic bacteria, Pontibacillus. Most of the chemotaxis genes (mcp/che) and flagellar motility genes ( fliG/M/N and motA/B) are present in the megaplasmid. These environment sensing genes are harboured in two prophages regions (von Hoyningen-Huene et al. 2021). Salinicoccus halodurans genome contained 11 GIs, no CRISPR repeat region. One gene cluster involved in Nα-acetyl-α-lysine biosynthesis. Genes encoding several hydrolases, stress responsive proteins, i.e., choline and betaine transporters, cold-shock protein, as well as chaperones are also noted (Jiang et al. 2015). Three larger horizontal gene transfer (HGT)-GIs are harboured in Salinibacter ruber, flanked by tRNAs and phage-related recombinase, which may participate in HGT events. Metalloresistence island, antibiotic resistance islands are associated with adaptive processes (González-Torres and Gabaldón 2018). 

## 4.3.4 Acidophiles and Alkaliphiles

Acidophiles are organisms that thrive in acidic and sulphur rich environments, acid mine drainage (AMD), and relied on chemoautotrophic production by iron and sulphur oxidation. They are widely distributed in AMD Río Tinto of Spain (Amaral-Zettler et al. 2011), Iron Mountain hot springs in California, USA (Wilmes et al. 2008), and stromatolites (Sriaporn et al. 2020). One of the most studied bacterial genus Acidithiobacillus grows at optimum pH <4. Comparative genomics study revealed the genes responsible for survival in the acidic environment, $\mathrm { v i z . }$ , amino acid decarboxylases, deiminase/deaminases group, $\mathrm { K } ^ { + }$ transporters, $\mathrm { N a ^ { + } / H ^ { + } }$ antiporters, modified proton-efflux P-type ATPases (Baker-Austin and Dopson 2007). The genes are mostly present in GIs, are often associated with mobility genes (integrases and transposase), prophage, flanking repeats, plasmid mobilization elements along with atypical GC content (Beard et al. 2021). 

Alkaliphiles are organisms that grow efficiently at $\mathrm { p H } > 9$ . Alkaliphiles are inhabited in various environments like ocean hydrothermal vents, river, soda lakes, and alkaline soils (Grant 2006). GIs of extremely alkaliphilic Bacillus halodurans contain transposases, insertion sequences (IS) that facilitate HGT in the course of evolution and also in internal rearrangement of the genome (Takami et al. 2000). Bacillus pseudofirmus has phosphoserine aminotransferase, ABC type siderophore transporter, Na + coupled Npt type phosphate transporters, Ktr-type potassium uptake system, and cation/proton antiporters genes whose products contributed adaptations to alkaliphily (Janto et al. 2011). 

## 4.4 Antibiotic Resistance Islands

Advancement in genome sequencing leads to the discovery of involvement of GIs in making antibiotic resistant phenotype within bacterial community. Antibiotic resistant islands often carry more than one antibiotic resistant genes integrated within tRNA gene. These GIs are characterized by terminal integrase or recombinase or insertion sequences, as consequences, GIs are less stable element (Dobrindt et al. 2004). Antibiotic resistant GIs can take part in genetic transfer events like conjugation, transformation, and transduction. GIs that actively participate in conjugation are termed as integrative conjugative elements (ICEs) and thus become the keen interest of modern research (Johnson and Grossman 2015). These ICEs are highly transmissible mobile genetic elements (MGE) and additively self-transmissible due to the presence of insertion sequences. They can exist as an integrated part of nucleoid or may be excised independently, self-replicable extrachromosomal DNA. ICEclc from Pseudomonas knackmussii, SXT from Vibrio cholerae, pKLC102 from P. aeruginosa Tn4371 from Ralstonia oxalatica are among the well-defined ICEs (Botelho et al. 2020). For Enterobacteria and other group of bacteria, typical GIs that impart numerous antibiotic resistance features have been reported. Clinically relevant methicillin-resistant S. aureus strains have emerged from the so-called SCCmec islands (MRSA). SCCmec islands can range in size from 20 kb to ${ > } 6 0$ kb, and they could harbour extra resistance features. In certain Proteobacteria, another sort of genomic island provides antibiotic resistance. The SXT island and R391 island of Vibrio cholerae and Providencia rettgeri, respectively, are the most well-known members of this category. A comparison of these elements indicated a conserved backbone with dedicated areas to the integration, transmission, etc., for these components. However, extra variable regions are also to be noted within these components. SXT-related components have also been discovered in natural settings. The pMERPH element (from Shewanella putrefaciens) got from river sediments of UK is an example of antibiotic resistant islands. V. cholerae lives a portion of its life cycle in water, suggesting that this group of GIs may have additional, some unidentified features that improve its fitness and/or survival, involved in adaptation and evolution of the species (Dobrindt et al. 2004). 

## 4.5 Catabolic Genomic Islands

Heavy metals are the key toxicant in the environment as they are hazardous, incremental, and tenacious. The heavy metal toxicity effect was shown in every hierarchical level of life including microbes. It could disrupt the cell membrane structure, damage proteins and nucleic acids, and hamper various enzymatic pathways and transcription processes (Chandrangsu et al. 2017) in the microbial cell. To cope with the toxic effect of heavy metals, microbial communities have evolved genetic programs encoding selective function that allows for efflux or sequestration of the heavy metals resulting in reduction of toxic effects. In the efflux system various heavy metal transporters like cation diffusion facilitators (CDF) and PIB-type ATPases were involved, which translocate the metal ions from cytoplasm to periplasmic space (Nies 2016). Notably, the P-type is known as the most relevant heavy metal transporter that uses ATP to efflux heavy metals against their concentration gradients (Nies 2016). In addition, heavy metals are exported from the periplasmic space to the extracellular space across the outer membrane via resistance-nodulation-division (RND)-transport (Greene and Koronakis 2021). The RND transporter is a multi-component system composed of 6 membrane fusion proteins (MFPs), 3 RND transport proteins, and 3 outer membrane factor proteins (Greene and Koronakis 2021). Bacteria have an astonishing potential to confer the heavy metal resistance (HMR) genes within bacterial species through HGT, conjugative plasmids, transposons, and genomic islands (Li et al. 2018b). Genomic islands associated with HMR were described in many bacterial species. For example, the presence of PIB1-ATPase, PIB3-ATPase, PIB4-ATPase, RND-type metal transporter, and metal binding chaperones in Mucilaginibacter rubeus and M. kameinonensis makes the strain put forward for HMR (Li et al. 2018b). An aquatic ecosystem strain Listeria welshimeri harboured a novel LGI2-like genomic island from L. monocytogenes that transfers cadmium (Cd) tolerance proteins CadA and makes the strain resistant to Cd (Lee et al. 2021). Different heavy metal related genes are found to be situated within islands of environmental multi-metal resistant strain of Bordetella petrii. Arsenic resistant genes like arsC, arsI, arsH, arsM, etc., were present in GIs of the strain (Halder et al. 2022). These genes are involved in arsenic tolerance in bacteria by arsenic reduction, methylation, etc. (Kabiraj et al. 2022). 

Reactive azo dyes are refractory pollutant containing –N=N– (azo bond) group linked with carbonated skeleton. This reactive azo dye laden textile effluent is being discharged in the aquatic ecosystem with consequent deleterious repercussion (Sarkar et al. 2017). 

Genomic Island had important role in harbouring genes related to metabolic process, catabolic expression which have role in environmental adaptation for bacterial isolates. Shewanella is known for its high potentiality in dye containing textile effluent bioremediation. As per example, Shewanella algae 2NE11, isolated from industrial effluent in Peru, had shown ~97% decolourization against high concentration of anthraquinone dye and ~ 89% decolourization rates for azo dye (Lizárraga et al. 2022). It was also reported to harbour two genomic islands related to horizontal gene transfer showing role in environmental adaptation (Lizárraga et al. 2022). Dye decolourizing genes are associated with this genome, like NADPHdependent oxidoreductase genes (HU689_04585; HU689_21345; HU689_04700), an FMN-dependent NADH-azoreductase gene (HU689_20695), and hemedependent Dyp peroxidase gene (HU689_05310) (Lizárraga et al. 2022). In one bacterial consortium SCP (Stenotrophomonas acidaminiphila APG1, Pseudomonas stutzeri APG2 and Cellulomonas sp. APG4) it was found that, APG4 CDS associated category for transport and catabolism could be related with dye (monoazo dye, Reactive blue 28) degradation (Chen et al. 2020). Maximum number of functional genes had been identified basically in APG2; however, APG1 and APG4 are also associated with it. This scenario further indicates the catabolic reaction related to azo dye degradation (Nanjani et al. 2021). Azo bond breakdown could be noticed by the APG genome due to the presence of a redox mediator. It was found that APG4 contains more number of ORF for NADH:DCIP oxidoreductase which lead to greater functionality (nearly 18 folds higher reductase activity) compared to APG1 and APG2 in azo dye degradation (Nanjani et al. 2021). 

## 4.6 Symbiosis Islands

The role of genomic island is not limited to pathogenicity but have diverse role in symbiosis, aromatic compound metabolism, siderophore synthesis, etc. (Juhas et al. 2009). Many bacteria form symbiotic association with eukaryotic host with the help of symbiotic island. The mosaic structure of island suggests that multiple recombination events have occurred during evolution in a stepwise fashion. Presence of this type of island is also uncertain, i.e. they may not be present in closely related strain of same or different species. This type of island contains nodulation genes, genes related to nitrogen fixation, and other types of genes required for transfer of the island, nodule metabolism, several regulatory genes, etc. Transfer of symbiotic island to a nonsymbiotic mesorhizobia converts their behaviour as symbionts and they could get the ability of nitrogen fixation. A chromosomally integrated element (502 kb), a symbiotic island, from the genome of Mesorhizobium loti strain R7A have the ability to transform nonsymbiotic mesorhizobia in the environment to Lotus symbionts (Sullivan et al. 2002). The island also contains several operons that are not required for transfer including operon for vitamin (biotin, thiamine, and nicotinamide) biosynthesis. These operons are not directly linked with symbiosis but they may help bacteria for better competition in rhizospheric environment. Symbiotic nitrogen fixing bacterium Bradyrhizobium japonicum harbours a symbiotic island of 681 kb in size that carry cluster of symbiotic genes which are structurally inserted into a val-tRNA gene on the genome (Itakura et al. 2009). Symbiotic nitrogen fixing bacteria, Mesorhizobium and Bradyrhizobium are involved in root nodule formation with specific types of plants. There are sym-genes for regulation of root nodule formation in different stages of plant growth. So, these types of important islands are devoted with nitrogen fixation. More studies also required to know about the stability of these important genes within the bacterial chromosome (Roumiantseva et al. 2018). 

## 4.7 Prediction of GIs

In this Era, robust genome sequencing and emerging interest on role of GIs on bacterial adaptation and evolution drive us to grow interest to assume genomic islands, their position, related genes, etc. Several tools and databases are now available to predict genomic islands. In this section, we will discuss briefly the tools and databases related to GIs identification. 

## 4.7.1 Tools

Bacteria may now be studied by studying their genomic sequences owing to the high sequencing methods. Comparative genome sequence analysis, for example, can identify phenomena like gene gain or loss, or exchange in a genome. Gene gain by horizontal gene transfer makes a bacterium more selective to that particular environment. The study of GIs is crucial for biological and bioinformatics research. So, identifying GIs is one of the most important jobs in genome evolution and gene transfer mechanism research. Nowadays, several tools are available (Table 4.1) for GIs prediction. 

## 4.7.2 Databases

Other than GI prediction tools there are several databases (Table 4.2) available that can be used directly for comparative study. These databases serve as resource to identify integrase site specificity and its evolution (Bertelli et al. 2017). 

## 4.8 Significance of GIs in Prokaryotic Evolution

In 1965, Zuckerkandl and Pauling had found that there is a relationship between nucleotide as well as protein sequences and organism’s evolution. Different parameters like codon bias, point mutation, changes in nucleotide sequences, etc., were considered for driving force of evolution. But there are some sudden changes that can be occurred within the genome of prokaryotic cells that cannot be imagined through the grammar of evolution. An example of this sudden change is horizontal gene transfer of genomic islands (Lima et al. 2008). 


Table 4.1 List of computational tools used for Genomic Island prediction in Prokaryotes


<table><tr><td>Tool names</td><td>Tool links</td><td>Special features</td><td>References</td></tr><tr><td>IslandPath</td><td>http://www.pathogenomics.sfu.ca/islandpath</td><td>Aid in detection of genomic islands with genome annotation features</td><td>Hsiao et al. (2003)</td></tr><tr><td>PAI-IDA</td><td>http://compbio.sibsnet.org/projects/pai-ida/</td><td>Simple analysis to detect pathogenicity islands and anomalous gene cluster</td><td>Tu and Ding (2003)</td></tr><tr><td>SIGI (score-based identification of genomic islands)</td><td>https://www.uni-goettingen.de/en/research/185810.html</td><td>Detect genomic island with high sensitivity</td><td>Merkl (2004)</td></tr><tr><td>ORFcurator</td><td>http://www.genomecurator.org/ORFcurator/</td><td>Used for molecular organization of genes and gene clusters</td><td>Rosenfeld et al. (2004)</td></tr><tr><td>GC-Profile</td><td>http://tubic.tju.edu.cn/GC-Profile/</td><td>Study for visualization and analysis of the variation of GC percentage and GIs</td><td>Gao and Zhang (2006)</td></tr><tr><td>MobilomeFINDER</td><td>http://mml.sjtu.edu.cn/MobilomeFINDER (Upon request)</td><td>High-throughput tools for identification and characterization of island through exploitation of emerging sequence data and PCR-dependent profiling of un-sequenced strains</td><td>Ou et al. (2007)</td></tr><tr><td>PredictBias</td><td>www.davvbiotech.res.in/PredictBias (Upon request)</td><td>Genomic and pathogenic islands detection in prokaryotes by analysing sequence composition, insertion elements, and genes associated with virulence factors.</td><td>Pundhir et al. (2008)</td></tr><tr><td>Design-Island (Detection of Statistically Significant Genomic Island)</td><td>http://www.geocities.com/raghuchatterjee/Design-Island.html</td><td>This tool does not require any previous data sets and used Monte-Carlo statistical tests</td><td>Chatterjee et al. (2008)</td></tr><tr><td>INDeGenIUS (Improved N-mer based Detection of Genomic Islands Using Sequence-Clustering)</td><td>Upon request</td><td>Identification of unique functional islands in complete-sequence of organism</td><td>Shrivastava et al. (2010)</td></tr><tr><td>EGID (Ensemble Algorithm for Genomic Island Detection)</td><td>http://www5.esu.edu/cpsc/bioinfo/software/EGID (Upon request)</td><td>Used in horizontal gene transfer and molecular evolution study</td><td>Che et al. (2011)</td></tr><tr><td>IGIPT (integrated genomic island prediction tool)</td><td>http://bioinf.iit.ac.in/IGIPT/</td><td>Allows the users to analyse GIs by simultaneously using</td><td>Jain et al. (2011)</td></tr></table>

(continued) 


Table 4.1 (continued)


<table><tr><td>Tool names</td><td>Tool links</td><td>Special features</td><td>References</td></tr><tr><td></td><td></td><td>thirteen different measures that give a more precision for prediction</td><td></td></tr><tr><td>PIPS (Pathogenicity Island Prediction Software)</td><td>http://www.genoma.ufpa.br/lgcm/pips</td><td>Using multiple tools for detection of pathogenic island in blended mode</td><td>Soares et al. (2016)</td></tr><tr><td>GIV (Genomic Island Visualization)</td><td>http://www5.esu.edu/cpsc/bioinfo/software/GIV</td><td>Detection of the location of GIs in a genome and also gives the supportive features information for GIs</td><td>Che and Wang (2013)</td></tr><tr><td>GI-POP</td><td>http://gipop.life.nthu.edu.tw/</td><td>Draft genomes can be submitted in contigs or scaffolds to get highly probable GIs</td><td>Lee et al. (2013)</td></tr><tr><td>Genomic Island Hunter</td><td>http://www.esu.edu/cpsc/che_lab/software/GIHuanter</td><td>GI projection method for sequenced bacterial and archaeal genomes. This tool uses sequence composition, mobile gene information, and integrase.</td><td>Che et al. (2014)</td></tr><tr><td>MSGIP (Mean Shift Genomic Island Predictor)</td><td>http://msgip.integrativebioinformatics.me/</td><td>Precisely predicted the complete reservoir of GIs in a genome</td><td>de Brito et al. (2016)</td></tr><tr><td>GI-SVM (Genomic Island-Support Vector Machine)</td><td>https://github.com/icelu/GI_Prediction</td><td>Highly sensitive tools for prediction of GIs in unannotated sequence of a single genome</td><td>Lu and Leong (2016)</td></tr><tr><td>GIPSy (genomic island prediction software)</td><td>https://www.bioinformatics.org/groups/?group_id=1180</td><td>Identify GIs in bacterial genome based on variation of the GC content, tRNA, genomic codons, transposase, etc.</td><td>Soares et al. (2016)</td></tr><tr><td>Zisland Explorer</td><td>http://tubic.tju.edu.cn/Zisland_Explorer/</td><td>GIs detection by utilizing both homogeneity and heterogeneity properties</td><td>Wei et al. (2017))</td></tr><tr><td>Islandviewer4</td><td>http://www.pathogenomics.sfu.ca/islandviewer/</td><td>Prediction of GIs with their products and features via three integrated tools like IslandPick, SIGI-HMM, and IslandPath-DIMOB</td><td>Bertelli et al. (2017)</td></tr></table>

(continued) 


Table 4.1 (continued)


<table><tr><td>Tool names</td><td>Tool links</td><td>Special features</td><td>References</td></tr><tr><td>XenoGI</td><td>http://www.cs.hmc.edu/xgiWeb/</td><td>Study the history of GIs insertions in a clade of microorganism</td><td>Bush et al. (2018)</td></tr><tr><td>Vrprofile</td><td>http://bioinfo-mml.sjtu.edu.cn/VRprofile</td><td>Rapid investigation of antibiotic resistance and virulence gene clusters in pathogenic bacteria</td><td>Li et al. (2018b)</td></tr><tr><td>MTGIpick</td><td>https://github.com/bioinfo0706/MTGIpick</td><td>GIs identification from a single, unannotated genome with prior information</td><td>Dai et al. (2018)</td></tr><tr><td>IslandCafe</td><td>https://github.com/mehuljani/IslandCafe</td><td>Novel island detection by comparing frequently used tools for GIs analysis</td><td>Jani and Azad (2019)</td></tr><tr><td>panRGP</td><td>https://github.com/labgem/PPanGGOLiN</td><td>Prediction of genomic islands diversity via Pangenome analysis</td><td>Bazin et al. (2020)</td></tr><tr><td>2SigFinder</td><td>https://github.com/bioinfo0706/2SigFinder</td><td>Statistical analysis for GIs detection from a single genome.</td><td>Kong et al. (2020)</td></tr><tr><td>SSG-LUGIA</td><td>https://nibtehaz.github.io/SSG-LUGIA/</td><td>Analysis of new-sequence based genomes and independent of functional annotation of genomes</td><td>Ibtehaz et al. (2021)</td></tr></table>

Secretion systems, encoded by GIs, are not only responsible for release of GIs and GIs encoded products from microbial cells, but also GIs associated chromosomal segments of the host organism. Acquisition of chromosomal segments through GIs is associated with rapid microbial evolution and diversification. A magnificent metabolic change is to be found in recipient microbes (Juhas et al. 2009) as GIs contain huge numbers of genes (Dobrindt et al. 2004). Acquisition of new genes associated with GIs usually counterbalanced by reduction of negative genes which sometimes considered as extra advantage for the organisms. These genetic and metabolic changes ultimately drive organisms to evolve (Juhas et al. 2009). GIs within the recipient microbial chromosome acquire, replace, or disintegrate chromosomal core genes. Gain or loss of genes makes distinct features of a particular strain from rest other strains of the same species. Species like E. coli, after acquiring pathogenic islands had become able to cause different diseases in intestine and extraintestine of human beings and other animals (Desvaux et al. 2020). Bacteriophages are sometimes considered as the driving force for bacterial evolution. Bacteria use to develop CRISPR-Cas system to escape itself from viral attack; on the other hand, viruses also modulate their genetic elements which help them to survive against bacterial ‘sword’ (Vale et al. 2022). However, evolution of GIs itself is quite distinct from the evolutionary lineages of other integrative elements (Boyd et al. 2009). From the analysis of GIs analogous structural and functional characteristics along with their phylogenetic relatedness revealed that GIs may be evolved multiple times. 


Table 4.2 Databases related to GIs prediction with some important characteristics


<table><tr><td>Databases</td><td>Feature</td><td>Availability</td><td>References</td></tr><tr><td>Islander</td><td>A database associated with integrases and their specific DNA sites in the genomic islands of prokaryotes</td><td>http://bioinformatics.sandia.gov/islander (Upon request)</td><td>Mantri and Williams (2004)</td></tr><tr><td>IslandPick datasets</td><td>Investigate the sequence composition-based GIs</td><td>http://www.pathogenomics.sfu.ca/islandpick_GI_datasets/</td><td>Langille et al. (2008)</td></tr><tr><td>PAIDB (Pathogenicity Island Database)</td><td>Detection and analysis of antibiotic resistance and pathogenicity islands</td><td>http://www.paidb.re.kr/</td><td>Yoon et al. (2015)</td></tr><tr><td>ICEberg</td><td>Study the bacterial mobile genetic elements such as integrative and conjugative elements (ICEs)</td><td>http://db-mml.sjtu.edu.cn/ICEberg/</td><td>Liu et al. (2019)</td></tr><tr><td>VRprofile</td><td>Exploration of antibiotic resistance and virulence gene cluster</td><td>http://bioinfo-mml.sjtu.edu.cn/VRprofile</td><td>Li et al. (2018a)</td></tr><tr><td>VCGIDB (Vibrio cholerae Genomic Island Database)</td><td>Prediction of phylogeny-based upgraded features in a large genome</td><td>http://leb.snu.ac.kr/vcgidb</td><td>Hur et al. (2019)</td></tr><tr><td>DarkHorse</td><td>Strong and flexible collection of tools using for prediction of phylogenetically related protein families in both individual HGT in a single genome and large-scale HGT in large genome</td><td>http://darkhorse.ucsd.edu/</td><td>Podell et al. (2008)</td></tr><tr><td>Islandviewer 4</td><td>Interactive visualization of GIs in bacterial and archaeal genomes for large-scale datasets</td><td>http://www.pathogenomics.sfu.ca/islandviewer/</td><td>Bertelli et al. (2017)</td></tr><tr><td>DGI</td><td>A dataset that comprises GIs derived from 2000 different bacterial genome including PAIs depicted as circular graphical images</td><td>http://www5.esu.edu/cpsc/bioinfo/dgi (Upon request)</td><td>Che et al. (2014)</td></tr><tr><td>GI-POP</td><td>Microbial genome annotation dataset including non-coding RNAs, ORF, and GIs. Also, GI-GPS based system is used for genomic islands prediction.</td><td>http://gipop.life.nthu.edu.tw/</td><td>Lee et al. (2013)</td></tr><tr><td>MOSAIC</td><td>Study the conserved and diverse segments (i.e., GIs) in the genome</td><td>http://genome.jouy.inra.fr/mosaic (Upon request)</td><td>Chiapello et al. (2008))</td></tr></table>

Bacteriophages usually attack bacteria at different times of bacterial life cycle, integration of viral genome, commonly called as prophage, can acquire more supplementary genes and can be considered as genomic island (Boyd et al. 2009). Cell-wall less small bacterium, Mycoplasma is also associated with some genomic islands. Among Mycoplasma related bacteriophages, φMFV1 and φMAV1 contain mem and vir genes, which preferentially encode some membrane anchored surface proteins. mem generates a coiled protein, whereas vir is responsible for a lipoprotein, eventually acts as putative virulence factor (Citti et al. 2020). Super-integrons are specific types of integron with the ability to stockpile a number of genes that might be associated with antibiotic resistance and can be converted themselves to GIs leading towards development of antibiotics resistant microbes (Dobrindt et al. 2004). After critical review on antibiotics resistance by Salmonella enterica, an author reported that this pathogenic bacterium is associated with a class 1 integron. Salmonella genomic island 1 (SG1) comprised of 15 kb integron and 27.4 kb backbone with five antibiotic resistant genes (Hall 2010). SGI1 and SGI1-REs were found to be members of large family of integrative genomic elements (IGE) and due to random evolutionary events like insertion, deletion, mutation, etc., their structural shape becomes altered. When members of Gammaproteobacteriaceae catch up these GIs, they distribute GIs easily and more frequently to their related species for adaptation against antimicrobial agents (Cummins et al. 2020). Urease producing bacterium, Proteus mirabilis is associated with a novel GI, named as PmGRI1 also responsible for antibiotic resistance (Lei et al. 2020). 

Studies on genomic islands of archaea is not as frequent as bacteria, a very few reports are available till date, although archaea are very closely related with bacteria and eukaryotic organisms both genetically and evolutionarily (Makarova et al. 1999). 

## 4.9 Conclusion

Prokaryotes can thrive in all kinds of biomes. In order to adapt in the diverse kinds of environment, they have evolved over time during a variety of events, namely gene rearrangements, mutations, horizontal gene transfer, etc. This evolutionary pattern may contain specific sequence. The horizontal transfer of large gene clusters as genomic islands contains accessory genes for adapting in a specific environmental niche. As evolution is a random and continuous process and GIs have tremendous role in prokaryotic evolution, the question is raised about its stability. Beside developing new tools and databases for genomic islands, now focus is needed on identifying the factors that provide its stability within the bacterial genome. 

Acknowledgements The authors are thankful to the Department of Botany, The University Burdwan and DST-FIST; AK is thankful to DHESTBT (WB-DBT), Memo No. [Fc (Sc.)/RS/SF/ BOT./2017-18/22]; ML and RKR are thankful to UGC JRF for financial assistance to conduct this research work, UH is thankful to SRF (State Fund) fellowship [Fc (Sc.)/RS/SF/ BOT./2017-18/22], DK and SS (WBP191579671079) are thankful to Swami Vivekananda Merit cum Means Scholarship. BD is thankful to DST (New Delhi) for PURSE PHASE-II SRF fellowship. 

Authorship Contribution Statement RB1, RB2,and UH, conceptualized the idea; AK, ML, KM, SS, BD, DK, RKR, and UH wrote the manuscript. RB2 edited the manuscript. Every author checked and approved the manuscript. 

Declaration of Competing Interest Authors are declaring that they have no conflict of interest. 



Che D, Wang H (2013) GIV: a tool for genomic islands visualization. Bioinformation 9:879 





Hur Y, Chalita M, Ha S et al (2019) VCGIDB: a database and web resource for the genomic islands from Vibrio Cholerae. Pathogens 8:261 





Lima WC, Paquola ACM, Varani AM et al (2008) Laterally transferred genomic islands in Xanthomonadales related to pathogenicity and primary metabolism. FEMS Microbiol Lett 281:87–97 





Roumiantseva ML, Muntyan VS, Cherkasova ME et al (2018) Genomic islands in Sinorhizobium meliloti Rm1021, nitrogen-fixing symbiont of alfalfa. Russ J Genet 54:759–769 



Funding No funding has been received for this study. 



Che D, Wang H, Fazekas J, Chen B (2014) An accurate genomic island prediction method for sequenced bacterial and archaeal genomes. J Proteomics Bioinform 7:214 





Ibtehaz N, Ahmed I, Ahmed MS et al (2021) SSG-LUGIA: single sequence based genome level unsupervised genomic island prediction algorithm. Brief Bioinform 22:bbab116 





Liu M, Li X, Xie Y et al (2019) ICEberg 2.0: an updated database of bacterial integrative and conjugative elements. Nucleic Acids Res 47:D660–D665 





Sarkar S, Banerjee A, Halder U et al (2017) Degradation of synthetic azo dyes of textile industry: a sustainable approach using microbial enzymes. Water Conserv Sci Eng 2:121–131 



## References



Chen G, An X, Feng L et al (2020) Genome and transcriptome analysis of a newly isolated azo dye degrading thermophilic strain Anoxybacillus sp. Ecotoxicol Environ Saf 203:111047 





Itakura M, Saeki K, Omori H et al (2009) Genomic comparison of Bradyrhizobium japonicum strains with different symbiotic nitrogen-fixing capabilities and other Bradyrhizobiaceae members. ISME J 3:326–339 





Lizárraga WC, Mormontoy CG, Calla H et al (2022) Complete genome sequence of Shewanella algae strain 2NE11, a decolorizing bacterium isolated from industrial effluent in Peru. Biotechnol Rep 33:e00704 





Shrivastava S, Reddy SK, Mande SS (2010) INDeGenIUS, a new method for high-throughput identification of specialized functional islands in completely sequenced organisms. J Biosci 35: 351–364 





Chiapello H, Gendrault A, Caron C et al (2008) MOSAIC: an online database dedicated to the comparative genomics of bacterial strains at the intra-species level. BMC Bioinform 9:1–9 





Jain R, Ramineni S, Parekh N (2011) IGIPT-Integrated genomic island prediction tool. Bioinformation 7:307 





Lu B, Leong HW (2016) GI-SVM: a sensitive method for predicting genomic islands based on unannotated sequence of a single genome. J Bioinforma Comput Biol 14:1640003 





Soares SC, Geyik H, Ramos RTJ et al (2016) GIPSy: genomic island prediction software. J Biotechnol 232:2–11 





Allen MA, Lauro FM, Williams TJ et al (2009) The genome sequence of the psychrophilic archaeon, Methanococcoides burtonii: the role of genome evolution in cold adaptation. ISME J 3:1012–1035 





Citti C, Baranowski E, Dordet-Frisoni E et al (2020) Genomic Islands in mycoplasmas. Genes (Basel) 11:836 





Jani M, Azad RK (2021) Discovery of mosaic genomic islands in Pseudomonas spp. Arch Microbiol 203:2735–2742 





Makarova KS, Aravind L, Galperin MY et al (1999) Comparative genomics of the Archaea (Euryarchaeota): evolution of conserved protein families, the stable core, and the variable shell. Genome Res 9:608–628 





Sriaporn C, Campbell KA, Millan M et al (2020) Stromatolitic digitate sinters form under wideranging physicochemical conditions with diverse hot spring microbial communities. Geobiology 18:619–640 





Amaral-Zettler LA, Zettler ER, Theroux SM et al (2011) Microbial community structure across the tree of life in the extreme Rio Tinto. ISME J 5:42–50 





Cummins ML, Hamidian M, Djordjevic SP (2020) Salmonella genomic island 1 is broadly disseminated within gammaproteobacteriaceae. Microorganisms 8:161 





Jani M, Azad RK (2019) IslandCafe: compositional anomaly and feature enrichment assessment for delineation of genomic islands. G3 9:3273–3285 





Mantri Y, Williams KP (2004) Islander: a database of integrative islands in prokaryotic genomes, the associated integrases and their DNA site specificities. Nucleic Acids Res 32:D55–D58 





Sullivan JT, Trzebiatowski JR, Cruickshank RW et al (2002) Comparative sequence analysis of the symbiosis island of Mesorhizobium loti strain R7A. J Bacteriol 184:3086–3095 





Assaf R, Xia F, Stevens R (2021) Identifying genomic islands with deep neural networks. BMC Genom 22:1–11 





da Silva Filho AC, Raittz RT, Guizelini D et al (2018) Comparative analysis of genomic island prediction tools. Front Genet 9:619 





Janto B, Ahmed A, Ito M et al (2011) Genome of alkaliphilic Bacillus pseudofirmus OF4 reveals adaptations that support the ability to grow in an external pH range from 7.5 to 11.4. Environ Microbiol 13:3289–3309 





Math RK, Jin HM, Kim JM et al (2012) Comparative genomics reveals adaptation by Alteromonas sp. SN2 to marine tidal-flat conditions: cold tolerance and aromatic hydrocarbon metabolism. PLoS One 7:e35784 





Takami H, Nakasone K, Takaki Y et al (2000) Complete genome sequence of the alkaliphilic bacterium Bacillus halodurans and genomic sequence comparison with Bacillus subtilis. Nucleic Acids Res 28:4317–4331 





Baker-Austin C, Dopson M (2007) Life in acid: pH homeostasis in acidophiles. Trends Microbiol 15:165–171 





Dai Q, Bao C, Hai Y et al (2018) MTGIpick allows robust identification of genomic islands from a single genome. Brief Bioinform 19:361–373 





Jiang K, Xue Y, Ma Y (2015) Complete genome sequence of Salinicoccus halodurans H3B36, isolated from the Qaidam Basin in China. Stand Genomic Sci 10:1–7 





Mercer R, Nguyen O, Ou Q et al (2017) Functional analysis of genes comprising the locus of heat resistance in Escherichia coli. Appl Environ Microbiol 83:e01400–e01417 





Tu Q, Ding D (2003) Detecting pathogenicity islands and anomalous gene clusters by iterative discriminant analysis. FEMS Microbiol Lett 221:269–275 





Banerjee A, Somani VK, Chakraborty P et al (2020) Molecular and genomic characterization of PFAB2: a non-virulent Bacillus anthracis strain isolated from an Indian Hot Spring. Curr Genomics 20:491–507 





de Brito DM, Maracaja-Coutinho V, de Farias ST et al (2016) A novel method to predict genomic islands based on mean shift clustering algorithm. PLoS One 11:e0146352 





Jin Y, Zhou W, Yin Z et al (2021) The genetic feature and virulence determinant of highly virulent community-associated MRSA ST338-SCCmec Vb in China. Emerg Microbes Infect 10:1052– 1064 





Mercer R, Zheng J, Garcia-Hernandez R et al (2015) Genetic determinants of heat resistance in Escherichia coli. Front Microbiol 6:932 





Vale FF, Lehours P, Yamaoka Y (2022) The role of mobile genetic elements in bacterial evolution and their adaptability. Front Microbiol 13:849667 





Bazin A, Gautreau G, Médigue C et al (2020) panRGP: a pangenome-based method to predict genomic islands and explore their diversity. Bioinformatics 36:i651–i658 





De Maayer P, Anderson D, Cary C, Cowan DA (2014) Some like it cold: understanding the survival strategies of psychrophiles. EMBO Rep 15:508–517 





Johnson CM, Grossman AD (2015) Integrative and conjugative elements (ICEs): what they do and how they work. Annu Rev Genet 49:577–601 





Merkl R (2004) SIGI: score-based identification of genomic islands. BMC Bioinform 5:1–14 





van der Meer JR, Sentchilo V (2003) Genomic islands and the evolution of catabolic pathways in bacteria. Curr Opin Biotechnol 14:248–254 





Beard S, Ossandon FJ, Rawlings DE, Quatrini R (2021) The flexible genome of acidophilic prokaryotes. Curr Issues Mol Biol 40:231–266 





DeMaere MZ, Williams TJ, Allen MA et al (2013) High level of intergenera gene exchange shapes the evolution of haloarchaea in an isolated Antarctic lake. Proc Natl Acad Sci U S A 110:16939– 16944 





Juhas M, Van Der Meer JR, Gaillard M et al (2009) Genomic islands: tools of bacterial horizontal gene transfer and evolution. FEMS Microbiol Rev 33:376–393 





Murray AE, Grzymski JJ (2007) Diversity and genomics of Antarctic marine micro-organisms. Philos Trans R Soc B Biol Sci 362:2259–2271 





Van Houdt R, Monsieurs P, Mijnendonckx K et al (2012) Variation in genomic islands contribute to genome plasticity in Cupriavidus metallidurans. BMC Genom 13:1–11 





Bellanger X, Payot S, Leblond-Bourget N, Guédon G (2014) Conjugative and mobilizable genomic islands in bacteria: evolution and diversity. FEMS Microbiol Rev 38:720–760 





Desvaux M, Dalmasso G, Beyrouthy R et al (2020) Pathogenicity factors of genomic islands in intestinal and extraintestinal Escherichia coli. Front Microbiol 11:2065 





Kabiraj A, Biswas R, Halder U, Bandopadhyay R (2022) Bacterial arsenic metabolism and its role in arsenic bioremediation. Curr Microbiol 79:131 





Nanjani S, Paul D, Keharia H (2021) Genome analysis to decipher syntrophy in the bacterial consortium ‘SCP’for azo dye degradation. BMC Microbiol 21:1–19 





von Hoyningen-Huene AJE, Schlotthauer TJ, Schneider D et al (2021) Pontibacillus sp. ALD_SL1 and Psychroflexus sp. ALD_RP9, two novel moderately halophilic bacteria isolated from sediment and water from the Aldabra Atoll, Seychelles. PLoS One 16:e0256639 





Bertelli C, Laird MR, Williams KP et al (2017) IslandViewer 4: expanded prediction of genomic islands for larger-scale datasets. Nucleic Acids Res 45:W30–W35 





Dobrindt U, Hochhut B, Hentschel U, Hacker J (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2:414–424 





Kong R, Xu X, Liu X et al (2020) 2SigFinder: the combined use of small-scale and large-scale statistical testing for genomic island detection from a single genome. BMC Bioinform 21:1–15 





Nies DH (2016) The biological chemistry of the transition metal “transportome” of Cupriavidus metallidurans. Metallomics 8:481–507 





Wei W, Gao F, Du M-Z et al (2017) Zisland Explorer: detect genomic islands by combining homogeneity and heterogeneity properties. Brief Bioinform 18:357–366 





Bertelli C, Tilley KE, Brinkman FSL (2019) Microbial genomic island discovery, visualization and analysis. Brief Bioinform 20:1685–1698 





Dutta B, Bandopadhyay R (2022) Biotechnological potentials of halophilic microorganisms and their impact on mankind. Beni-Suef Univ J Basic Appl Sci 11(1):1–16 





Kumwenda B, Litthauer D, Reva O (2014) Analysis of genomic rearrangements, horizontal gene transfer and role of plasmids in the evolution of industrial important Thermus species. BMC Genom 15:1–13 





Norambuena J (2020) Mechanism of resistance focusing on copper, mercury and arsenic in extremophilic organisms, how acidophiles and thermophiles cope with these metals. In: Physiological and biotechnological aspects of extremophiles. Elsevier, San Diego, pp 23–37 





Williams KP (2002) Integration sites for genetic elements in prokaryotic tRNA and tmRNA genes: sublocation preference of integrase subfamilies. Nucleic Acids Res 30:866–875 





Botelho J, Mourão J, Roberts AP, Peixe L (2020) Comprehensive genome data analysis establishes a triple whammy of carbapenemases, ICEs and multiple clinically relevant bacteria. Microb Genomics 6. https://doi.org/10.1099/mgen.0.000424 





Feng S, Powell SM, Wilson R, Bowman JP (2014) Extensive gene acquisition in the extremely psychrophilic bacterial species Psychroflexus torquis and the link to sea-ice ecosystem specialism. Genome Biol Evol 6:133–148 





Langille MGI, Brinkman FSL (2009) IslandViewer: an integrated interface for computational identification and visualization of genomic islands. Bioinformatics 25:664–665 





Ou H-Y, Chen L-L, Lonnen J et al (2006) A novel strategy for the identification of genomic islands by comparative analysis of the contents and contexts of tRNA sites in closely related bacteria. Nucleic Acids Res 34:e3–e3 





Wilmes P, Simmons SL, Denef VJ, Banfield JF (2008) The dynamic genetic repertoire of microbial communities. FEMS Microbiol Rev 33:109–132 





Bowman JP (2017) Genomics of psychrophilic bacteria and archaea. In: Psychrophiles: from biodivers to biotechnology. Springer, Cham, pp 345–387 





Gao F, Zhang C-T (2006) GC-Profile: a web-based tool for visualizing and analyzing the variation of GC content in genomic sequences. Nucleic Acids Res 34:W686–W691 





Langille MGI, Hsiao WWL, Brinkman FSL (2008) Evaluation of genomic island predictors using a comparative genomics approach. BMC Bioinform 9:1–10 





Ou H-Y, He X, Harrison EM et al (2007) MobilomeFINDER: web-based tools for in silico and experimental discovery of bacterial genomic islands. Nucleic Acids Res 35:W97–W104 





Woods WG, Ngui K, Dyall-Smith ML (1999) An improved transposon for the halophilic archaeon Haloarcula hispanica. J Bacteriol 181:7140–7142 





Boyd EF, Almagro-Moreno S, Parent MA (2009) Genomic islands are dynamic, ancient integrative elements in bacterial evolution. Trends Microbiol 17:47–53 





Gogarten JP, Townsend JP (2005) Horizontal gene transfer, genome innovation and evolution. Nat Rev Microbiol 3:679–687 





Lee C-C, Chen Y-PP, Yao T-J et al (2013) GI-POP: a combinational annotation and genomic island prediction pipeline for ongoing microbial genome projects. Gene 518:114–123 





Pantůček R, Sedláček I, Indráková A et al (2018) Staphylococcus edaphicus sp. nov., isolated in Antarctica, harbors the mecC gene and genomic islands with a suspected role in adaptation to extreme environments. Appl Environ Microbiol 84:e01746–e01717 





Yoon SH, Park Y-K, Kim JF (2015) PAIDB v2. 0: exploration and analysis of pathogenicity and resistance islands. Nucleic Acids Res 43:D624–D630 





Burrus V, Waldor MK (2004) Shaping bacterial genomes with integrative and conjugative elements. Res Microbiol 155:376–386 





González-Torres P, Gabaldón T (2018) Genome variation in the model halophilic bacterium Salinibacter ruber. Front Microbiol 9:1499 





Lee S, Parsons C, Chen Y et al (2021) Identification and characterization of a novel genomic island harboring cadmium and arsenic resistance genes in Listeria welshimeri. Biomol Ther 11:560 





Penn K, Jenkins C, Nett M et al (2009) Genomic islands link secondary metabolism to functional adaptation in marine Actinobacteria. ISME J 3:1193–1203 





Bush EC, Clark AE, DeRanek CA et al (2018) xenoGI: reconstructing the history of genomic island insertions in clades of closely related bacteria. BMC Bioinform 19:1–11 





Grant WD (2006) Alkaline environments and biodiversity, in extremophilies. Encycl life Support Syst (EOLSS), Dev under Auspices UNESCO Oxford Eolss Publ 





Lei C-W, Yao T-G, Yan J et al (2020) Identification of Proteus genomic island 2 variants in two clonal Proteus mirabilis isolates with coexistence of a novel genomic resistance island PmGRI1. J Antimicrob Chemother 75:2503–2507 





Phillips-Houlbracq M, Ricard J-D, Foucrier A et al (2018) Pathophysiology of Escherichia coli pneumonia: respective contribution of pathogenicity islands to virulence. Int J Med Microbiol 308:290–296 





Carraro N, Matteau D, Luo P et al (2014) The master activator of IncA/C conjugative plasmids stimulates genomic islands and multidrug resistance dissemination. PLoS Genet 10:e1004714 





Greene NP, Koronakis V (2021) Bacterial metal resistance: coping with copper without cooperativity? MBio 12:e00653–e00621 





Li J, Tai C, Deng Z et al (2018a) VRprofile: gene-cluster-detection-based profiling of virulence and antibiotic resistance traits encoded within genome sequences of pathogenic bacteria. Brief Bioinform 19:566–574 





Podell S, Gaasterland T, Allen EE (2008) A database of phylogenetically atypical genes in archaeal and bacterial genomes, identified using the DarkHorse algorithm. BMC Bioinform 9:1–12 





Chandrangsu P, Rensing C, Helmann JD (2017) Metal homeostasis and resistance in bacteria. Nat Rev Microbiol 15:338–350 





Hacker J, Bender L, Ott M et al (1990) Deletions of chromosomal regions coding for fimbriae and hemolysins occur in vitro and in vivo in various extra intestinal Escherichia coli isolates. Microb Pathog 8:213–225 





Li YP, Carraro N, Yang N et al (2018b) Genomic islands confer heavy metal resistance in Mucilaginibacter kameinonensis and Mucilaginibacter rubeus isolated from a gold/copper mine. Genes (Basel) 9:573 





Pundhir S, Vijayvargiya H, Kumar A (2008) PredictBias: a server for the identification of genomic and pathogenicity islands in prokaryotes. In Silico Biol 8:223–234 





Chatterjee R, Chaudhuri K, Chaudhuri P (2008) On detection and assessment of statistical significance of Genomic Islands. BMC Genom 9:1–11 





Hacker J, Carniel E (2001) Ecological fitness, genomic islands and bacterial pathogenicity. EMBO Rep 2:376–381 





Li Z, Li X, Xiao X, Xu J (2016) An integrative genomic island affects the adaptations of the piezophilic hyperthermophilic archaeon Pyrococcus yayanosii to high temperature and high hydrostatic pressure. Front Microbiol 7:1927 





Rodriguez-Valera F, Martin-Cuadrado A-B, López-Pérez M (2016) Flexible genomic islands as drivers of genome evolution. Curr Opin Microbiol 31:154–160 





Che D, Hasan MS, Wang H et al (2011) EGID: an ensemble algorithm for improved genomic island detection in genomic sequences. Bioinformation 7:311 





Halder U, Biswas R, Kabiraj A et al (2022) Genomic, morphological, and biochemical analyses of a multi-metal resistant but multi-drug susceptible strain of Bordetella petrii from hospital soil. Sci Rep 12:8439. https://doi.org/10.1038/s41598-022-12435-7 





Rosenfeld JA, Sarkar IN, Planet PJ et al (2004) ORFcurator: molecular curation of genes and gene clusters in prokaryotic organisms. Bioinformatics 20:3462–3465 





Hall RM (2010) Salmonella genomic islands and antibiotic resistance in Salmonella enterica. Future Microbiol 5:1525–1538 





Hsiao W, Wan I, Jones SJ, Brinkman FSL (2003) IslandPath: aiding detection of genomic islands in prokaryotes. Bioinformatics 19:418–420 



# Genomic Islands in Bacterial Genome Evolution and Speciation

5 

Ayon Pal, Vivek Roy, Prajesh Dutta, Samarpita Adhikary, Barnan Kr Saha, and Jayanti Saha 

## Abstract

Bacterial genomes are flexible entities due to the complicated and dynamic makeup of the bacterial chromosomes. The plasticity and evolution of the bacterial genome are facilitated by genome rearrangements, point mutations, and lateral or horizontal gene transfer (HGT). Bacteria benefit from HGT as it facilitates them to adapt to their environment, colonize new niches, and steer evolution in “quantum leaps.” Analyses of thousands of bacterial genome sequences have shown that there exist two major divisions in the bacterial genome: the primary core genome and the accessory gene containing flexible genome. Accessory gene acquisition might be mediated by entities designated as genomic islands (GIs), facilitating the process of HGT. GI represents horizontally acquired genes frequently clustered together in bacterial genomes with different GC content, dinucleotide frequencies, codon use, etc., than the neighboring genes. GIs make the genome flexible enough to adapt novel functions over a short life span and encode a diverse range of accessory genes for improved fitness, pathogenicity, resistance potential, metabolic flexibility, ecological adaptability, symbiosis, etc., in the harboring bacteria. Niche dynamicity is the key to having highly flexible genomes in bacteria. The niche exerts selection pressure to retain only helpful information and optimizes genomes based upon the costs and 

A. Pal (✉) · V. Roy · P. Dutta · S. Adhikary · B. K. Saha Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

J. Saha Microbiology and Computational Biology Laboratory, Department of Botany, Raiganj University, Raiganj, West Bengal, India 

Department of Botany, Acharya Prafulla Chandra Roy Government College, Siliguri, West Bengal, India 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_5 

benefits of different strains. This strain-specific propensity to have high island variability contributes to genome plasticity and subsequent genome evolution that might lead to niche specialization of specific bacterial strains. The most significant evolutionary benefit of GI is fostering the genetic flexibility and ability to transmit multiple genes, enabling more effective adaptation and enhancing pertinence in specific ecological niches. The consecutive acquisition and loss of auxiliary genes within the GI and the consequent transmission of chromosomal DNA from the host appear to be the prerequisites for the evolution of bacterial species. 

## Keywords

Genomic Islands · Bacterial genome evolution · Pathogenicity Islands · Horizontal gene transfer · Genome plasticity 

## 5.1 Genome Plasticity, Horizontal Gene Transfer and Evolution of the Bacterial Genome

Bacteria represent a diverse group of ubiquitous microbial organisms capable of surviving and tolerating a vast range of environments. Bacterial genomes are flexible or plastic, or adaptive entities resulting from the complex and dynamic nature of the bacterial chromosomes (Darmon and Leach 2014). The phenomenon of genome evolution involves different processes through which the content and arrangement of a species’ genetic information modify over time. The plasticity and evolution of the bacterial genome are facilitated by various processes, including genetic mutations or genome reshuffling through deletions, duplications, inversions, translocations, and horizontal gene transfer (HGT) (shown in Fig. 5.1). Of these, HGT is unarguably one of the major creative forces that drive bacterial evolution, molding bacterial species’ gene repertoires and providing and retaining population diversity. HGT takes place across the bacterial genome and causes the generation of incredibly different adaptations (Ochman et al. 2000). The phenomenon of HGT has cropped up significant ecological differences among closely related bacterial strains belonging to a single “species” taxon (Welch et al. 2002). Bacteria get benefitted from HGT due to their adaptation to various environments through colonization in new niches, thus allowing them to steer evolution in “quantum leaps” (Hacker and Carniel 2001). 


Fig. 5.1 Graphical representation of the major processes facilitating the plasticity and evolution of the bacterial genome like point mutations, genome rearrangements, and horizontal gene transfer


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/7b572156fec71eacbf505007faf2701756f5dca018dcf927063f0b4921c81022.jpg)



Fig. 5.2 The processes involved in bringing about horizontal gene transfer in bacteria include transformation (cell-free, one-way DNA uptake), transduction (bacteriophagemediated one-way genetic material transfer from one bacterium to the other), and conjugation (one-way genetic material transfer via physical association between two living bacterial cells)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/72acc540745129764ffc8a3b9ff7eec4a14acb97bd3a30d317a8d321cf7b8ad4.jpg)


HGT is generally associated with acquiring DNA fragments that can move from one cell to the other or within a genome, or both (Bellanger et al. 2014). HGT in bacteria is brought about by transformation, transduction, and conjugation (Fig. 5.2), transferring genes across potentially distant bacterial lineages (Bazin et al. 2020). HGT is facilitated by mobile genetic components like conjugative plasmids, transposons, insertion elements, bacteriophages, and genomic islands or GIs (Hacker and Carniel 2001; Milkman 2004). Mobile genetic elements can encode different factors relating to drug resistance, bacterial pathogenicity, production of bacteriocins, and specific metabolic functions associated with the breakdown of xenobiotics chemicals, etc. 

The advancement in next-generation shotgun sequencing has expedited the production of large amounts of genome sequence data, revealing insight into genome evolution and speciation. The analyses of thousands of prokaryotic genome sequences have led to the understanding that the bacterial genome is primarily divided into the core genome comprising of the core genes and the flexible genome made up of accessory genes, collectively referred to as “pan-genome,” a term first coined by Tettelin and collaborators in 2005 (Tettelin et al. 2005). Generally, core genes encode essential metabolic activities, while accessory genes encode traits that provide fitness to bacteria to thrive under specific growth or environmental conditions. The magnitude of the flexible prokaryotic genome is astonishing. Only around 50% of the genome of any given strain is core. With hundreds of novel flexible genes contributed by each strain, the compounded flexible pool is enormous (Rodriguez-Valera et al. 2016). Acquisition of these accessory genes might be mediated by entities known as GIs, responsible for facilitating HGT. GI represents the cluster of horizontally acquired genes present in bacterial genomes that vary in dinucleotide frequency, GC content, codon usage pattern, etc., compared to the neighboring genes (Busby et al. 2013). While the core genome reflects the evolutionarily conserved character even under severe selection pressure, microbial genome dynamicity is achieved by recurrent gene acquisition and loss. In a microbial species, the plasticity of the genome results from HGT, which facilitates the acquisition of GIs and accelerates the rate of evolution. GIs make the genome flexible enough to adapt novel functions over a short life span. 

Genome plasticity or genome flexibility is the phenomenon where the genome has large tracts of strain-specific polymorphic genes, known as the regions of genomic plasticity (RGPs), in different areas. It is critical for microbial survival in novel ecological niches, pathogenicity, symbiosis, and evolution of the genome (Mathee et al. 2008; Ogier et al. 2010). The key to having highly flexible genomes in bacteria is niche dynamicity. The more availability and proximity of exogenous genetic information result in the acquisition of novel information in the bacterial genome. The niche exerts selection pressure to retain only helpful information and optimizes genomes based upon the costs and benefits of different strains. The RGPs are broadly categorized into hypervariable regions that may arise from the deletions of specific DNA segments in different bacterial strains and mobile genetic elements (Ogier et al. 2010). The mobile genetic elements may get transferred from one place to another within the intracellular genome, or bacteria often use various HGT methods for efficient intercellular transfer. The enzymes transposases and recombinases (site-specific) are responsible for the mobility of mobile genetic elements and are coded by genes positioned on either the commonly shared core genome or the mobile genetic elements themselves. 

## 5.2 GIs: Features, Types, Significance, and Plasticity

A GI is a fragment of exotic DNA that has been inserted into the bacterial genome and has clearly defined boundaries (Novick and Ram 2016). These transferable DNA regions are larger than 10–500 kb base-pair sequences (Osborn and Böltner 2002). Hacker et al. (1997) initially described GIs as gene clusters inside a bacterial genome possessing a specified dinucleotide frequency and GC content. GIs contribute significantly to genome flexibility, evolution, and environmental adaptation (Li and Wang 2021) by armoring bacteria with genes that provide antibiotic resistance, virulence traits and even sometime incorporating them with genes encoding enzymes leading to de novo metabolic pathway(s) formation (da Silva Filho et al. 2018). 

## 5.2.1 Features Attributed to a GI

GIs encode a diverse range of accessory genes for improved fitness, secretion, pathogenicity, resistance potential, metabolic flexibility, ecological adaptability, symbiosis, etc., in the harboring bacteria (Darmon and Leach 2014). GIs have many other distinguishing features which delineate them from the other genomic regions. The specialized components of GIs are the presence of flexible sequences that differ from the core genome, the occurrence of genes for self-mobilization (viz. insertion sequences or ISs, integrases, and transposases), direct repeats (DRs) for flanking, and particular integration sites (Juhas et al. 2009; Schmidt and Hensel 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/e8f2cb8389d0d317e8ecbd4c1fa5fdd0291f4ab14dc29ba064edf5555a20638c.jpg)



Fig. 5.3 A graphical representation of the generalized organization of genomic island integrated within the bacterial chromosome (GI). DR = direct repeats, IS = insertion sequence and int = gene coding for integrase. The functional gene content of GIs are used to classify them into some subtypes, such as (i) pathogenicity island (PAI) that encode genes essential for bacterial pathogenicity/virulence, (ii) resistance island (RI) that encode antimicrobial resistance genes, (iii) symbiosis island (SI), and (iv) metabolic island (MI) that encode for adaptive metabolic abilities


2004). The recombination or transposition events during the integration process of GIs into the chromosome may generate the DRs. A generalized graphical representation of GI is given in Fig. 5.3. The evolution of GIs occurs through genome exchange, gene reduction, or further acquisition of some transposable elements (i.e., mobile genetic elements). The gene content between related strains of a species may vary considerably in each subset of islands. The G + C content (25–75%) of GIs is specific; they differ from the core chromosomal regions of bacteria (Schmidt and Hensel 2004). GIs are mostly inserted at 3′ end of genes coding for tRNA, and the region is often known as a hotspot for GI insertion (Lu and Leong 2016; Williams 2002). However, structurally every GI is almost the same in having a recombination module (integrase/excisionase module), two attachment sites (attR and attL, at the right and left end, respectively), and sometimes a recombination directionality factor (RDF). The tyrosine/serine recombinase enzyme family is involved in the exchange process during GIs integration (Boyd et al. 2009; Desvaux et al. 2020). 

## 5.2.2 Types of GIs

The flexible gene content of GIs was classified and named based on the types of functions they encipher (Rainey and Oren 2011). These are (i) pathogenicity islands (PAIs) encoding genes relating to bacterial pathogenicity or virulence, (ii) symbiosis islands possessing similar structural attributes to pathogenicity islands though encoding proteins facilitating the mutual relationship of bacteria and multicellular organisms (Rainey and Oren 2011), (iii) antibiotic resistance islands that encode antimicrobial resistance genes, and (iv) metabolic/catabolic genomic islands enabling bacteria for adaptive metabolic abilities in degrading xenobiotic chemicals (Bertelli et al. 2019). Several kinds of mobile transposable elements including integrons, integrative and conjugative elements (ICEs), prophages, etc., are included within this wide dimensions of GI. GIs are mainly distinguished depending on the acquisition mechanism (i.e., transformation, conjugation, or transduction) and accompanying mobile elements (like transposases, ISs, and integrases) facilitating GI mobilization and transmission (Bertelli et al. 2019; Juhas et al. 2009; Langille et al. 2010; Soucy et al. 2015). According to Boyd et al. (2009), the GIs refer to a discrete class of evolutionarily ancient integrative components that are not “degenerate relics of prophages, episomes, integrons or ICEs.” 

New GI insertion is followed by subsequent changes in the cellular or colonial morphology, function, or even the lifestyle of the accepting organism. Some GIs are PAIs of the strain Salmonella SPI1 and Listeria monocytogenes, symbiosis islands (SIs) of Bradyrhizobium, Mesorhizobium loti strain R7A, acid fitness islands (AFIs) of Escherichia coli, defense island (DIs) of Microcystis aeruginosa, Shewanella sp. strain ANA-3, resistance islands (RIs) of Haemophilus influenzae, Acinetobacter baumannii, saprophytic islands of some Escherichia coli strains, a phenol degrading ecological island of Pseudomonas putida, xanthan gum production island (a metabolic island) of Xanthomonas (Arashida et al. 2022; Chan et al. 2015; Hadjilouka et al. 2018; Lerminiaux et al. 2020; Lima et al. 2008; Makarova et al. 2011; Mates et al. 2007; Van Elsas et al. 2011; Xiang et al. 2021). Different ecological niches exhibit diverse selection pressure under which bacteria with similar GIs play different functions. A bacterium may contain a variety of GIs within its genome to perform various functions. 

## 5.2.3 Significance of GIs

The evolutionary benefit of GI is that many genes (like the whole operon dealing with novel traits) can be transferred horizontally to the recipient’s genome, instigating significant modifications in the recipient’s characteristics. According to the theory of “selfish operon,” genes concerned with a particular function are grouped to promote their HGT (Lawrence and Roth 1996). GI can improve adaptability and competitiveness within the niche, thus providing selective benefits under certain growth conditions. The most significant evolutionary benefit of GI is fostering the genetic capacity and flexibility to transmit multiple genes, enabling more effective adaptation and enhancing fitness in particular ecological niches (Dobrindt et al. 2004). 

## 5.2.4 Plasticity in GIs

Bacteria harbor IS elements, plasmids, prophages, transposons, GIs, ICEs as MGEs. The ISs are the simplest MGEs (< 2.5 kb in size), which transmit no genes except those that encode machinery essential for their insertion at various DNA sites (Siguier et al. 2014). Plasmids have self-replication ability, and their intercellular transfer involves conjugation in prokaryotic cells (Smillie et al. 2010). Prophages integrate with bacterial chromosomes, and their mobility depends on transduction (Brüssow et al. 2004). Transposons may transfer from one intra-genomic region to another intra-genomic region and do not undergo any HGT. GIs are larger (10–500 kb) MGEs with genes for self-mobility and other essential genes for strainspecific functions. The staphylococcal pathogenicity islands (SaPIs), GTAs, and ICEs are the three most common types of GIs. The first two are presumably descended from prophage forebears and have retained crucial prophage architectural traits. The third group likely originated from conjugative plasmids, which acquired additional characteristics and transformed into mosaics. While GTAs and ICEs independently influence HGT, the SaPIs depend on certain bacteriophages. The ICEs principally transmit their own DNA, whereas the GTAs solely convey the unlinked host DNA, but the SaPIs are a blend of both ICE and GTA. It is assumed that immobile GIs are variations of mobile ones (Novick and Ram 2016). 

Not all GIs have genes for autonomous transfer. For example, SaPIs need helper phages for mobility (Lindsay et al. 1998). GIs share discrete segments of DNA between similar strains. However, their formation and ability to acquire accessory genes in the syntenic block lead to bacterial adaptation, genome diversification, and evolution. Different molecular events like recombination, deletion, duplication, inversion, etc., make GIs flexible. 

The SaPIs of Gram-positive bacteria have phage integrase and excisionase homologs. The functional relatedness of SaPIs with phage makes them highly mobile with a unique lifestyle. The helper phage-mediated transfer of SaPIbov5 involves a prophage cos site in it. Due to phage interference SaPIs increase the transfer of chromosomal adaptive genes for host virulence. Genomic data from Staphylococcus implies SaPIs have typical phage-related genome organization but are sharply different from their progenitor prophage. Phage-related elements of streptococci and lactococci have orthology patterns similar to the SaPIs. Genomebased analysis also suggests that the widespread and diversified nature of SaPIs all over the bacterial genomic world successfully builds evolutionary strategy (Chen et al. 2015; Dokland 2019; Novick et al. 2010; Novick and Ram 2016). 

The ICEs catalyze self-excision through site-specific recombination regardless of conjugation and integration. ICEs have diverse modular structures, i.e., gene clusters with different functions like conjugation, integration or excision, and adaptation. Conjugation modules have two types: a single-stranded DNA-based MOB/MPF module where MOB is the relaxase protein family, and MPF is a mating pair formation protein family. The second is a double-stranded DNA-based module that encodes SpoIIIE/FtsK protein family DNA translocator (Tra proteins) (Álvarez-Rodríguez et al. 2020; Besprozvannaya et al. 2013; Guglielmini et al. 2011). A double-stranded conjugation module containing ICE, regarded as actinomycete ICE (AICE), is found in actinomycetes (Johnson and Grossman 2015; Te Poele et al. 2008). The MOB acts on the $5 ^ { \prime }$ end of ICEs and initiates DNA transfer through the MPF into the recipient bacterial cell. On the other hand, Tra proteins form channels and act on the cis-acting locus of circular AICE to transfer. The integration/excision modules encode enzymes for recombination events, generally, tyrosine/serine recombinase (or DDE transposase) those identify repetitive flanking sequences of ICEs. ICEs containing such integration/excision modules are usually found at the $3 ^ { \prime }$ end of genes coding for tRNA. In case of different housekeeping genes, they can be found either at the $3 ^ { \prime }$ or $5 ^ { \prime }$ end. ICEs Ecoc54N from Escherichia coli, Tn5397 from Clostridium difficile, Tn1806 from Streptococcus pneumoniae, Tn6012 and ICE6013 from Staphylococcus aureus, and TnGBS elements from Streptococcus agalactiae have integration/excision modules with either tyrosine/ serine recombinase or DDE transposase (Antonenka et al. 2006; Bellanger et al. 2014; Camilli et al. 2011; Guérillot et al. 2013; Mingoia et al. 2016; Sansevere et al. 2017; Ternan et al. 2012; Wang et al. 2006). 

The fundamental mechanisms behind GIs plasticity and evolution are acquiring, exchanging, or deleting different modules. Comparisons of sequences between ICEs provide information about the occurrence of enormous exchanges within different modules. It is suggested that the host specificity of ICEs evolved through the sitespecific recombination between conjugation and integration modules of various ICEs (Burrus et al. 2002). Module exchanges also occur between other GIs. Sequence comparisons also reveal many GIs developed by deletion mutations in mobility modules. In some GIs, for example, ICE_2603 $t R N A ^ { L y s }$ from S. agalactiae, genes (like orfD) associated with intercellular or intracellular mobility are deleted by incorporating the copy of insertion elements (IS1193). The combination of a GI within another GI, followed by subsequent restructuring, resulted in the acquisition of novel modules. Insertion of non-mobilizable ISs, induce deletion or inversion of neighbor sequences besides inactivation. In the high-pathogenicity island (HPI) of Y. pestis KIM, ISs are connected with conjugation module deletion (Bellanger et al. 2014; Chen et al. 2010; Puymège et al. 2013). 

## 5.2.4.1 Driving Forces for GIs Plasticity

The GIs vary between individual strains and help adapt to new ecological niches, host-cell interaction, and virulence. This strain-specific propensity to have high island variability contributes to genome plasticity and subsequent genome evolution that might lead to niche specialization of specific bacterial strains. The variable strain-specific genomic DNA segments may evolve through rearrangement events like recombination, deletion, insertion, duplication, amplification, inversion, or tandem accretion. 

## Recombination

This is a crucial mechanism to keep genome flexibility and fitness. Homologous and non-homologous recombination are genetic information exchange procedures between DNA sequences with higher or lower identity, respectively (Didelot et al. 2012). In homologous recombination, the recombination rate reduces if the sequences are poorly identical. Non-homologous recombination occurs during either DNA synthesis or strand breakage and causes the addition of new genetic material through HGT and site-directed recombination. The insertions of new DNA segments often lead to deletions and subsequent hairpin formation due to strand slippage. The new DNA segments introduce genome diversity and synteny loss in bacteria. In homologous recombination, the involvement of Rec enzymes results in the singlestrand or double-strand DNA gap repair; therefore, the recombination rates increase. The Rec enzymes, on the other hand, negatively regulate non-homologous recombination, lowering the recombination rate. Site-directed recombination involves 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/e7d202a31b56aefa77ac0fde774a245f82cf9c3702e196d0219a5bc66166a9d4.jpg)



Chromosome



D att



△ attg



Integration/Excision Module



G



Gl


Fig. 5.4 GI plasticity via recombination. The plasticity of GIs may come through the recombination process between two separate GIs. Here, the red cross mark in the left diagram depicts the recombination between the integration/excision modules of $\mathrm { G I } _ { 1 }$ and $\mathrm { G I } _ { 2 } .$ . This event leads to a new GI formation, as shown on the right side of the figure 

tyrosine/serine recombinase or DDE transposase to recognize the flanking repeats causing the exchange of DNA segments between integration/excision modules of different GIs. Both types of recombination play indispensable roles in bacterial genome evolution. The plasticity of GIs may come through the recombination process between two separate GIs, as shown in Fig. 5.4. A transposon Tn6022 mediated recombination is indicated as the source of GI formation in many Acinetobacter baumannii strains (Patel 2016; Peters et al. 2014). From the ecological perspective, the overlapping niches of strains bring more opportunities to exchange genetic information between GI modules than lineages living in distant niches. 

## Deletion

Inactivation or deletion of part of the genome in bacteria facilitates genome evolution. While acquiring novel genes enhances the bacterial colonization potential, gene loss enables niche specialization. The “Streamlining” and “Black Queen” hypotheses assume that the loss of superfluous genes confers the survival ability or the fitness cost in bacteria lowering the metabolic burden (Giovannoni et al. 2005; Morris et al. 2012). The “Streamlining” theory is dependent on the fact that the challenging environmental circumstances favor robust selection to minimize cell complexity. On the other hand, the “Black Queen” hypothesis specifies that an organism should stop performing its costly function under certain conditions. Both hypotheses support reductive genomic evolution. These trends are visualized when host-specialized, highly virulent bacterial pathogens evolve from a vast range of hosts through massive gene loss. In endosymbionts, genome shrinkage is essential, which occurs possibly by deletion. Many new flagellar genes have been identified in the flagellar operon $( \mathcal { H } i$ operon) of Salmonella enterica var. typhimurium LT2. Deletions in the 2.07Mbp region in $\mathit { \Omega } \mathcal { \hat { H } } \mathit { i }$ operon resulted in increased fitness (Frye et al. 2006; Koskiniemi et al. 2012). The plasticity and evolution of GIs also depend on the deletion of different modules. GIs are often sensitive to ISs inclusion leading to the inactivation or loss of superfluous genes, thus lowering the energy/mass expenditure. 

## Insertion

Insertion is the process of new gene acquisition that induces adaptive alterations in genome architectures and confers bacteria the ability to survive in new ecological niches. The transposition ability of ISs helps them to integrate anywhere in the genome. Their lodging is accidental in the genome, and several mechanisms control their disrupting activity resulting in genome innovation. The introduction of ISs in the genome creates an opportunity to evolve and accommodate better adaptive ability to the stressors. In the genome of nosocomial isolates of Staphylococcus epidermidis, insertion element IS256 facilitates the tolerance to drugs making them multi-drug resistant. The insertion occurs in the GIs, consequently acquiring novel gene clusters (Dengler Haunreiter et al. 2019; Espadinha et al. 2019; Otto 2009). Some GIs may integrate within other GIs, followed by subsequent reorganization. Several mechanisms are responsible for the evolution of such mobilizable GIs. The non-mobilizable GIs that do not encode self-conjugative machinery can insert within ICEs. In the genome of Mesorhizobium loti USDA110, about 64 ISs are found within the 680 kb ICEMlSymR7A (Kaneko et al. 2002; Sullivan et al. 2013). Varieties of transposable elements have also been recognized in many ICEs or related GIs. Some ICEs also bear prophages. For example, Tn6164 from C. difficile bears a complete prophage (Hargreaves et al. 2016). A graphical representation of deletion and insertion in GI is shown in Fig. 5.5. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/576e8655cf553a093ce89b0a6da53c60e2c33e3d08cbaa41bdff9a2f40145158.jpg)



Fig. 5.5 Schematic presentation of deletion and insertion in GI. Insertion of region 2 from $\mathrm { G I _ { A } }$ into the $\mathrm { G I _ { B } }$ and region A from $\mathrm { G I _ { B } }$ into the $\mathrm { G I _ { A } }$ leads to the loss and gain of regions islands (Melnyk et al. 2019)


## Duplication and Inversion

Duplications are dynamic forces that aid in surviving in an unfriendly environment. Multiple amplification of the genomic regions results in tandem repetitive sequences. Inversion is another process when a DNA fragment is excised and reconnected in the opposite direction elsewhere in the genome. In general, the inversion sequences are bordered by inverted repetitions and are occasionally found inside a coding region. This reversal modifies the gene expression profile and alters the phenotypic characteristics of bacterial species. The evolution of distinct bacterial lineages confers adaptability by coupled gene duplicationamplification in response to drugs. It has been found that multistep adaptive development is preceded by gene amplification. As a result, mutation occurs in the additional copies while stabilizing the other copies of essential genes, enhancing fitness. Both duplication and inversion frequently target GIs, leading to plasticity. A schematic presentation of deletion and insertion in GI is depicted in Fig. 5.6. E. coli ST58 contains two GIs, PAI-1 and PAI-2, both islands sharing a great deal of genetic information. A duplication event at two distinct tRNA–Phe–GAA sites led to the development of these two progenitor islands from a single island. This duplication event was followed by inversion, and PAI-1 and PAI-2 acquired separate sets of genes throughout time (Wyrsch et al. 2020). IS-mediated duplication has been found in the symbiosis island of WN105 mutant of Bradyrhizobium diazoefficiens USDA110 (Arashida et al. 2022). 

## Tandem Accretion

GIs also originate from site-specific recombination and subsequent tandem accretion-deletion of CIMEs and ICEs (Fig. 5.7). The site-specific accretion resulting from gene gain and loss is a key tool for GI flexibility and evolution. The composite structure of ICESt1 and related GIs from Streptococcus thermophilus demonstrated these components developed via site-specific recombinations and deletions. At the 3′ end of the fda locus in seven distinct strains of 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/9b38a5546a180d132fe4f6ffd93a93ca53e47c2cb45fd4a39442e2d89d6503b3.jpg)


Chromosome 

GI 

attL 

duplicated and invertedregion1 

region 2 

region 3 

Fig. 5.6 Duplication and inversion in GI. Left diagram shows normal GI, whereas right shows GI with duplicated and inverted region 1 (Wyrsch et al. 2020) 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/dfa04df0b41cc226d2c95ac8ca9f917a7fcdf3953ab46cb9a6000ced321eb9f1.jpg)



Fig. 5.7 Tandem accretion of GIs. The diagram shows the integration of ICE adjacent to the $a t t _ { I }$ of the resident CIME by site-specific recombination, causing composite GI formation (Bellanger et al. 2014)


S. thermophilus, four forms of ICESt1-related ICEs with comparable conjugation and recombination modules were identified. These elements are flanked by different site-specific attachment sites (att) that are strongly connected to attachment sites of two distinct cis-mobilizable elements (CIMEs) CIME19258 and CIME302. This results in site-specific recombination, which results in the excision of ICEs and the subsequent incorporation of CIMEs at the 3′ end of fda. Moreover, genome analysis showed identically shortened sequences at the att regions of these ICEs and CIMEs (Bellanger et al. 2014; Pavlovic et al. 2004). 

## 5.3 GIs and Bacterial Evolution

The idea of prokaryotic species is complicated, and it is commonly assumed that such species are formed because of continuous processes combining gene loss and gain facilitated by HGT (Lawrence 2001). The acquisition and loss of auxiliary genes within the GI and the probable transmission of chromosomal DNA from the host may be a precondition for bacterial species evolution. Since GIs may integrate themselves into the host chromosomes by excision, conjugated-mediated self-transfer into a new host, and reintegration, they can transmit a piece of the host genome into the recipient bacteria. This process of receiving donor (foreign) DNA may open the way for bacterial evolution when donor DNA is integrated into the genome of the host via transformation. The unique self-transfer type IV secretion system (T4SS) of Neisseria gonorrhoeae (encoded by a horizontally acquired huge gonococcal genetic island or GGI), enables both secretion and spread of the host chromosomal DNA. Later, when taken up by the transformation process, the secreted chromosomal DNA (via GGI-encoded type T4SS) can undergo recombination along with the host’s chromosome, adding to antigenic variation and drug resistance. Thus, GIs appear to influence the evolution of the host bacteria. This change occurs in several Gram-negative or Gram-positive, environmental or pathogenic bacteria like N. gonorrhoeae, Acinetobacter sp. ADP1, Haemophilus influenza, Pseudomonas stutzeri, Bacillus subtilis, Streptococcus pneumoniae, and Ralstonia solanacearum. In addition to transformation, the transmission of GIs across bacterial species can also be mediated through conjugation and bacteriophages. The SaPIs are the most well-known example of this phenomenon. There have been several reports of such bacteriophage-mediated transfers of GIs, that includes the HPI and the GIs of Yersinia pseudotuberculosis and Prochlorococcus sp. (marine cyanobacteria), respectively (Juhas et al. 2009). 

## 5.3.1 GIs in Bacterial Genome Evolution and Shapiro’s Geographical Metaphors

In his article “How clonal are bacteria over time?,” Shapiro (2016) has convincingly employed different geographical metaphors to explain how GIs are potentially associated with genome evolution. According to Shapiro, horizontal transfer (recombination) rates fluctuate significantly across the genome so that an entire population, except for a few loci, can be clonal. These loci are referred to as GIs. The term “peninsula” provides a simile that might better depict the connection of the islands to the microbial genomes. An island remains evolutionarily independent compared to the mainland genome, but their fates may become associated. For instance, a bacterium may obtain any gene from the enormous microbial gene pool. The acquired gene enables the bacteria to colonize into a new ecological niche, initiating a clonal expansion where the acquired gene’s fate and its new host genome are inextricably intertwined, at least during the clonal expansion period. Certain microbial genomes may include an inordinate number of islands to the point where there is no mainland but a large archipelago. Archipelagos are not always stable throughout time, and they can occasionally combine into continents. When the ecological conditions are favorable, any genome from the panmictic gene pool can break free from the “gravitational pull” of recombination and embark on clonal growth (Shapiro 2016). 

With the help of bioinformatics, it became apparent that novel genes with unknown functions are present within GIs. These novel genes lack orthologs in other bacterial species and might furnish the host bacterium with various adaptive functions. Different accessory functions like additional metabolic pathways, resistance toward antibiotics and harmful drugs, pathogenesis, symbiosis, or traits involved in increasing microbial fitness, are encoded by GIs. 

Although plasticity (Dobrindt et al. 2004) within GI alters bacterial lifestyle or behavior, it is not unfamiliar that bacterial “quantum leaps” in context with evolution is mediated by GI (Juhas et al. 2009), as it has the intrinsic property to transfer a large set of genes and integrate as a whole into the recipient genome, thereby promoting bacterial diversity and speciation (Guo et al. 2012). Some of the GI-mediated features that can offer a significant selective benefit to the host bacteria and thus leap a step toward evolution and speciation are discussed briefly below. 

## 5.3.2 GI and Heavy Metal Tolerance

GIs may provide an advantage for living in harsh toxic environments leading to the evolution of resistant strains. One of the most critical toxic environments includes acid mine drainage (AMD) which contains high concentrations of toxic heavy metals (including arsenic). A comparative genomic study on different isolates of Thiomonas bacteria obtained from AMD of Carnoulès, France, revealed the presence of more than 20 GIs. The findings also indicated that arsenic-associated GIs had evolved differently in two closely related Thiomonas strains, resulting in varied survival capabilities in As-rich environments (Freel et al. 2015). 

GIs contributing to heavy metal tolerance in Mucilaginibacter spp. have been observed in isolates obtained from gold/copper mines. Clusters of genes that may be connected with mobile genetic elements were discovered by analyzing the location of heavy metal resistance determinants. These loci contained genes for tyrosine recombinases (integrases) and subunits of T4SS, letting integration/excision and conjugative transfer of many GIs, respectively. The supposed presence of many CTnDOT-related GIs in the genomes of Mucilaginibacter may have a crucial task in genome evolution and subsequent adaptation (Vásquez-Ponce et al. 2018). 

In Cupriavidus metallidurans, GI variation has contributed to the variable plasticity of the genome. C. metallidurans represents a versatile multi-metal resistant bacteria. Comparative genomic hybridization of sixteen C. metallidurans strains revealed that the broad arsenal of heavy metal resistance factors was well preserved across all strains of C. metallidurans. Contrarily, the transposable elements found in strain CH34 were not observed in the other strains but displayed an indirect pattern associated with a specific geographical location or biotope. One set of strains had nearly all transposable components, whereas the second group had a substantially lower proportion. This was also manifested in their capacity to break down toluene and thrive on carbon dioxide and hydrogen gas in an autotrophic manner. Both of these are connected to distinct GIs of the Tn4371 family (Van Houdt et al. 2012). 

## 5.3.3 GIs in Secondary Metabolism, Pathway Evolution and Xenobiotic Degradation

GIs have been found in a distinct environmental (marine) bacteria Salinispora, belonging to the phylum Actinobacteria. Genomic comparison of S. tropica with S. arenicola displayed the distribution of three-quarters of species-specific genes within 21 GIs associated with the production of secondary metabolites, also establishing a connection between secondary metabolism and functional adaptation. All species-specific biosynthetic pathways are found in GIs, most of which are found in S. arenicola, contributing to its worldwide distribution in different habitats. Gene duplication and acquisition dominate genome evolution, which provides rapid chances for generating novel bioactive compounds in the case of secondary metabolism. The horizontal sharing of secondary metabolic pathways performs a major functional role in acquiring natural product biosynthetic gene clusters, which also serve as the driving force for maintaining bacterial diversity (Penn et al. 2009). GIs have been identified as hotspots for biosynthetic gene cluster acquisition in Salinispora (Letzel et al. 2017). Using something apparently like a plug-and-play paradigm of evolution, clusters of acquired biosynthetic genes are targeted to certain GI and can replace each other (Letzel et al. 2017). 

GIs seem to have a significant role in developing novel pathways through “patchwork assembly” (a novel combination of previously existing pathways) (Dobrindt et al. 2004; Guzman and Harris 2015; Mingoia et al. 2016). Studies reveal that plasmids, transposons, and GIs include catabolic genes that encode functionalities with the capacity to digest xenobiotic substances. For instance, Ralstonia oxalatica Tn437, a GI, might break down chlorobiphenyl. First discovered in Pseudomonas knackmussii B13, the clc element could utilize chloroaromatic chemicals as a carbon source. In the field of biodegradation, ICEclc is the bestknown ICE. It bears selective genes for the ortho-cleavage of chlorocatechols and aminophenol metabolism, and these are clc and amn genes respectively). This component is capable of metabolizing 3-chlorocatechol, 3-chlorobenzoate, 4-chlorocatechol, as well as aminophenol. Due to its self-transfer capabilities, it can insert itself into the genomes of different Proteobacteria based on environmental circumstances (Klockgether et al. 2006). Based on amino acid homology searches, similar clc-like elements from bacterial genomes have already been isolated around the world, including in Xylella fastidiosa 9a5c (a plant pathogen), Pseudomonas aeruginosa C (a clinical isolate), P. aeruginosa S17GM (an environmental isolate) and Xanthomonas campestris (Lacour et al. 2006). Pseudomonas-like clc components have also been identified in a Ralstonia sp. JS705 isolate (reported from contaminated groundwater). This clc element codes for chlorobenzene to chlorocatechol metabolizing enzymes with 85–100% nucleotide similarity in the conserved area (Klockgether et al. 2006). These discoveries demonstrate that the clc element can spread to new environments and obtain new functionalities within its current location (van der Meer and Sentchilo 2003). GIs conferring the capacity to degrade xenobiotics and toxic compounds biologically has been detected in many bacterial populations. Some examples of GI with biodegradation functions are listed in Table 5.1. 

## 5.3.4 GIs and Siderophore Expressing Bacteria

Bacteria are well known for expressing iron uptake systems, known as siderophores. Siderophores represent low molecular weight secondary metabolites synthesized and then released into their environment, where they chelate ferric iron to combat iron deficiency (Neilands 1995; Thode et al. 2018). This is an adaptation to survive in an iron-restricted environment and is associated with virulence. Genes encoding for siderophores are distributed in several pathogenic and non-pathogenic bacterial species harboring GIs. Examples include HPI in Yersinia sp.; SHI-2, SRL, and SHI-3 in various species of the genus Shigella; and PPI-1 in S. pneumoniae (Dobrindt et al. 2004). Such GIs can serve as fitness islands in environmental bacteria or PAI in pathogenic bacteria. 


Table 5.1 List of GIs with biodegradation potential for different xenobiotics


<table><tr><td>Sl. No.</td><td>GI</td><td>Biodegradation potential for</td><td>References</td></tr><tr><td>1</td><td>100 kb clc element</td><td>Chlorocatechols, aminophenols</td><td>Gaillard et al. (2006))</td></tr><tr><td>2</td><td>90 kb bph-sal element</td><td>Biphenyl</td><td>Nishi et al. (2000)</td></tr><tr><td>3</td><td>55 kb biphenyl catabolic transposon Tn4371</td><td>Biphenyl</td><td>Toussaint et al. (2003)</td></tr><tr><td>4</td><td>100 kb Tn3-like Alteromonas sp. SN2 transposon</td><td>Naphthalene</td><td>Jin et al. (2011)</td></tr><tr><td>5</td><td>232 kb phn island in Delftia sp. Cs1-4</td><td>Polynuclear aromatic hydrocarbons</td><td>Hickey et al. (2012)</td></tr><tr><td>6</td><td>(per)chlorate reduction-associated genomic island (PRI)</td><td>Perchlorate reduction</td><td>Melnyk et al. (2011)</td></tr></table>

## 5.3.5 GIs and Bacterial Secretion Systems

The evolution of pathogenicity in bacteria through acquiring GIs (virulence-carrying genes) is a well-established phenomenon. During evolution, bacteria may have gained new genes by HGT, or their current genes may have acquired mutation. One fine example of the successful host-pathogen interaction is represented by several classes of protein secretory systems encoded by GIs (Martínez 2013). The type III secretion systems (T3SS) or “contact-dependent” secretion systems are complex multiprotein machinery (Scherer and Miller 2001). T3SS is generally expressed by pathogenic bacteria infecting plants and animals, including genera like Yersinia, Shigella, Salmonella, Pseudomonas, enteropathogenic E. coli (EPEC), Erwinia and Rhizobium. In some exceptional cases, two T3SSs are expressed within a single pathogen, each necessary at a different infection stage. In S. enterica, out of the two T3SS (harbored by SPI-1 and 2), one is essential for the initial interaction and penetration into the eukaryotic target cell (intestinal epithelium cells). At the same time, the other is essential for systemic infection (Juhas et al. 2009). 

GIs of many bacterial pathogens encode T4SSs, translocating bacterial effector proteins through the bacterial membrane and plasma membrane into eukaryotic host cells. T4SSs, in turn, mediate HGT, which contributes to plasticity of the genome, development of infectious diseases, and the spread of drug resistance and other attributes related to virulence. The architecture of the genetic determinants of T4SS is diverse and comprises numerous genes grouped as a single functional unit (Juhas et al. 2007). The T4SS has been extensively studied in Agrobacterium tumefaciens. Unlike the T3SS system, this complex system is unique as it delivers nucleoprotein complexes and effector proteins into plant cells, contributing to pathogenicity directly (Dobrindt et al. 2004). 

## 5.3.6 GIs and Antimicrobial Resistance

One of the most significant routes for acquiring drug resistance is GIs. The advent of methicillin-resistant Staphylococcus aureus (MRSA) has largely been attributed to the so-called staphylococcal cassette chromosome methicillin-resistant (SCCmec) islands present in the genome of S. aureus. This island can also integrate with other MGEs and might confer resistance against additional antibiotics, thus representing a hotspot with variable size (20 kb to ≥60 kb) (Dobrindt et al. 2004). MRSA is resistant to various antibiotics like methicillin, penicillins, kanamycin, tobramycin, bleomycin, tetracycline, macrolide, lincosamide, streptogramin, vancomycin and also to heavy metals (Juhas et al. 2009). Origin of the SSCmec island in S. aureus is yet to be established; however, comparative bioinformatic studies have proposed that it could have originated from other staphylococcal species via HGT, such as S. sciuri, S. fleuretti, S. epidermidis, or S. haemolyticus. Reports have shown the existence of SSCmec in S. epidermidis well before its discovery from S. aureus. Thus, SCCmec in S. epidermidis might act like a pool of resistance genes contributing to the evolution of multi-drug-resistant S. aureus. In another case, mecA was naturally found to be present in the chromosome of S. fleuretti and therefore was supposed to be the original source of the mecA in the SCCmec. Many dynamic SCCmec islands have been discovered from S. haemolyticus genome, thus indicating S. haemolyticus to be a potent carrier for methicillinresistant genes (Juhas 2019). 

The genus Enterococcus has become a chief cause of nosocomial infections, and the prime player in the swift expansion of such enterococcal infection comprises those of drug-resistant strains. Besides genomic modification and HGT, GIs also play a crucial role in the acquisition of drug resistance. In studies where the whole genome sequences of some E. faecium and E. faecalis (carrying many resistance genes) were screened to analyze the correlation between antibiotic resistance genes (ARGs) and GI transmission, two observations became distinct, firstly the prevalent nature of GIs in Enterococcus, and secondly, antibiotic-resistant genomic islands (ARGIs) contributing significantly to the dissemination of some ARGs. The above study has clearly shown the existence of 119 GIs in 37 strains, with an average value of 3.2 in each strain (universal presence of GI in Enterococcus). GIs in these strains was found to harbor variant ARGs, including aminoglycosides, chloramphenicol, glycopeptides/peptides, lincosamides, streptomycin and multi-resistant efflux pumps. The ARGs identified in the enterococcal ARGIs are, mdtG (encodes an efflux pump providing resistance against with fosfomycin), tetM (tetracycline resistance), dfrG (diaminopyrimidine antibiotic resistance), lnuG (lincosamide resistance), fexA, (an efflux pump providing chloramphenicol resistance). Besides encoding for drug-resistant, some of the GIs have been credited with mobilityrelated elements, like genes for conjugation, transposase or excisionase. Credible relationships among enterococcal strains and GIs were found to indicate frequent genetic exchanges within and between Enterococcus strains. Regular genetic exchanges among all the strains (comprising E. faecium and E. faecalis) mediated by GIs were not unusual (Li and Wang 2021). The high plasticity of Enterococcus genome has been allocated to the conjoint action of HGT, and either gain or loss of genetic information. According to Darwin, for the evolution of an organism, environmental selection pressure must have served as the driving force. This hypothesis fits well in the case of the MDR Enterococcus, isolated from complex ecological niches, like hospitals, medical clinics, farmlands, contaminated water, stools, humans, and pigs, and where harsh environmental factors always exist (such as antimicrobial compounds, organic and inorganic biocides, and heavy metals). The GIs harboring numerous novel genes due to their self-mobility or non-mobility might have integrated into the bacterial genome. Consequently, the recipient organism develops a new metabolic potential to enhance fitness or adaptability (Li and Wang 2021). 

Many Salmonella enterica serovars responsible for gastrointestinal sickness are resistant to antibiotics due to GIs bearing a class 1 integron that contains the resistance genes. Studies have suggested that Salmonella genomic island 1 (SGI-1) retains a complex multi-drug resistance segment, imparting resistance against many antibiotics, including tetracycline, ampicillin, chloramphenicol/florfenicol, sulfamethoxazole and streptomycin/spectinomycin. The SGI1-associated MDR region comprises a complex integron harboring the aadA2, floR, bla , tetR, and tetG genes (Vo et al. 2010). Many Salmonella serovars and Proteus mirablis possess SGI1 or similar islands harboring diverse resistance gene sets. SGI1 is a mobilizable integrative element transferable experimentally into E. coli (Hall 2010). 

Cholera, caused by Vibrio cholerae, is a dreadful disease. Reports of multidrugresistant V. cholerae strains have been frequent over the past few decades. The spread of determinants related to resistance is primarily due to mobile genetic elements such as the SXT / R391 integrated conjugate element, IncC plasmid, and GI. Transmission of the IncC plasmid is activated by the master activator AcaCD (Rivard et al. 2020). The regulatory network of AcaCD extends to the chromosomally integrated GIs. A discrete and novel mobile genomic island (MGI) MGIVchHai6 integrated into the chromosome of a multidrug-resistant V. cholerae HC-36A1 isolate (Carraro et al. 2016) contains an integron In104-like multi-drug resistance element and a mercury resistance transposon, analogous to SGI1. Acquisition of MGIVchHai6 plays a vital role in resistance against β-lactams, chloramphenicol, trimethoprim, tetracycline, sulfamethoxazole, and streptomycin/ spectinomycin (Carraro et al. 2016). 

Pseudomonas aeruginosa is a severe threat to burn patients and the immunecompromised. Different high-risk clonal strains, like ST111, ST175, and ST235 carry genes that give resistance to β-lactam antibiotics (Roy Chowdhury et al. 2016). GIs play a determining role in the spread of resistance to a wide variety of effective antibiotics, such as metallo-β-lactams and extended-spectrum β-lactams. Strains of 

P. aeruginosa (ST) 235 carry Tn6162 and Tn6163 in GI1 and GI2, respectively. The class 1 integron coupled with Tn6163 in GI2 carries a blaGES-5–aacA4–gcuE15– aphA15 cassette range that confers resistance to aminoglycosides, including carbapenems. Studies suggest that the evolution of GI2 could have occurred from a novel ICE. GI2 is winged by a repeat motif region (direct) of 12 nucleotide bases and codes for integration, conjugative transfer and ICE-specific proteins (Roy Chowdhury et al. 2016). 

Another Gram-negative opportunistic pathogen, Acinetobacter baumannii, is a nosocomial pathogen that causes serious health hazards to immunocompromised patients. Nowadays, A. baumannii has been garnering considerable attention widely due to its rapid capacity to build up multi-drug resistance. The sequences of many A. baumannii genomes have divulged a vast collection of ARGs, several of which are connected with transposable elements and ISs, and it might be found in GIs, known as AbaR (Leal et al. 2020; Liu et al. 2014). Different AbaR islands have been found that vary in size, and are dynamically reshaped primarily because of recombinases, transposases, and integrases (Leal et al. 2020). Few resistance genes are present within plasmid, which can be intra- and interspecies exchanged, even by prophages (Leal et al. 2020). Studies have detected the presence of a novel GI (GIBJ4) in the drug-sensitive strain BJ4 possessing metal resistance genes inserted into the position where AbaR-like RIs commonly reside in other strains of A. baumannii (Liu et al. 2014). In A. baumannii several antibiotic resistance determinants are also present outside the RIs, such as integrons, chromosomal intrinsic antibiotic resistance genes, and the blaOXA-23-containing transposon Tn2009 (Liu et al. 2014). 

## 5.3.7 In Planta GI Mediated Bacterial Evolution

GIs can transmit across bacteria in vitro but not during the infection process in the host. Lovell et al. (2009) have demonstrated that horizontal transmission of a GI (PPHGI-1) occurs in planta between strains of the plant pathogen Pseudomonas syringae pv. Phaseolicola (Pph). This study reveals that the transfer of PPHGI-1 across Pph strains by transformation involves four unique steps: (i) excision of the GI from the bacterial chromosome, (ii) release of the circular episome from the bacterium, (iii) relocation into competent bacterial cells, and (iv) integration at a particular att site. Transformation, the simplest method of DNA exchange, may thus accomplish the evolution of bacterial pathogens via HGT (Lovell et al. 2009). 

## 5.3.8 GIs in Evolution of Pathogenic Bacteria

Many bacteria incorporate PAIs, a subset of GI, in their chromosomes. PAIs are specialized islands comprising arrays of genes whose expression leads to pathogenicity (virulence) and disease. These PAIs provide fitness to the PAI-positive bacteria directly or indirectly by increasing their chances of survival in vivo and/or transmission to new hosts and contributing to genome evolution. This PAI-mediated fitness can be well observed during the onset of clinical symptoms, which is directly linked to the pathogenicity or lesions triggered by the pathogenic or virulent bacteria (Hacker and Carniel 2001). PAIs are the most well-known GI which has been most exhaustively studied. The various determinants of pathogenic bacteria responsible for the pathogenesis or disease are embedded within these PAIs and also on various mobile elements like extra-chromosomal plasmids, phages, insertion elements, and transposons (Schmidt and Hensel 2004). PAIs are ubiquitous in both Gram-positive and Gram-negative pathogens. Some examples of Gram-negative bacteria harboring PAIs include Salmonella spp., Neisseria spp., Shigella spp., Yersinia spp., Helicobacter pylori, E. coli, Pseudomonas spp., Vibrio cholerae, Porphyromonas gingivalis, and Francisella spp. Examples of Gram-positive pathogenic bacteria having PAIs include Staphylococcus aureus, Streptococcus spp., Listeria spp., Clostridium spp., and Enterococcus spp. The presence of a certain PAI, on the whole, is specific to a pathogenic bacterium or a specific strain of bacteria. A particular bacteria can also have more than one PAI in its genome (Gal-Mor and Finlay 2006). Bacterial species or strains equipped with PAI have an inherent advantage over their non-PAI-bearing counterparts when it comes to pathogenicity. Most virulence determinants for the typical Salmonella enterica are present both in the chromosome and within PAI, termed as Salmonella pathogenicity islands (SPIs). Both SPI-1 and SPI-2 are essential in determining virulence. SPI-1 encoded T3SS proteins (Shea et al. 1996) build up complex machinery for the translocation of various effector proteins from the extracellular S. enterica into the host (eukaryotes) cells (Schmidt and Hensel 2004). SPI-1 also codes for various regulators, some acting as transcriptional activators and others as inhibitors or repressors of SPI-1 genes. The most crucial are HilA, HilE, and LeuO; these gene products and many more work in a complex way to tightly regulate SPI-1 genes (Lou et al. 2019). HPI, a discrete PAI, is naturally found in all the virulent serotypes of Yersinia sp., namely Y. pestis, Y. enterocolitica and Y. pseudotuberculosis but is completely lacking in serotypes with low virulence. Due to the high instability of HPI, it has also been established in various other members of enterobacteria (Carniel et al. 1996). Clostridium difficile, an aerobic bacterium, produces various toxins leading to diarrhea and pseudo-membranous colitis. However, toxin production is restricted only to the virulent (toxigenic) variant but is lacking in the non-virulent type. Comparing both variants revealed that the genes coding for the toxins are integrated into a PAI termed PaLoc (pathogenicity locus) (Braun et al. 1996). The first case of vancomycin resistance in bacterial pathogen was described from a clinical isolate of E. faecalis. Genes related to virulence determinants are incorporated in a 154 kb PAI. It has been found that commensal E. faecalis got transformed into virulent ones by acquiring GI-encoding virulence factors from the virulent E. faecalis (Juhas et al. 2009; Shankar et al. 2002). Members of the genus Pseudomonas have been discovered from multiple habitats, and some species are even considered opportunistic pathogens. Genomic analysis has shown the presence of different types of PAI in strains of P. aeruginosa, termed PAGI (viz., PAGI-1, 2, 3), thereby conferring various adaptive traits (Battle et al. 2009). PAGI-1 (from strain PAO1 and patients with urinary infection) was found to contain genes coding for numerous dehydrogenases (with unknown potentials) and proteins able to sense redox-cycling agents, thus, indicating a protective role of this island against reactive oxygen species (ROS) damage. The latter two, PAGI-2 and PAGI-3, were discovered from the type C strain of P. aeruginosa (isolated from cystic fibrosis patients) and strain SG17M (aquatic strain), respectively. The island PAGI-2 contains numerous genes encoding transporters, regulators, and proteins needed for biosynthetic pathways. The crucial one seems to be the proteins involved in the biogenesis of cytochrome C, thus providing a selective advantage to the bacteria to thrive in an environment with oxidative stress and deprived of iron. Cytochrome C-mediated iron uptake and inactivation of free radicals appeared to be the player behind the scenes. Furthermore, PAGI-3 was found to be a metabolic island without any virulence factors (Schmidt and Hensel 2004). Six more novel islands were identified through a subtractive hybridization approach from P. aeruginosa clinical isolates (Battle et al. 2009). 

In conclusion, it may be stated that GIs are still an enigma. The evolution of prokaryotes, particularly that of eubacteria, is primarily impacted by forces like HGT, and the GIs contribute vastly to this direction. With the availability of a deluge of whole genome sequence information due to next-generation sequence techniques, the puzzle of bacterial evolution and speciation has started to unwrap, albeit slowly. With more than 400,000 prokaryotic whole genome sequences in global databases at present, biologists have an enormous amount of data to analyze and decipher newer paradigms in bacterial evolution. 



Besprozvannaya M, Pivorunas VL, Feldman Z, Burton BM (2013) SpoIIIE protein achieves directional DNA translocation through allosteric regulation of ATPase activity by an accessory domain. J Biol Chem 288:28962–28974 





Espadinha D, Sobral RG, Mendes CI, Méric G, Sheppard SK, Carriço JA, De Lencastre H, Miragaia M (2019) Distinct phenotypic and genomic signatures underlie contrasting pathogenic potential of Staphylococcus epidermidis clonal lineages. Front Microbiol 10:1971 





Juhas M (2019) Genomic Islands and the evolution of multidrug-resistant bacteria. In: Villa TG, Viñas M (eds) Horizontal gene transfer breaking borders between living kingdoms. Springer, Cham, pp 143–153. https://doi.org/10.1007/978-3-030-21862-1_4 





Lou L, Zhang P, Piao R, Wang Y (2019) Salmonella pathogenicity island 1 (SPI-1) and its complex regulatory network. Front Cell Infect Microbiol 9:270. https://doi.org/10.3389/fcimb.2019. 00270 





Patel S (2016) Drivers of bacterial genomes plasticity and roles they play in pathogen virulence, persistence and drug resistance. Infect Genet Evol 45:151–164 





Ternan NG, Jain S, Srivastava M, Mcmullan G (2012) Comparative transcriptional analysis of clinically relevant heat stress response in Clostridium difficile strain 630. PLoS One 7:e42410 



## References



Boyd EF, Almagro-Moreno S, Parent MA (2009) Genomic islands are dynamic, ancient integrative elements in bacterial evolution. Trends Microbiol 17:47–53. https://doi.org/10.1016/j.tim.2008. 11.003 





Freel KC, Krueger MC, Farasin J, Brochier-Armanet C, Barbe V, Andrès J, Cholley P-E, Dillies M-A, Jagla B, Koechler S, Leva Y, Magdelenat G, Plewniak F, Proux C, Coppée J-Y, Bertin PN, Heipieper HJ, Arsène-Ploetze F (2015) Adaptation in toxic environments: arsenic Genomic Islands in the bacterial genus Thiomonas. PLoS One 10:e0139011. https://doi.org/10.1371/ journal.pone.0139011 





Juhas M, Crook DW, Dimopoulou ID, Lunter G, Harding RM, Ferguson DJP, Hood DW (2007) Novel type IV secretion system involved in propagation of genomic islands. J Bacteriol 189: 761–771. https://doi.org/10.1128/JB.01327-06 





Lovell HC, Mansfield JW, Godfrey SA, Jackson RW, Hancock JT, Arnold DL (2009) Bacterial evolution by genomic island transfer occurs via DNA transformation in planta. Curr Biol 19: 1586–1590. https://doi.org/10.1016/j.cub.2009.08.018 





Pavlovic G, Burrus V, Gintz B, Decaris B, Guedon G (2004) Evolution of genomic islands by deletion and tandem accretion by site-specific recombination: ICESt1-related elements from Streptococcus thermophilus. Microbiology 150:759–774 





Tettelin H, Masignani V, Cieslewicz MJ, Donati C, Medini D, Ward NL, Angiuoli SV, Crabtree J, Jones AL, Durkin AS (2005) Genome analysis of multiple pathogenic isolates of Streptococcus agalactiae: implications for the microbial “pan-genome”. Proc Natl Acad Sci U S A 102:13950– 13955 





Braun V, Hundsberger T, Leukel P, Sauerborn M, Von Eichel-Streiber C (1996) Definition of the single integration site of the pathogenicity locus in Clostridium difficile. Gene 181:29–38. https://doi.org/10.1016/S0378-1119(96)00398-8 





Frye J, Karlinsey JE, Felise HR, Marzolf B, Dowidar N, Mcclelland M, Hughes KT (2006) Identification of new flagellar genes of Salmonella enterica serovar Typhimurium. J Bacteriol 188:2233–2243 





Juhas M, Van Der Meer JR, Gaillard M, Harding RM, Hood DW, Crook DW (2009) Genomic islands: tools of bacterial horizontal gene transfer and evolution. FEMS Microbiol Rev 33:376– 393. https://doi.org/10.1111/j.1574-6976.2008.00136.x 





Lu B, Leong HW (2016) Computational methods for predicting genomic islands in microbial genomes. Comput Struct Biotechnol J 14:200–206 





Penn K, Jenkins C, Nett M, Udwary DW, Gontang EA, Mcglinchey RP, Foster B, Lapidus A, Podell S, Allen EE, Moore BS, Jensen PR (2009) Genomic islands link secondary metabolism to functional adaptation in marine Actinobacteria. ISME J 3:1193–1203. https://doi.org/10. 1038/ismej.2009.58 





Thode SK, Rojek E, Kozlowski M, Ahmad R, Haugen P (2018) Distribution of siderophore gene systems on a Vibrionaceae phylogeny: database searches, phylogenetic analyses and evolutionary perspectives. PLoS One 13:e0191860. https://doi.org/10.1371/journal.pone.0191860 





Álvarez-Rodríguez I, Arana L, Ugarte-Uribe B, Gómez-Rubio E, Martín-Santamaría S, Garbisu C, Alkorta I (2020) Type IV coupling proteins as potential targets to control the dissemination of antibiotic resistance. Front Mol Biosci 7:201 





BrüSsow H, Canchaya C, Hardt W-D (2004) Phages and the evolution of bacterial pathogens: from genomic rearrangements to lysogenic conversion. Microbiol Mol Biol Rev 68:560–602 





Gaillard M, Vallaeys T, Vorhölter FJ, Minoia M, Werlen C, Sentchilo V, Pühler A, Van Der Meer JR (2006) The clc element of Pseudomonas sp. strain B13, a genomic island with various catabolic properties. J Bacteriol 188:1999–2013. https://doi.org/10.1128/JB.188.5.1999-2013. 2006 





Kaneko T, Nakamura Y, Sato S, Minamisawa K, Uchiumi T, Sasamoto S, Watanabe A, Idesawa K, Iriguchi M, Kawashima K (2002) Complete genomic sequence of nitrogen-fixing symbiotic bacterium Bradyrhizobium japonicum USDA110. DNA Res 9:189–197 





Makarova KS, Wolf YI, Snir S, Koonin EV (2011) Defense islands in bacterial and archaeal genomes and prediction of novel defense systems. J Bacteriol 193:6039–6056 





Peters JE, Fricker AD, Kapili BJ, Petassi MT (2014) Heteromeric transposase elements: generators of genomic islands across diverse bacteria. Mol Microbiol 93:1084–1092 





Toussaint A, Merlin C, Monchy S, Benotmane MA, Leplae R, Mergeay M, Springael D (2003) The biphenyl- and 4-chlorobiphenyl-catabolic transposon Tn4371, a member of a new family of genomic islands related to IncP and Ti plasmids. Appl Environ Microbiol 69:4837–4845. https://doi.org/10.1128/AEM.69.8.4837-4845.2003 





Antonenka U, Nölting C, Heesemann J, Rakin A (2006) Independent acquisition of site-specific recombination factors by asn tRNA gene-targeting genomic islands. Int J Med Microbiol 296: 341–352 





Burrus V, Pavlovic G, Decaris B, Guédon G (2002) Conjugative transposons: the tip of the iceberg. Mol Microbiol 46:601–610 





Gal-Mor O, Finlay BB (2006) Pathogenicity islands: a molecular toolbox for bacterial virulence. Cell Microbiol 8:1707–1719. https://doi.org/10.1111/j.1462-5822.2006.00794.x 





Klockgether J, Reva O, Tümmler B (2006) Spread of genomic islands between clinical and environmental strains. Paper presented at the Prokaryotic Diversity: Mechanisms and Significance: Published for the Society for General Microbiology, held at The University of Warwick April 2006, 01/01 





Martínez JL (2013) Bacterial pathogens: from natural ecosystems to human hosts. Environ Microbiol 15:325–333. https://doi.org/10.1111/j.1462-2920.2012.02837.x 





Puymège A, Bertin S, Chuzeville S, Guédon G, Payot S (2013) Conjugative transfer and cis-mobilization of a genomic island by an integrative and conjugative element of Streptococcus agalactiae. J Bacteriol 195:1142–1151 





Van Der Meer JR, Sentchilo V (2003) Genomic islands and the evolution of catabolic pathways in bacteria. Curr Opin Biotechnol 14:248–254. https://doi.org/10.1016/s0958-1669(03)00058-2 





Arashida H, Odake H, Sugawara M, Noda R, Kakizaki K, Ohkubo S, Mitsui H, Sato S, Minamisawa K (2022) Evolution of rhizobial symbiosis islands through insertion sequencemediated deletion and duplication. ISME J 16:112–121 





Busby B, Kristensen DM, Koonin EV (2013) Contribution of phage-derived genomic islands to the virulence of facultative bacterial pathogens. Environ Microbiol 15:307–312. https://doi.org/10. 1111/j.1462-2920.2012.02886.x 





Giovannoni SJ, Tripp HJ, Givan S, Podar M, Vergin KL, Baptista D, Bibbs L, Eads J, Richardson TH, Noordewier M (2005) Genome streamlining in a cosmopolitan oceanic bacterium. Science 309:1242–1245 





Koskiniemi S, Sun S, Berg OG, Andersson DI (2012) Selection-driven gene loss in bacteria. PLoS Genet 8:e1002787 





Mates AK, Sayed AK, Foster JW (2007) Products of the Escherichia coli acid fitness island attenuate metabolite stress at extremely low pH and mediate a cell density-dependent acid resistance. J Bacteriol 189:2759–2768 





Rainey FA, Oren A (2011) 1 - Taxonomy of prokaryotes – introduction. In: Rainey F, Oren A (eds) Methods in microbiology, vol 38. Academic Press, Cambridge, pp 1–5. https://doi.org/10.1016/ B978-0-12-387730-7.00001-2 





Van Elsas JD, Semenov AV, Costa R, Trevors JT (2011) Survival of Escherichia coli in the environment: fundamental and public health aspects. ISME J 5:173–183 





Battle SE, Rello J, Hauser AR (2009) Genomic islands of Pseudomonas aeruginosa. FEMS Microbiol Lett 290:70–78. https://doi.org/10.1111/j.1574-6968.2008.01406.x 





Camilli R, Bonnal RJ, Del Grosso M, Iacono M, Corti G, Rizzi E, Marchetti M, Mulas L, Iannelli F, Superti F (2011) Complete genome sequence of a serotype 11A, ST62 Streptococcus pneumoniae invasive isolate. BMC Microbiol 11:1–13 





Guérillot R, Da Cunha V, Sauvage E, Bouchier C, Glaser P (2013) Modular evolution of Tn GBS s, a new family of integrative and conjugative elements associating insertion sequence transposition, plasmid replication, and conjugation for their spreading. J Bacteriol 195:1979–1990 





Lacour S, Gaillard M, Meer J (2006) Genomic islands and evolution of catabolic pathways. In: Logan NA, Lappin-Scott HM, Oyston PCF (eds) Prokaryotic diversity: mechanisms and significance. Cambridge University Press, Cambridge, pp 255–273. https://doi.org/10.1017/ CBO9780511754913.016 





Mathee K, Narasimhan G, Valdes C, Qiu X, Matewish JM, Koehrsen M, Rokas A, Yandava CN, Engels R, Zeng E (2008) Dynamics of Pseudomonas aeruginosa genome evolution. Proc Natl Acad Sci U S A 105:3100–3105 





Rivard N, Colwell RR, Burrus V (2020) Antibiotic resistance in vibrio cholerae: mechanistic insights from IncC plasmid-mediated dissemination of a novel family of genomic islands inserted at trmE. mSphere 5:e00748–e00720 





Van Houdt R, Monsieurs P, Mijnendonckx K, Provoost A, Janssen A, Mergeay M, Leys N (2012) Variation in genomic islands contribute to genome plasticity in Cupriavidus metallidurans. BMC Genomics 13:111. https://doi.org/10.1186/1471-2164-13-111 





Bazin A, Gautreau G, Médigue C, Vallenet D, Calteau A (2020) panRGP: a pangenome-based method to predict genomic islands and explore their diversity. Bioinformatics 36:i651–i658. https://doi.org/10.1093/bioinformatics/btaa792 





Carniel E, Guilvout I, Prentice M (1996) Characterization of a large chromosomal “high-pathogenicity island” in biotype 1B Yersinia enterocolitica. J Bacteriol 178:6743–6751. https://doi.org/ 10.1128/jb.178.23.6743-6751.1996 





Guglielmini J, Quintais L, Garcillán-Barcia MP, De La Cruz F, Rocha EP (2011) The repertoire of ICE in prokaryotes underscores the unity, diversity, and ubiquity of conjugation. PLoS Genet 7: e1002222 





Langille MG, Hsiao WW, Brinkman FS (2010) Detecting genomic islands using bioinformatics approaches. Nat Rev Microbiol 8:373–382 





Melnyk RA, Engelbrektson A, Clark IC, Carlson HK, Byrne-Bailey K, Coates JD (2011) Identification of a perchlorate reduction genomic island with novel regulatory and metabolic genes. Appl Environ Microbiol 77:7401–7404. https://doi.org/10.1128/AEM.05758-11 





Rodriguez-Valera F, Martin-Cuadrado AB, López-Pérez M (2016) Flexible genomic islands as drivers of genome evolution. Curr Opin Microbiol 31:154–160. https://doi.org/10.1016/j.mib. 2016.03.014 





Vásquez-Ponce F, Higuera-Llantén S, Pavlov MS, Marshall SH, Olivares-Pacheco J (2018) Phylogenetic MLSA and phenotypic analysis identification of three probable novel Pseudomonas species isolated on King George Island, South Shetland, Antarctica. Braz J Microbiol 49:695– 702. https://doi.org/10.1016/j.bjm.2018.02.005 





Bellanger X, Payot S, Leblond-Bourget N, Guédon G (2014) Conjugative and mobilizable genomic islands in bacteria: evolution and diversity. FEMS Microbiol Rev 38:720–760. https://doi.org/ 10.1111/1574-6976.12058 





Carraro N, Rivard N, Ceccarelli D, Colwell RR, Burrus V (2016) IncA/C conjugative plasmids mobilize a new family of multidrug resistance islands in clinical vibrio cholerae non-O1/non-O139 isolates from Haiti. MBio 7:e00509–e00516 





Guo FB, Wei W, Wang XL, Lin H, Ding H, Huang J, Rao N (2012) Co-evolution of genomic islands and their bacterial hosts revealed through phylogenetic analyses of 17 groups of homologous genomic islands. Genet Mol Res 11:3735–3743. https://doi.org/10.4238/2012. October.15.5 





Lawrence JG (2001) Catalyzing bacterial speciation: correlating lateral transfer with genetic headroom. Syst Biol 50:479–496. https://doi.org/10.1080/10635150120286 





Melnyk RA, Hossain SS, Haney CH (2019) Convergent gain and loss of genomic islands drive lifestyle changes in plant-associated Pseudomonas. ISME J 13:1575–1588. https://doi.org/10. 1038/s41396-019-0372-5 





Roy Chowdhury P, Scott M, Worden P, Huntington P, Hudson B, Karagiannis T, Charles IG, Djordjevic SP (2016) Genomic islands 1 and 2 play key roles in the evolution of extensively drug-resistant ST235 isolates of Pseudomonas aeruginosa. Open Biol 6:150175 





Vo ATT, Van Duijkeren E, Gaastra W, Fluit AC (2010) Antimicrobial resistance, class 1 integrons, and genomic island 1 in salmonella isolates from Vietnam. PLoS One 5:e9440. https://doi.org/ 10.1371/journal.pone.0009440 





Bertelli C, Tilley KE, Brinkman FSL (2019) Microbial genomic island discovery, visualization and analysis. Brief Bioinform 20:1685–1698. https://doi.org/10.1093/bib/bby042 





Chan AP, Sutton G, Depew J, Krishnakumar R, Choi Y, Huang X-Z, Beck E, Harkins DM, Kim M, Lesho EP (2015) A novel method of consensus pan-chromosome assembly and large-scale comparative analysis reveal the highly flexible pan-genome of Acinetobacter baumannii. Genome Biol 16:1–28 





Guzman MG, Harris E (2015) Dengue. Lancet 385:453–465. https://doi.org/10.1016/s0140-6736 (14)60572-9 





Lawrence JG, Roth JR (1996) Selfish operons: horizontal transfer may drive the evolution of gene clusters. Genetics 143:1843–1860 





Milkman R (2004) Horizontal transfer, genomic diversity, and genomic differentiation. In: Microbial evolution. Wiley, Hoboken, pp 295–318 





Sansevere EA, Luo X, Park JY, Yoon S, Seo KS, Robinson DA (2017) Transposase-mediated excision, conjugative transfer, and diversity of ICE 6013 elements in Staphylococcus aureus. J Bacteriol 199:e00629–e00616 





Wang H, Smith MC, Mullany P (2006) The conjugative transposon Tn 5397 has a strong preference for integration into its Clostridium difficile target site. J Bacteriol 188:4871–4878 





Chen J, Ram G, Penadés JR, Brown S, Novick RP (2015) Pathogenicity island-directed transfer of unlinked chromosomal virulence genes. Mol Cell 57:138–149 





Hacker J, Blum-Oehler G, Mühldorfer I, Tschäpe H (1997) Pathogenicity islands of virulent bacteria: structure, function and impact on microbial evolution. Mol Microbiol 23:1089–1097 





Leal NC, Campos TL, Rezende AM, Docena C, Mendes-Marques CL, De Sá Cavalcanti FL, Wallau GL, Rocha IV, Cavalcanti CL, Veras DL (2020) Comparative genomics of Acinetobacter baumannii clinical strains from Brazil reveals polyclonal dissemination and selective exchange of mobile genetic elements associated with resistance genes. Front Microbiol 11:1176 





Mingoia M, Morici E, Marini E, Brenciani A, Giovanetti E, Varaldo PE (2016) Macrolide resistance gene erm (TR) and erm (TR)-carrying genetic elements in Streptococcus agalactiae: characterization of ICE Sag TR7, a new composite element containing IME Sp 2907. J Antimicrob Chemother 71:593–600 





Scherer CA, Miller SI (2001) Chapter 7 - Molecular pathogenesis of salmonellae. In: Groisman EA (ed) Principles of bacterial pathogenesis. Academic Press, San Diego, pp 265–333. https://doi. org/10.1016/B978-012304220-0/50008-X 





Welch RA, Burland V, Plunkett G, Redford P, Roesch P, Rasko D, Buckles EL, Liou S-R, Boutin A, Hackett J, Stroud D, Mayhew GF, Rose DJ, Zhou S, Schwartz DC, Perna NT, Mobley HLT, Donnenberg MS, Blattner FR (2002) Extensive mosaic structure revealed by the complete genome sequence of uropathogenic Escherichia coli. Proc Natl Acad Sci 99:17020– 17024. https://doi.org/10.1073/pnas.252529799 





Chen PE, Cook C, Stewart AC, Nagarajan N, Sommer DD, Pop M, Thomason B, Thomason MPK, Lentz S, Nolan N (2010) Genomic characterization of the Yersinia genus. Genome Biol 11:1–18 





Hacker J, Carniel E (2001) Ecological fitness, genomic islands and bacterial pathogenicity. A Darwinian view of the evolution of microbes. EMBO Rep 2:376–381. https://doi.org/10.1093/ embo-reports/kve097 





Lerminiaux NA, Mackenzie KD, Cameron AD (2020) Salmonella pathogenicity island 1 (SPI-1): the evolution and stabilization of a core genomic type three secretion system. Microorganisms 8: 576 





Morris JJ, Lenski RE, Zinser ER (2012) The Black Queen Hypothesis: evolution of dependencies through adaptive gene loss. MBio 3:e00036–e00012 





Schmidt H, Hensel M (2004) Pathogenicity islands in bacterial pathogenesis. Clin Microbiol Rev 17:14–56 





Williams KP (2002) Integration sites for genetic elements in prokaryotic tRNA and tmRNA genes: sublocation preference of integrase subfamilies. Nucleic Acids Res 30:866–875 





Da Silva Filho AC, Raittz RT, Guizelini D, De Pierri CR, Augusto DW, Dos Santos-Weiss ICR, Marchaukoski JN (2018) Comparative analysis of Genomic Island prediction tools. Front Genet 9:619. https://doi.org/10.3389/fgene.2018.00619 





Hadjilouka A, Paramithiotis S, Drosinos EH (2018) Genetic analysis of the Listeria Pathogenicity Island 1 of Listeria monocytogenes 1/2a and 4b isolates. Curr Microbiol 75:857–865 





Letzel A-C, Li J, Amos GCA, Millán-Aguiñaga N, Ginigini J, Abdelmohsen UR, Gaudêncio SP, Ziemert N, Moore BS, Jensen PR (2017) Genomic insights into specialized metabolism in the marine actinomycete Salinispora. Environ Microbiol 19:3660–3673. https://doi.org/10.1111/ 1462-2920.13867 





Neilands JB (1995) Siderophores: structure and function of microbial iron transport compounds. J Biol Chem 270:26723–26726. https://doi.org/10.1074/jbc.270.45.26723 





Shankar N, Baghdayan AS, Gilmore MS (2002) Modulation of virulence within a pathogenicity island in vancomycin-resistant Enterococcus faecalis. Nature 417:746–750. https://doi.org/10. 1038/nature00802 





Wyrsch ER, Chowdhury PR, Jarocki VM, Brandis KJ, Djordjevic SP (2020) Duplication and diversification of a unique chromosomal virulence island hosting the subtilase cytotoxin in Escherichia coli ST58. Microb Genom 6:e000387 





Darmon E, Leach DRF (2014) Bacterial genome instability. Microbiol Mol Biol Rev 78:1–39. https://doi.org/10.1128/MMBR.00035-13 





Hall RM (2010) Salmonella genomic islands and antibiotic resistance in Salmonella enterica. Future Microbiol 5:1525–1538. https://doi.org/10.2217/fmb.10.122 





Li W, Wang A (2021) Genomic islands mediate environmental adaptation and the spread of antibiotic resistance in multiresistant Enterococci - evidence from genomic sequences. BMC Microbiol 21:55. https://doi.org/10.1186/s12866-021-02114-4 





Nishi A, Tominaga K, Furukawa K (2000) A 90-kilobase conjugative chromosomal element coding for biphenyl and salicylate catabolism in Pseudomonas putida KF715. J Bacteriol 182:1949– 1955 





Shapiro BJ (2016) How clonal are bacteria over time? Curr Opin Microbiol 31:116–123. https://doi. org/10.1016/j.mib.2016.03.013 





Xiang L, Li G, Wen L, Su C, Liu Y, Tang H, Dai J (2021) Biodegradation of aromatic pollutants meets synthetic biology. Synth Syst Biotechnol 6:153–162 





Dengler Haunreiter V, Boumasmoud M, Häffner N, Wipfli D, Leimer N, Rachmühl C, Kühnert D, Achermann Y, Zbinden R, Benussi S (2019) In-host evolution of Staphylococcus epidermidis in a pacemaker-associated endocarditis resulting in increased antibiotic tolerance. Nat Commun 10:1–14 





Hargreaves KR, Thanki AM, Jose BR, Oggioni MR, Clokie MR (2016) Use of single molecule sequencing for comparative genomics of an environmental and a clinical isolate of Clostridium difficile ribotype 078. BMC Genomics 17:1–12 





Lima WC, Paquola AC, Varani AM, Van Sluys M-A, Menck CF (2008) Laterally transferred genomic islands in Xanthomonadales related to pathogenicity and primary metabolism. FEMS Microbiol Lett 281:87–97 





Novick RP, Christie GE, Penadés JR (2010) The phage-related chromosomal islands of Grampositive bacteria. Nat Rev Microbiol 8:541–551 





Shea JE, Hensel M, Gleeson C, Holden DW (1996) Identification of a virulence locus encoding a second type III secretion system in Salmonella typhimurium. Proc Natl Acad Sci U S A 93: 2593–2597. https://doi.org/10.1073/pnas.93.6.2593 





Desvaux M, Dalmasso G, Beyrouthy R, Barnich N, Delmas J, Bonnet R (2020) Pathogenicity factors of genomic islands in intestinal and extraintestinal Escherichia coli. Front Microbiol 11: 2065 





Hickey W, Chen S, Zhao J (2012) The phn island: a new Genomic Island encoding catabolism of Polynuclear aromatic hydrocarbons. Front Microbiol 3:125. https://doi.org/10.3389/fmicb. 2012.00125 





Lindsay JA, Ruzin A, Ross HF, Kurepina N, Novick RP (1998) The gene for toxic shock toxin is carried by a family of mobile pathogenicity islands in Staphylococcus aureus. Mol Microbiol 29:527–543 





Novick RP, Ram G (2016) The floating (pathogenicity) island: a genomic dessert. Trends Genet 32: 114–126. https://doi.org/10.1016/j.tig.2015.11.005 





Siguier P, Gourbeyre E, Chandler M (2014) Bacterial insertion sequences: their genomic impact and diversity. FEMS Microbiol Rev 38:865–891 





Didelot X, Méric G, Falush D, Darling AE (2012) Impact of homologous and non-homologous recombination in the genomic evolution of Escherichia coli. BMC Genomics 13:1–15 





Jin HM, Jeong H, Moon EJ, Math RK, Lee K, Kim HJ, Jeon CO, Oh TK, Kim JF (2011) Complete genome sequence of the polycyclic aromatic hydrocarbon-degrading bacterium Alteromonas sp. strain SN2. J Bacteriol 193:4292–4293. https://doi.org/10.1128/jb.05252-11 





Liu F, Zhu Y, Yi Y, Lu N, Zhu B, Hu Y (2014) Comparative genomic analysis of Acinetobacter baumannii clinical isolates reveals extensive genomic variation and diverse antibiotic resistance determinants. BMC Genomics 15:1–14 





Ochman H, Lawrence JG, Groisman EA (2000) Lateral gene transfer and the nature of bacterial innovation. Nature 405:299–304. https://doi.org/10.1038/35012500 





Smillie C, Garcillán-Barcia MP, Francia MV, Rocha EP, De La Cruz F (2010) Mobility of plasmids. Microbiol Mol Biol Rev 74:434–452 





Dobrindt U, Hochhut B, Hentschel U, Hacker J (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2:414–424 





Johnson CM, Grossman AD (2015) Integrative and conjugative elements (ICEs): what they do and how they work. Annu Rev Genet 49:577–601. https://doi.org/10.1146/annurev-genet-112414-055018 





Ogier J-C, Calteau A, Forst S, Goodrich-Blair H, Roche D, Rouy Z, Suen G, Zumbihl R, Givaudan A, Tailliez P (2010) Units of plasticity in bacterial genomes: new insight from the comparative genomics of two bacteria interacting with invertebrates, Photorhabdus and Xenorhabdus. BMC Genomics 11:1–21 





Soucy SM, Huang J, Gogarten JP (2015) Horizontal gene transfer: building the web of life. Nat Rev Genet 16:472–482 





Dokland T (2019) Molecular piracy: redirection of bacteriophage capsid assembly by mobile genetic elements. Viruses 11:1003 





Osborn AM, Böltner D (2002) When phage, plasmids, and transposons collide: genomic islands, and conjugative- and mobilizable-transposons as a mosaic continuum. Plasmid 48(3):202–212. https://doi.org/10.1016/s0147-619x(02)00117-8 





Sullivan JT, Brown SD, Ronson CW (2013) The NifA-RpoN regulon of Mesorhizobium loti strain R7A and its symbiotic activation by a novel LacI/GalR-family regulator. PLoS One 8:e53762 





Otto M (2009) Staphylococcus epidermidis—the ‘accidental’ pathogen. Nat Rev Microbiol 7:555– 567 





Te Poele EM, Bolhuis H, Dijkhuizen L (2008) Actinomycete integrative and conjugative elements. Antonie Van Leeuwenhoek 94:127–143 



# Genomic Islands in the Gut Microbiome: Current Knowledge and the Application in the Probiotics Field

6 

Duy-Ha Nguyen, Nguyen Thai Son, and Dinh Toi Chu 

## Abstract

Intestinal microorganisms play a significant role in human health, they are considered part of the human being. The number of functional genes in intestinal microorganisms far exceeds those in human functional genes and contributes to many metabolic processes related to the state of health and pathology of the body. The number and degree of diversity of intestinal microorganisms varies with a number of factors such as age, psychology, eating habits, drug consumption, place of residence in the digestive tract, and medical condition of the body. All bacteria, viruses, their genomes and environmental factors found in the human colon make up the intestinal microbiome. Microorganisms are closely connected to the hosts and are distinguished by genomic islands (GIs), which play an important role in microbe evolution and genetics. At this time, with the development of genome sequencing tools, the relationships between bacteria and hosts are increasingly well established and the role of gut microflora is confirmed. In this chapter, we find out about the genomic islands present in the intestinal microflora and focus on pathogenicity islands (PAI), symbiotic islands, antibiotic resistance genetic (ARG), and mobile genomic elements (MGEs). The connection between GIs and human health and its role in the way microorganisms evolve. The role of genomic islands is linked to human health in relation to probiotics, especially probiotics of current interest. 

D.-H. Nguyen · N. T. Son 

Department of Microbiology, Vietnam Military Medical University, Hanoi, Vietnam 

D. T. Chu (✉) 

Center for Biomedicine and Community Health, International School, Vietnam National University, Hanoi, Vietnam 

Faculty of Applied Sciences, International School, Vietnam National University, Hanoi, Vietnam 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_6 

## Keywords

Genomic islands · Gut microbiome · Current knowledge · Probiotics field 

## 6.1 Introduction

The human intestinal microbiota is believed to contain more than $1 0 ^ { 1 4 }$ microorganisms and has a genome that is 100 times larger than the human genome (Gill et al. 2006). The whole length of the digestive tract is covered in bacteria, which play a crucial role in controlling gut physiology (Natividad and Verdu 2013), improves the integrity of the intestinal epithelium, contributes to the digestion of food (den Besten et al. 2013), protects the body from pathogens and strengthens the body’s immune system (Bäumler and Sperandio 2016; Gensollen et al. 2016). However, the microbial components in the intestinal tract are unstable, which can be changed by external factors such as individual, family, race, gender, age, eating habits, region, and lifestyle, which affect the health of the host. Mutations, horizontal gene transfer, and gene rearrangement are all examples of how microorganisms evolve and adapt. Secondary genes are unusual portions of the bacterial genome called genotypes that play a crucial role in evolution and adaptation. They are derived by horizontal gene transfer (HGT), and microorganism diversity (Juhas et al. 2009). There are numerous types of GIs based on the biological function of genes on the island. Aside from symbiotic islands and pathogenicity islands, antibiotic-resistant islands contain genes that encode proteins linked to antibiotic resistance (Schmidt and Hensel 2004). GIs has a size of 10–200 kb with a specific content of %GC and a frequency of dinucleotides (Juhas et al. 2009). The genes of GIs are often collected to fulfill specific functions and are beneficial for bacterial growth (Hacker and Carniel 2001). As a result, they provide selective advantages to microorganisms that have genomic islands within the population. Pathogenicity islands, for example, can induce significant changes in bacterial phenotype and are predominantly studied in genetic islands. In the intestinal tract, some pathogenicity islands are associated with the virulence of bacterial pathogens and clinical symptoms of the disease. Both V. cholerae and E. coli bacteria that produce intestinal toxins stimulate bowel movement and release water into the intestines of infected people result in the spread of bacteria directly through feces. Microbial transmission is often a result of coded pathogen factors such as adhesives and toxins. Antibioticresistant gene islands have also been studied extensively in GIs-related issues. The level of antibiotic resistance causes a great deal of difficulty in treating infectious diseases. Increased bacterial pathogenicity and antibiotic resistance factors are linked to GIs, showing their role in microorganism evolution (Juhas et al. 2009). A factor implicated in the genetic genetics of antibiotic resistance is the horizontal transfer of HGT genes, which promotes the development of superbacteria containing antibiotic-resistant genes (Lerminiaux and Cameron 2019). The primary cause of the spread of antibiotic-resistant genes in humans and animals is horizontal gene transfer via plasmids (Liu et al. 2020). Variability, synthesis, and gene transfer are all pathways that lead to the transfer of antibiotic-resistant genes. Some substances facilitate the transfer of ARG genes among certain bacterial strains such as E.coli, S. typhirumium (Zhang et al. 2017). HGT is mediated by moving genetic factors which are DNA fragments that encode proteins that help with intracellular motion (inside cells) and between cells (cell mobility). The mobile genetic elements is copious and consist of phages, plasmids and gene islands (Flores-Ríos et al. 2019). MGEs are essentially genomic DNA sections that can migrate from one genomic region to another or between genomes. Bacterial genome are made of MGEs as 11% of the Clostridium difficile genome consists of mobile genetic element, providing the bacterium with a remarkable genetic character (Sebaihia et al. 2006). MGEs have a component including plasmid, insertion sequence (IS) elements, intergrated elements (IE). It has been demonstrated that GIs can move from one cell to the next step by step (1) achieved through horizontal transfer, (2) corresponds to the suitable site, incorporated into the host chromosomal, (3) generated as a result of gene rearrangement, loss, and acquisition, (4) take out the chromosome (5) send to a different person (Juhas et al. 2009). 

## 6.2 Common and Specific Features of Gut Microbiome

A group of microorganisms that dwell in the human gastrointestinal system is known as gut microflora, in the human intestine, including bacteria, fungus, viruses, their genomes, and environmental circumstances (Marchesi and Ravel 2015). In the digestive tract, microorganisms have a metabolic relationship and interdependency, which are prevalent in the human gut and play a role in the intestinal endothelium balance, constituting the natural environment for most symbiotic bacteria (Guarner 2015). The intestinal microflora and the host have a symbiotic relationship in which the host provides the environment and nutrients for bacteria to survive and grow, while the microflora aids metabolism, digestion, and intestinal immune system strength by providing beneficial nutrients such as vitamins and short-chain fatty acids (SCFAs) (Kau et al. 2011; McDermott and Huffnagle 2014). Firmicutes, Bacteroidetes, Proteobacteria, and Actinobacteria make up the majority of bacteria in healthy humans microbiomes (Wright et al. 2015). The lack of diversity in the intestinal microbiome has been linked to a variety of illnesses, including obesity and inflammatory bowel disease (Turnbaugh et al. 2008; Qin et al. 2010), the great diversity of bacterial vaginosis. Currently, the most commonly used method for determining the classification and assessment of the diversity of species of organisms is gene sequencing, which encodes the small subunit of ARN ribosome (16S rRNA). For phylogenetic investigations of microbial communities and providing classification names to bacteria, 16S rRNAs are considered the gold standard (Huse et al. 2012). Another research strategy is to sequence the entire genome, which will reveal all of the genes present in the sample. Genome sequencing also allows for the research of functional and metabolic networks, as well as the identification of genes from non-bacterial species, such as viruses, yeasts, and protozoa (Li et al. 2014). Differences exist between the microorganisms that live in the intestinal tract and the intestinal mucosa in the same individual. Moreover, the species of bacteria found in the gut vary from the colon to the rectum. For instance, in the small intestine, where there are plenty of nutrients and oxygen, antibacterial peptides with higher pH so Lactobacillaceae and Enterobacteriae dominate. Slow transit periods and the lack of simple sugars in the colon encourage the proliferation of anaerobic bacteria such as Bacteroidaceae, Prevotellaceae, Rikenellaceae, Lachnospiraceae, and Ruminococcaceae, which break down polysaccharides (Donaldson et al. 2016). In areas far away from the colon, species that degrade mucus and proteins are common. At the genus and phylum level, bacteria linked with the mucous membranes of the rectal endile are more stable, but plaques are not homogeneous in the same location of the gut. Most strains of intestinal microorganisms have been resident for decades, though their performance changes over time for a given individual. . . However, factors such as high-carb diet lead to increase in the ratio of Firmicutes and Bacteroidetes (Maier et al. 2017), lifestyle (smoking, walking, physical activity), intestinal diseases which impact the microbial composition of the host intestine (Gilbert et al. 2018; Allaband et al. 2019). Intestinal microflora also varies with age, growing through childhood to adulthood and decreasing when old. The intestinal microflora of adults has a steady maintenance structure over time. Microflora in infants is less stable, from a sterile condition to a densely populated area of microorganisms and at a stable stage of development in adulthood. However, the composition of microorganisms in newborn also depends heavily on the reproductive form of the child (Palmer et al. 2007). For example, babies frequently receive the same vaginal microbiota as their mothers’, primarily species like Lactobacillus, Prevotella, Sneathia spp. The intestinal microbiota of babies born through cesarean section is comparable to that of the mother’s skin, with Staphylococcus, Corynebacterium, and Propionibacterium spp. (Dominguez-Bello et al. 2010). These characteristics of nourishment also affect intestinal microorganisms. A study showed that in breastfed babies, the microbiome is quickly dominated by Bifidobacterial bacteria, and a more diverse microbiome than babies fed with formula (Favier et al. 2002). Food-induced alterations in the microbiome have played a part in the varied rates of age-related health deterioration in senior persons, according to a link between indications of weakness, nutrition, and markers of inflammation. Most bacterial groups’ species diversity is reduced as people get older, making the microbiome less responsive to external stressors (Salazar et al. 2013). The change of prevailing species in certain groups of bacteria, the decline of useful bacteria, the increase of harmful bacteria, genders, ethnicity, and geographic location have an effect on the taxonomic composition of microbial biomes (Gaulke and Sharpton 2018). 

## 6.3 The Gut Microbiome Flexible Gene Pool

In bacterial genetics, horizontal gene transfer is crucial. They are usually 10–500 kb in size and can be integrated into bacterial chromosomes to provide favorable aspects to bacterial cells. Bacterial growth in the new environment is aided by factors, such as metabolic capacity, antibiotics resistance, and toxic substances (Soucy et al. 2015; Dobrindt et al. 2004). The original formation of genome islands is a horizontal genetic factor that produces bacterial genetic characteristics. Mobile genomic islands are tiny genomic islands (around 20 kb) that can travel from one cell to next due to a common aberrant mechanism (Daccord et al. 2010). Within the bacterial genome, they always have a number of flexible genes. They can move through the bacterial genome or between bacteria through mechanisms like feeding, loading, gene transfer. In bacterial genome analysis, we consider GIs to be part of the flexible genetic capital (Dobrindt et al. 2004), which is associated with bacterial genetics. Genetic islets may be present in pathogenic or non-pathogenic bacteria. These are clusters of genes that cover certain Kbp’s that are reflected in GC content, that may differ from other parts of the central genome. GIs usually code for virulence or adaptive traits and are often associated with the tRNA or the integrated gene at one end of the genetic islet (Dobrindt et al. 2004). Most GIs derived from genetic factors have lost the mobile gene through evolution, but some retain the ability to propagate from one cell to another through fusion or loading. 

They are called integrative and conjugative elements (ICEs) and prophages respectively. ICEs are elements that, depending on their location, encode their own elimination by recombination. Their transfer through integration and integration, regardless of integration and convergence method. For example, selfconjugated and integrated GIs have been found in Streptococcus agalactiae, which does not rely on site-specific recombination but on transposase DDE (Brochet et al. 2009; Guérillot et al. 2013). As a result, the ICEs definition should also include conjugated MGEs that circulate and integrate through a DDE translocation enzyme. ICE is available in sizes varying from 11 kb (pSAM2 of S. ambofaciens) to 674 kb (PAISt from Streptomyces turgidiscabies) (Pernodet et al. 1984; Huguet-Tapia et al. 2011; Kers et al. 2005). Many genome islands are encircled by repetitive structures and contain remnants of various subcellular and cellular genetic components including phages, plasmids, and sequential insertion elements. These transport genes differ considerably even among ICEs carriers of closely related conjugated and recombinant modules. 

Antibiotics, heavy metals, or antimicrobial, sacaroza catabolism, bacterial synthesis, pathogenesis, or symbiosis are examples of functions unrelated to their ability to move in and out of cells that can provide hosts a major selection advantage or even transform their lifestyle (Juhas et al. 2009; Dobrindt et al. 2004; Wozniak and Waldor 2010). The genomes of intestinal bacteria are highly variable, partly because of the transverse transfer of the mobile genomic elements, including plasmid, bacteria, and conjugated translocations (CTns) (Burrus and Waldor 2004; Ochman et al. 2000). Phages and CTns play an important role in functional gene transfer, including antibiotic resistance, excretion systems, and secretions, as well as other pathogenic features among bacterial hosts of the intestinal microbiome (Rodríguez-Blanco et al. 2012). 

## 6.4 Genomic Islands of the Gut Microbiome

## 6.4.1 Pathogenicity Islands

Pathogenic islands are important factors for bacterial virulence. It is another form of bacterial gene factor, described for the potentially pathogenic strain of Escherichia coli (Blum et al. 1994). Various genes play a part in adaptation, intracellular proliferation, bacterial survival and spread, and these genes also determine the degree of bacterial virulent activity that is known as the genes situated in the region called “islands are associated with pathogenesis” in the chromosomes of pathogenic bacteria which code different products and determine the virulence of bacteria. When these gene regions, which are found only in pathogenic species, are transferred to non-pathogenic species through cross-functional gene transfer. They also deliver complex virulence factors to the bacteria to which they are transferred. Pathogen islands are probably mostly carriers of functional genes or encode mobile elements such as integration, translocation, and insertion sequencing factors (Schmidt and Hensel 2004). The structure of the PAIs may contain one or more virulent genes that are present only in bacterial pathogens but in the same closely related bacterial species. The size of the PAIs (10–200 Kb)constitutes the major part of the genome size, which is different from the basic genome in terms of GC composition and G C content. It is present within the genome, which is proof of foreign origin and reception of horizontal genes. PAIs are typically located close to tRNA genes, which are often combined with genetic factors such as phage, plasmid, insertion factor or transposon (Hacker et al. 1997). These cellular components are involved in the recombination of gene segments, which results in rearrangement, insertion, paragraph loss, and, as a result, pai variation. Pathogenic pathways in Salmonella use two T3SS-1 coded by Pathogen Island 1 (SPI-1) and Pathogen Island 2 (SPI-2) (Dobrindt et al. 2010). T3SS-1 is encoded by SPI-1, a cluster gene with a 40-kb domain that controls the expression of numerous pathogenic genes (Lou et al. 2019). The SPI-1 gene’s islands play an important function in the entrance of bacteria into the intestine and stimulate neutrophil growth. This process involves transcription kits with the expression of invF and hilA as these are SPI-1 gene transcription activators. PAI-coding genes can be used by E.coli bacteria to manufacture a variety of toxins, including α-haemolysin, CNF-1 and deforming toxins and colibactin. In inflammatory bowel disease (IBD), E.coli PAI increases adherence to intestinal epithelial cells, crossing the mucosal layer, improvement antibacterial properties, entrance in the epithelium, permeability and enhance the immune system (Palmela et al. 2018). The pathogenic island Vibrio cholerae identified as VPI contains the aldA and tagA genes that are involved in bacterial pathogenic mechanisms. VPI is about 40 kb in size and contains a G + C content of 35%, whereas the average G + C concentration of the V. cholera genome is between 47% and 49%. VPI is also inserted next to ssrA, a gene similar to tRNA that is surrounded by att locations. The toxin-coding VPI works as a necessary colony factor in contributing to V. cholera adhesion in the epithelial area (Palmela et al. 2018; Karaolis et al. 1998). Cytolysin toxin (Cyl) and the surficial protein Esp are two virulence factors produced by E. faecalis. The virulence factors contribute by the genes in PAI that are 154-kb in size and contain $c y l ,$ esp operon and some unknown functional genes. This zone has a G + C content of 32.2%, which is below the amount of E. faecalis ‘s core genome and implies that the bacteria genome is genetically unstable. Genes within the PAIs have sequential similarities to those of intestinal plasmids, possibly due to the chromosomal integration of a plasmid (Dobrindt et al. 2010). 

## 6.4.2 Symbiosis Islands

The symbiotic genes of bacteria are generally carried on symbiotic islands or plasmids which can be exchanged horizontally between different bacterial species. The symbiotic genes involved in transverse transfer have different phylogenes for their host’s main genome. The symbiotic island is larger than any studied island so far, comprising 10% of the host genome and its ability to transmit has been proven (Sullivan and Ronson 1998). 

## 6.4.3 Antibiotic Resistance Genes

Antibiotic resistance is rising as a result of misuse in clinical settings. Many kinds of ultra-resistant bacteria exist nowadays, making the treatment of infectious diseases difficult. Horizontal gene transfer is one of the most well-known resistance mechanisms and the primary cause of the creation of multi-antibiotic-resistant bacteria. Horizontal gene transfer occurs when bacteria with no paternal tie to their offspring exchange genes (Soucy et al. 2015). The main mechanisms associated with HGT are the synthesis process, the power variable and the load. Combining several genetic factors, such as transopon and plasmid, is the most effective (Redondo-Salvo et al. 2020). Sequencing the whole genome of six drug-resistant diseases in the intestine has resulted in numerous genetic factors and horizontal gene transfers (Kumar et al. 2017). In particular, new mechanisms of antibiotic resistance are constantly emerging that some species of intestinal microflora, such as Campylobacter, appear to be multi-resistant genetic islets. Recently it has been discovered to contain a number of genes associated with resistance to aminoglycosides and macrolides. In Enterobacter sp. and P. aeruginosa, excessive occurrence of blaAmpC is caused by regulatory genetic mutations (Ruppé et al. 2015). In the presence of ampC cephalosporinase, this overexpressed gene disrupts the enzymemuscle ratio, thus causing resistance to penicillin and broad-spectrum cephalosporin. Other methods of resistance to penicilin in Pneumococci include genetic alterations that bind to the protein 2b (pbp2b) in penicilin. Mutations in the rpsL gene, which codes for the ribosomal protein, cause structural alterations. Changes in the target drug binding, resulting in resistance to various aminoglycoside antibiotics. The transfer of medication-resistant genesis is mediated by bacteria to new bacterial species such as those of methicillin-resistant Staphylococcus aureus (MRSA) 

(Hasan et al. 2021) that have acquired the drug-resistant mecA gene from other bacterial species by transferring the feed (Hasan et al. 2021). The natural transformation occurs when antibiotic-resistant genes from the DNA of dead bacteria can be acquired and embedded into the chromosomes of other bacteria through homogeneous recombination. Natural transformation has occurred in numerous clinically pathogenic bacterial species such as Streptococcus pneumoniae that have acquired penicillin-binding proteins (PBP2Bs) from the bacterium Streptococcus mitis; Neisseria gonorrhoeae acquire the ceftriaxone-resistant penA gene by natural transformation (Unemo et al. 2012). In addition, pharmacoresistant genes are also inherited by MGE such as different types of plasmids and transposons (Frost et al. 2005; Alekshun and Levy 2007). Most drug-resistant genes for gram-negative bacteria which cause clinical transfer of gene diseases by plasmid. For example, carbapenemase enzymes of enterobacteria and other gram-negative bacteria are resistant to antibiotic-resistant genes. It contains plasmid which can be rapidly spread to other sensitive bacteria by conjugation (Paterson and Bonomo 2005). Human health is jeopardized by drug resistance to conjugated plasmidic-mediated medicines. Because the enzyme carbapenemases—the final antibacterial weapon against Gram-negative bacteria. ...as well as other beta-lactams have been found on a variety of plasmids (Kumarasamy et al. 2010; Yong et al. 2009). Genetic transmission by integrated chromosome factors is also achieved by mediating the synthesis process. This mechanism of drug-resistant spread occurs mostly in Gramnegative bacteria and also in some gram-positive bacterial species such as Streptococci spp. (San 2018). Many drug resistances have been spread by plasmids such as the conjugate plasmid carrying the SGI1 gene of Salmonella spp. and carbapenem resistance in Acinetobacter baumannii that is associated with a pABTJ1 conjugated plasmid (Vo et al. 2010; Huang et al. 2012). During the evolution, the conjugate was metabolized between Klebsiella pneumonia and E. coli in terms of drug-resistant carbapenems in hospitalized patients (Mulvey et al. 2011). Plasmid clearly leads to antibiotic resistance in both the environment and clinical illnesses. 

## 6.4.4 Chromosomal Mobile Genetic Elements

Many creatures, including plants, animals, and people, have evolved and genetically varied as a result of GMEs (Bock 2010; Iyer et al. 2004). The human genome contains approximately 200 genes that have similarities to those that code bacterial proteins, possibly due to the horizontal transfer of bacteria during human evolution. In the intestinal bacterial genome, genes from starchy fecal bacteria were found to be associated with lateral transgenic with intestinal microflora (Arias et al. 2012). Some intestinal bacteria have gained genes important for bacterial evolution and development through conjugation, such as bacteroids that have acquired new beneficial genes from microorganisms in the environment (Hehemann et al. 2010). Bacteroids are the most common bacteria in the human intestinal microbiome, and they use the outer membrane protein complex to harvest huge amounts of food and host glycoprotein. MGEs is composed of members such as phage, plasmid, transposon, and insertion sequence (Leplae et al. 2010). They play an important role in mobilizing and reorganizing genes, whether in a genome or between bacterial cells. Plasmid’s function in gut bacteria includes cell membrane biosynthesis, homeostasis, nutrient absorption, and bacteriocin production (Claesson et al. 2006; Jones 2010). Plasmids have been found to contain functions that help bacteria to thrive, such as epithelial cell adhesion, virulence factors, and antibiotic resistance. In rats with Salmonella spp.-induced inflammatory bowel illness, the presence of E.coli in the intestinal tract increased, resulting in the transfer of the colicinplasmid gene p2 from Salmonella spp. to E. coli (Stecher et al. 2012).. Plasmids play a key role in the spread of antibiotic-resistant genes among pathogens, resulting in the establishment of multidrug-resistant bacteria strains. Transposons are often associated with clinical resistance like in enterobacteria, the gene blaNDM-1 in pathogens is a synthetic transposon inside and between bacterial species (Nordmann et al. 2012). Antibiotic resistance genes in E. coli are linked to genetic elements such transposons and gene bands (Poirel et al. 2018). In Clostridium difficile bacteria, genetic factors constitute the virulence in their genomes (Sebaihia et al. 2006). The main virulence factors of bacteria transferred to genetic islets through integrated CT. Therefore, MGEs have a profound effect on the pathogenic ability of bacteria. MGEs also have an impact on bacterial biology, such as the dissemination of antibiotic resistance and other phenotypes that help bacteria thrive in harsh settings. 

## 6.5 The Application in the Probiotics Field

Probiotics are described as “a living microorganism that confers a benefit to the host when provided in appropriate amounts.” (Probiotics in food: health and nutritional properties and guidelines for evaluation: report of a joint FAO/WHO expert consultation on evaluation of health and nutritional properties of probiotics in food including powder milk with live lactic acid bacteria, Cordoba, Argentina, 1–- 4 October 2001 [and] Report of a joint FAO/WHO working group on drafting guidelines for the evaluation of probiotics in food, London, Ontario, Canada, 30 April–1 May 2002. Rome [Italy]: Food and Agriculture Organization of the United Nations, World Health Organization 2006) Lactobacilli and Bifidobacteria are the most common bacteria employed. The role of probiotics is demonstrated by interacting with intestinal microflora, improving beneficial microflora and limiting harmful microflora, and regulating the body’s immune system. The activation of the pepQ gene by CcpA in the investigation of genomic islands of lactic acid bacteria involved in carbon and nitrogen metabolism (Zomer et al. 2007). GlnR and CodY are two nitrogen control genes found in lactic acid bacteria. GlnR and CodY are two nitrogen-control genes found in lactic acid bacteria (Kormelink et al. 2012). Lactococcus lactis MG 136 has CodY control over more than 30 genes involved in amino acid metabolism (Guédon et al. 2005). Furthermore, the Lactococcus lactis IL1403 bacterium strain possesses pili-producing genes that may be expressed and engaged in biofilm formation (Oxaran et al. 2012). The presence of pili-producing genes confers the bacterium a competitive edge in different environments. Furthermore, certain beneficial bacteria used as probiotics have the ability to inhibit intestinal pathogens like Bifidobacterium thermophilum RBL67, which regulates the expression of genes linked to SPI-1 and SPI-2 resulting in excessive energy expenditure and protective activity against Salmonella infection (Tanner et al. 2016). In lactic bacteria, CTns are known to be resistant to tetracycline, vancomycin, and erythromycin, which increase the tolerance of bacteria in the intestine to undesired factors followed by the potential use of laboratory bacteria for probiotic production (Broaders et al. 2013). Genome analysis between two L. rhamnosus strains that revealed the presence of genomic islands can transport and metabolize proteasedependent sugars encoded by spaCBA (Kankainen et al. 2009). The spaC gene has been found to promote L. rhamnosus adhesion to human intestinal mucus. It also demonstrates the role of the spaC gene in bacterial survival in the digestive tube. Analyzing the mutation of the Tad gene group in Bifidobacterium breve UCC200 is an important factor for bacterial invasion and uptake in the intestinal parenchyma of mice (O'Connell Motherway et al. 2011). 

This research reveals that a variety of cell surface components have a role in probiotic attachment to the human gut epithelium. The glgBCDAP - amy - pgm gene, found on an operon in Lactobacillus acidophilus, contributes to glycogen metabolism and is involved in the bacteria’s energy production, carbohydrate, and amino acid metabolism (Eydallin et al. 2010). Probiotic activity and L. acidophilus retention in the human intestinal environment are aided by glycogen metabolism (Goh and Klaenhammer 2013). 

## 6.6 Conclusion

The intestinal microflora is a part of the human body that participates in the metabolism of the body and is implicated in the appearance of various pathologies. Discovering and analyzing the genetic information of the intestinal microbiota is as important as analyzing the human genome. Genetic information on the intestinal microbiota, genes codifying the main microbial functions, antibiotic resistance mechanisms and bacterial virulence genes. In particular, islets of pathogenic genes and gene transfer mechanisms of gut bacteria and bacterial genetic factors shared by all humans (base microbiota). This gives insight into the biological roles of gut microorganisms. The human body’s physiology, as well as the genetic information from the patient’s gut microbiota, can be used to diagnose and cure disease. The transfer of antibiotic genes between bacterial species has become increasingly resistant to antibiotics. The gut environment is conducive to genetic transfer through plasmids and transmissible factors. The main cause of several ailments in the human body is an imbalance in the composition of the gut microflora. Probiotics have been demonstrated to address abnormalities in the intestinal microbiota composition by increasing the quantity of beneficial bacteria, enhancing intestinal epithelial function, and boosting the host’s immune system. Certain species with probiotic potential have genetic expressions that increase the competitiveness and tolerance of bacteria in the gastro-intestinal environment. 

Acknowledgments We would like to thank Hue Vu Thi (Center for Biomedicine and Community Health, International School, Vietnam National University, Hanoi, Vietnam) for critical reading and checking to improve the manuscript. 

## List of Abbreviations

GIs Genomic Islands 

PAI Pathogenicity Islands. 

ARG Antibiotic Resistance Genetic. 

MGEs Mobile Genomic Elements. 

HGT Horizontal Gene Transfer. 

ICEs Integrative and Conjugative Elements. 

IS Insertion Sequence. 

IE Integrated Elements. 

## References



Gill SR, Pop M, Deboy RT et al (2006) Metagenomic analysis of the human distal gut microbiome. Science 312(5778):1355–1359 





Natividad JM, Verdu EF (2013) Modulation of intestinal barrier by intestinal microbiota: pathological and therapeutic implications. Pharmacol Res 69(1):42–51 





den Besten G, van Eunen K, Groen AK, Venema K, Reijngoud DJ, Bakker BM (2013) The role of short-chain fatty acids in the interplay between diet, gut microbiota, and host energy metabolism. J Lipid Res 54(9):2325–2340 





Bäumler AJ, Sperandio V (2016) Interactions between the microbiota and pathogenic bacteria in the gut. Nature 535(7610):85–93 





Gensollen T, Iyer SS, Kasper DL, Blumberg RS (2016) How colonization by microbiota in early life shapes the immune system. Science 352(6285):539–544 





Juhas M, van der Meer JR, Gaillard M, Harding RM, Hood DW, Crook DW (2009) Genomic islands: tools of bacterial horizontal gene transfer and evolution. FEMS Microbiol Rev 33(2): 376–393 





Schmidt H, Hensel M (2004) Pathogenicity islands in bacterial pathogenesis. Clin Microbiol Rev 17(1):14–56 





Hacker J, Carniel E (2001) Ecological fitness, genomic islands and bacterial pathogenicity. A Darwinian view of the evolution of microbes. EMBO Rep 2(5):376–381 





Lerminiaux NA, Cameron ADS (2019) Horizontal transfer of antibiotic resistance genes in clinical environments. Can J Microbiol 65(1):34–44 





Liu Y, Tong Z, Shi J, Jia Y, Yang K, Wang Z (2020) Correlation between exogenous compounds and the horizontal transfer of plasmid-borne antibiotic resistance genes. Microorganisms 8(8): 1211 





Zhang Y, Gu AZ, He M, Li D, Chen J (2017) Subinhibitory concentrations of disinfectants promote the horizontal transfer of multidrug resistance genes within and across genera. Environ Sci Technol 51(1):570–580 





Flores-Ríos R, Quatrini R, Loyola A (2019) Endogenous and foreign nucleoid-associated proteins of bacteria: occurrence, interactions and effects on mobile genetic elements and Host's biology. Comput Struct Biotechnol J 17:746–756 





Guérillot R, Da Cunha V, Sauvage E, Bouchier C, Glaser P (2013) Modular evolution of TnGBSs, a new family of integrative and conjugative elements associating insertion sequence transposition, plasmid replication, and conjugation for their spreading. J Bacteriol 195(9):1979–1990 





Paterson DL, Bonomo RA (2005) Extended-spectrum beta-lactamases: a clinical update. Clin Microbiol Rev 18(4):657–686 





Guédon E, Sperandio B, Pons N, Ehrlich SD, Renault P (2005) Overall control of nitrogen metabolism in Lactococcus lactis by CodY, and possible models for CodY regulation in Firmicutes. Microbiology 151(Pt 12):3895–3909 





Sebaihia M, Wren BW, Mullany P et al (2006) The multidrug-resistant human pathogen Clostridium difficile has a highly mobile, mosaic genome. Nat Genet 38(7):779–786 





Pernodet JL, Simonet JM, Guérineau M (1984) Plasmids in different strains of Streptomyces ambofaciens: free and integrated form of plasmid pSAM2. Mol Gen Genet 198(2):35–41 





Kumarasamy KK, Toleman MA, Walsh TR et al (2010) Emergence of a new antibiotic resistance mechanism in India, Pakistan, and the UK: a molecular, biological, and epidemiological study. Lancet Infect Dis 10(9):597–602 





Oxaran V, Ledue-Clier F, Dieye Y et al (2012) Pilus biogenesis in Lactococcus lactis: molecular characterization and role in aggregation and biofilm formation. PLoS One 7(12):e50989 





Marchesi JR, Ravel J (2015) The vocabulary of microbiome research: a proposal. Microbiome 3(1): 31 





Huguet-Tapia JC, Badger JH, Loria R, Pettis GS (2011) Streptomyces turgidiscabies Car8 contains a modular pathogenicity island that shares virulence genes with other actinobacterial plant pathogens. Plasmid 65(2):118–124 





Yong D, Toleman MA, Giske CG et al (2009) Characterization of a new metallo-beta-lactamase gene, bla(NDM-1), and a novel erythromycin esterase gene carried on a unique genetic structure in Klebsiella pneumoniae sequence type 14 from India. Antimicrob Agents Chemother 53(12): 5046–5054 





Tanner SA, Chassard C, Rigozzi E, Lacroix C, Stevens MJA (2016) Bifidobacterium thermophilum RBL67 impacts on growth and virulence gene expression of Salmonella enterica subsp. enterica serovar Typhimurium. BMC Microbiol 16(1):46 





Guarner F (2015) The gut microbiome: what do we know? Clin Liver Dis (Hoboken) 5(4):86–90 





Kers JA, Cameron KD, Joshi MV et al (2005) A large, mobile pathogenicity island confers plant pathogenicity on Streptomyces species. Mol Microbiol 55(4):1025–1033 





San MA (2018) Evolution of plasmid-mediated antibiotic resistance in the clinical context. Trends Microbiol 26(12):978–985 





Broaders E, Gahan CG, Marchesi JR (2013) Mobile genetic elements of the human gastrointestinal tract: potential for spread of antibiotic resistance genes. Gut Microbes 4(4):271–280 





Kau AL, Ahern PP, Griffin NW, Goodman AL, Gordon JI (2011) Human nutrition, the gut microbiome and the immune system. Nature 474(7351):327–336 





Wozniak RA, Waldor MK (2010) Integrative and conjugative elements: mosaic mobile genetic elements enabling dynamic lateral gene flow. Nat Rev Microbiol 8(8):552–563 





Vo AT, van Duijkeren E, Gaastra W, Fluit AC (2010) Antimicrobial resistance, class 1 integrons, and genomic island 1 in Salmonella isolates from Vietnam. PLoS One 5(2):e9440 





Kankainen M, Paulin L, Tynkkynen S et al (2009) Comparative genomic analysis of Lactobacillus rhamnosus GG reveals pili containing a human- mucus binding protein. Proc Natl Acad Sci U S A 106(40):17193–17198 





McDermott AJ, Huffnagle GB (2014) The microbiome and regulation of mucosal immunity. Immunology 142(1):24–31 





Burrus V, Waldor MK (2004) Shaping bacterial genomes with integrative and conjugative elements. Res Microbiol 155(5):376–386 





Huang H, Yang ZL, Wu XM et al (2012) Complete genome sequence of Acinetobacter baumannii MDR-TJ and insights into its mechanism of antibiotic resistance. J Antimicrob Chemother 67(12):2825–2832 





O'Connell Motherway M, Zomer A, Leahy SC et al (2011) Functional genome analysis of Bifidobacterium breve UCC2003 reveals type IVb tight adherence (Tad) pili as an essential and conserved host-colonization factor. Proc Natl Acad Sci U S A 108(27):11217–11222 





Wright EK, Kamm MA, Teo SM, Inouye M, Wagner J, Kirkwood CD (2015) Recent advances in characterizing the gastrointestinal microbiome in Crohn’s disease: a systematic review. Inflamm Bowel Dis 21(6):1219–1228 





Ochman H, Lawrence JG, Groisman EA (2000) Lateral gene transfer and the nature of bacterial innovation. Nature 405(6784):299–304 





Mulvey MR, Grant JM, Plewes K, Roscoe D, Boyd DA (2011) New Delhi metallo-β-lactamase in Klebsiella pneumoniae and Escherichia coli, Canada. Emerg Infect Dis 17(1):103–106 





Eydallin G, Montero M, Almagro G et al (2010) Genome-wide screening of genes whose enhanced expression affects glycogen accumulation in Escherichia coli. DNA Res 17(2):61–71 





Turnbaugh P, Hamady M, Yatsunenko T et al (2008) A core gut microbiome in obese and lean twins. Nature 457:480–484 





Rodríguez-Blanco A, Lemos ML, Osorio CR (2012) Integrating conjugative elements as vectors of antibiotic, mercury, and quaternary ammonium compound resistance in marine aquaculture environments. Antimicrob Agents Chemother 56(5):2619–2626 





Bock R (2010) The give-and-take of DNA: horizontal gene transfer in plants. Trends Plant Sci 15(1):11–22 





Goh YJ, Klaenhammer TR (2013) A functional glycogen biosynthesis pathway in Lactobacillus acidophilus: expression and analysis of the glg operon. Mol Microbiol 89(6):1187–1200 





Qin J, Li R, Raes J et al (2010) A human gut microbial gene catalogue established by metagenomic sequencing. Nature 464(7285):59–65 





Blum G, Ott M, Lischewski A et al (1994) Excision of large DNA regions termed pathogenicity islands from tRNA-specific loci in the chromosome of an Escherichia coli wild-type pathogen. Infect Immun 62(2):606–614 





Iyer LM, Aravind L, Coon SL, Klein DC, Koonin EV (2004) Evolution of cell-cell signaling in animals: did late horizontal gene transfer from bacteria have a role? Trends Genet 20(7): 292–299 





Huse SM, Ye Y, Zhou Y, Fodor AA (2012) A core human microbiome as viewed through 16S rRNA sequence clusters. PLoS One 7(6):e34242 





Hacker J, Blum-Oehler G, Mühldorfer I, Tschäpe H (1997) Pathogenicity islands of virulent bacteria: structure, function and impact on microbial evolution. Mol Microbiol 23(6): 1089–1097 





Arias MC, Danchin EGJ, Coutinho P, Henrissat B, Ball S (2012) Eukaryote to gut bacteria transfer of a glycoside hydrolase gene essential for starch breakdown in plants. Mob Genet Elements 2(2):81–87 





Li J, Jia H, Cai X et al (2014) An integrated catalog of reference genes in the human gut microbiome. Nat Biotechnol 32(8):834–841 





Dobrindt U, Zdziarski J, Salvador E, Hacker J (2010) Bacterial genome plasticity and its impact on adaptation during persistent infection. Int J Med Microbiol 300(6):363–366 





Hehemann J-H, Correc G, Barbeyron T, Helbert W, Czjzek M, Michel G (2010) Transfer of carbohydrate-active enzymes from marine bacteria to Japanese gut microbiota. Nature 464(7290):908–912 





Donaldson GP, Lee SM, Mazmanian SK (2016) Gut biogeography of the bacterial microbiota. Nat Rev Microbiol 14(1):20–32 





Lou L, Zhang P, Piao R, Wang Y (2019) Salmonella Pathogenicity Island 1 (SPI-1) and its complex regulatory network. Front Cell Infect Microbiol 9:270 





Leplae R, Lima-Mendez G, Toussaint A (2010) ACLAME: a classification of mobile genetic elements, update 2010. Nucleic Acids Res 38(Database issue):D57–D61 





Maier TV, Lucio M, Lee LH et al (2017) Impact of dietary resistant starch on the human gut microbiome, metaproteome, and metabolome. mBio 8(5):e01343–e01317 





Palmela C, Chevarin C, Xu Z et al (2018) Adherent-invasive Escherichia coli in inflammatory bowel disease. Gut 67(3):574–587 





Claesson MJ, Li Y, Leahy S et al (2006) Multireplicon genome architecture of Lactobacillus salivarius. Proc Natl Acad Sci U S A 103(17):6718–6723 





Gilbert JA, Blaser MJ, Caporaso JG, Jansson JK, Lynch SV, Knight R (2018) Current understanding of the human microbiome. Nat Med 24(4):392–400 





Karaolis DKR, Johnson JA, Bailey CC, Boedeker EC, Kaper JB, Reeves PR (1998) A Vibrio cholerae pathogenicity island associated with epidemic and pandemic strains. Proc Natl Acad Sci U S A 95(6):3134–3139 





Jones BV (2010) The human gut mobile metagenome: a metazoan perspective. Gut Microbes 1(6): 415–431 





Allaband C, McDonald D, Vázquez-Baeza Y et al (2019) Microbiome 101: studying, analyzing, and interpreting gut microbiome data for clinicians. Clin Gastroenterol Hepatol 17(2):218–230 





Sullivan JT, Ronson CW (1998) Evolution of rhizobia by acquisition of a 500-kb symbiosis island that integrates into a phe-tRNA gene. Proc Natl Acad Sci U S A 95(9):5145–5149 





Stecher B, Denzler R, Maier L et al (2012) Gut inflammation can boost horizontal gene transfer between pathogenic and commensal Enterobacteriaceae. Proc Natl Acad Sci U S A 109(4): 1269–1274 





Palmer C, Bik EM, DiGiulio DB, Relman DA, Brown PO (2007) Development of the human infant intestinal microbiota. PLoS Biol 5(7):e177 





Redondo-Salvo S, Fernández-López R, Ruiz R et al (2020) Pathways for horizontal gene transfer in bacteria revealed by a global map of their plasmids. Nat Commun 11(1):3602 





Nordmann P, Dortet L, Poirel L (2012) Carbapenem resistance in Enterobacteriaceae: here is the storm! Trends Mol Med 18(5):263–272 





Dominguez-Bello MG, Costello EK, Contreras M et al (2010) Delivery mode shapes the acquisition and structure of the initial microbiota across multiple body habitats in newborns. Proc Natl Acad Sci U S A 107(26):11971–11975 





Kumar P, Bag S, Ghosh TS et al (2017) Molecular insights into antimicrobial resistance traits of multidrug resistant enteric pathogens isolated from India. Sci Rep 7(1):14468 





Poirel L, Madec JY, Lupo A et al (2018) Antimicrobial resistance in Escherichia coli. Microbiol Spectr 6(4). https://doi.org/10.1128/microbiolspec.ARBA-0026-2017 





Favier CF, Vaughan EE, De Vos WM, Akkermans AD (2002) Molecular monitoring of succession of bacterial communities in human neonates. Appl Environ Microbiol 68(1):219–226 





Ruppé É, Woerther P-L, Barbier F (2015) Mechanisms of antimicrobial resistance in gram-negative bacilli. Ann Intensive Care 5(1):61–61 





Probiotics in food: health and nutritional properties and guidelines for evaluation: report of a joint FAO/WHO expert consultation on evaluation of health and nutritional properties of probiotics in food including powder milk with live lactic acid bacteria, Cordoba, Argentina, 1–4 October 2001 [and] Report of a joint FAO/WHO working group on drafting guidelines for the evaluation of probiotics in food, London, Ontario, Canada, 30 April–1 May 2002. Rome [Italy]: Food and Agriculture Organization of the United Nations, World Health Organization; 2006 





Salazar N, López P, Valdés L et al (2013) Microbial targets for the development of functional foods accordingly with nutritional and immune parameters altered in the elderly. J Am Coll Nutr 32(6):399–406 





Hasan CM, Dutta D, Nguyen ANT (2021) Revisiting antibiotic resistance: mechanistic foundations to evolutionary outlook. Antibiotics 11(1):40 





Zomer AL, Buist G, Larsen R, Kok J, Kuipers OP (2007) Time-resolved determination of the CcpA regulon of Lactococcus lactis subsp. cremoris MG1363. J Bacteriol 189(4):1366–1381 





Gaulke CA, Sharpton TJ (2018) The influence of ethnicity and geography on human gut microbiome composition. Nat Med 24(10):1495–1496 





Unemo M, Golparian D, Nicholas R, Ohnishi M, Gallay A, Sednaoui P (2012) High-level cefiximeand ceftriaxone-resistant Neisseria gonorrhoeae in France: novel penA mosaic allele in a successful international clone causes treatment failure. Antimicrob Agents Chemother 56(3): 1273–1280 





Kormelink TG, Koenders E, Hagemeijer Y et al (2012) Comparative genome analysis of central nitrogen metabolism and its control by GlnR in the class Bacilli. BMC Genomics 13(1):191 





Soucy SM, Huang J, Gogarten JP (2015) Horizontal gene transfer: building the web of life. Nat Rev Genet 16(8):472–482 





Frost LS, Leplae R, Summers AO, Toussaint A (2005) Mobile genetic elements: the agents of open source evolution. Nat Rev Microbiol 3(9):722–732 





Dobrindt U, Hochhut B, Hentschel U, Hacker J (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2(5):414–424 





Alekshun MN, Levy SB (2007) Molecular mechanisms of antibacterial multidrug resistance. Cell 128(6):1037–1050 





Daccord A, Ceccarelli D, Burrus V (2010) Integrating conjugative elements of the SXT/R391 family trigger the excision and drive the mobilization of a new class of Vibrio genomic islands. Mol Microbiol 78(3):576–588 





Brochet M, Da Cunha V, Couvé E, Rusniok C, Trieu-Cuot P, Glaser P (2009) Atypical association of DDE transposition with conjugation specifies a new family of mobile elements. Mol Microbiol 71(4):948–959 



# Genomic Islands in Nutritional Fitness and Adaptation

7 

Praveenya Tirunagari, Megha Choudhary, and Sushanta Deb 

## Abstract

Genomic islands have attracted wide attention and are extensively used to study the evolution and adaptation strategies of drug-resistant pathogenic and environmental non-pathogenic strains. Horizontal genes, nucleotide substitution, and DNA recombination are few among the several underlying dynamic genetic determinant that shapes the genomic islands in microbial genomes. Unlike pathogenic bacteria, genomic islands in nonpathogenic/environmental bacteria contain genes that are linked to the functions of secondary metabolites, isoprenoids, and metabolic enzymes which promotes bacterial adaptability to changing environments. Here an attempt has been made to emphasize on the importance of genomic islands in commensal, symbiotic, and environmental bacteria. Additionally, the recent lessons learned from pathogenicity islands in pathogenic microbes have also been discussed. 

## Keywords

Genomic islands · Resistance islands · HGT · Microorganism and Adaptation 

P. Tirunagari 

Department of Biotechnology, Indian Institute of Technology, Kharagpur, India 

M. Choudhary 

CSIR-Institute of Microbial Technology, Chandigarh, India 

All India Institute of Medical Sciences (AIIMS), New Delhi, India 

S. Deb (✉) 

All India Institute of Medical Sciences (AIIMS), New Delhi, India 

Department of Molecular Biology & Bioinformatics, Tripura University, Suryamaninagar, Tripura, India 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_7 

## 7.1 Introduction

Horizontal gene transfer (HGT) widens the extent of variable genetic content in microbial genome that encodes genes beneficial for their adaptation in changing environmental conditions. These genes lie on contiguous stretch of DNA, frequently found in variable genetic regions, and are often considered as genomic islands (GEIs). Bacterial and archeal genome evolve through a diverse genetic mechanism, which involves mutations, gene rearrangements, and the acquisition of genes from other microbes, phages, and environments (Dobrindt et al. 2004; Aminov 2011). Genes located in genomic islands perform a variety of functions in clinical and environmental strains, the majority of which are involved in pathogenicity and adaptation. Based on GEIs mobility it can be categorized into mobile GEI, where the movement is supported by conjugative elements (ICEs) while nonmobile GEIs remain tightly integrated into the host bacteria (Juhas 2019). The highly dynamic nature of GEIs is the key factor contributing to substantial genetic variation in pathogenic strains. Recently, studies have illustrate the role of GEIs in the pathogenicity of outbreak and non-outbreak strains (Ingle et al. 2016; Winstanley et al. 2009). Additionally, several other phenomena such as symbiosis, secondary metabolites synthesis, toxic compounds neutralization and thermal adaptation have been found to be associated with the microbial genomic islands. A prolonged symbiotic relationship between animals and microbes substantially influences genomic evolution and modifies the metabolic features of associated bacteria. For instance, in the Acetobacteraceae family, persistent symbiotic associations between insects and their gut-associated microbes provide evidence of horizontal acquisition of genes associated with amino acid export, coenzyme transport, energy metabolism, and defense mechanisms (Brown and Wernegreen 2019). GEI analysis has become a widely accepted approach to track disease outbreaks and the evolution of accessory genetic material of pathogens. The growing availability of genomes and rapid decrease in sequencing cost gives us easy access to dedicated databases, genome analysis tools, and sequence analysis algorithms (Gardy and Loman 2018; Bertelli and Greub 2013). In the past few decades, several algorithms and bioinformatics software were developed to identify GIs in bacterial genomes, however, most of them are standalone software that requires basic programming skills making it unintuitive for biologists (Bertelli and Greub 2013). Tools with more user-friendly features like graphical user interfaces or web servers recently have come forward to predict and interactively visualize the genomic islands (Bertelli, Laird and Williams, K.P. 2017). 

## 7.2 Genomic Islands and Pathogens

Genomic islands are the bacterial gene clusters that seem to have been obtained through horizontal gene transfer, where Conjugation (Fig. 7.1), transformation and transduction (Fig. 7.2), are the most common modes of transmission (Jain et al. 2002; Chen et al. 2005) (Håvarstein 1998). Integrative conjugative elements (ICEs), which are GIs transmitted by conjugation mode, are among the most well-studied types of GIs (Partridge et al. 2018; Botelho et al. 2020; Boyd et al. 2016).The capacity of GIs to be transferred between species is an intriguing trait (Juhas et al. 2009). Type II and IV secretion systems are frequently linked to GI changes that occur naturally. Because many of the encoded genes of Genomic islands (GEIs) synthesize toxins or other pathogenicity factors since they were also first discovered in pathogenic bacteria they were given the name pathogenicity islands (Sulaiman et al. 2019). PAIs were first discovered in pathogenic E.coli (Blum et al. 1994). There is mounting evidence that non-pathogenic species also include the components of pathogenicity islands. The islands comprise transfer genes, integrases, and IS elements in addition to sequences obtained from phages and/or plasmids. These potentially unstable DNA building blocks are commonly inserted into tRNA genes. The instability is brought on by the flanking direct repeats, which commonly resemble phage attachment sites and encourage bacterial genome integration and excision. (Hacker et al. 1997; Buchrieser et al. 1998). Pathogenicity islands (PAIs), which are mobile genetic components, have been linked to the rapid evolution of bacterial diseases (Schaechter et al. 2004). Identification of the mechanisms behind bacterial genomic diversification and evolution has been the focus of genomic research over the past 10 years. After evaluating expanding bacterial genomics sequences for Homologous Recombination and Horizontal Gene Transfer (HGT), the conventional idea that clonal divergence and occasional selection is the route of prokaryotic evolution has been widened to include genome exchange and loss. Apart from the core genes that code for essential functions, bacteria’s genome also contains a large number of “fexibe” genes that provide other features that may be useful in specific circumstances. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/03a6a8e3c9cf7c4505ecf7d6b30d1c99a8174094e5fea1cdba3041e3b13a2579.jpg)



Fig. 7.1 Schematic Representation of Bacterial Conjugation process


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/973d28008550bbc99c5868f4ed7fae78deaa596a37d10e7ce77ac11c03aa83ab.jpg)



Fig. 7.2 Steps and Mechanism of Bacterial DNA Transduction Process


The adaptable gene pool includes mobile, auxiliary, variable chromosome regions, plasmids, pathogenicity islands, integrons, insertion sequence (IS) elements, bacteriophages, and transposons. The impact of horizontal gene transfer on genome plasticity is seen in the diversification and adaption of microorganisms. Genomic islands (GEIs), which ranging from a few kb to 500 kb, permit a significant degree of horizontal gene transfer. Hacker et al. first described genomic islets, which are GIs with a size of less than 10 kb and are collections of genes in a bacterial genome with a particular percentage of GC and dinucleotides (Hacker et al. 1997). The physiological actions of GIs include pathogenicity, phenol degradation, antibiotic resistance, iron absorption, and secretory activity, to name a few (Hacker and Carniel 2001). They are also necessary for genetic plasticity, evolution, and adaptation to changing habitat (Dobrindt et al. 2004; Juhas et al. 2009). 

## 7.3 Pathogenicity Island (PAIs) and Its Correlation with Virulence

PAIs are a type of genomic island that has the same overall structure and content as other genomic islands and can vary in size ranging from 10 to 200 kbp (Dobrindt et al. 2004;Tormo et al. 2008). The bulk of PAIs discovered (75 percent) had tRNA flanking sequences. According to the evidence, PAIs appear to be acquired horizontally by one or more lateral transfer events. Within some PAIs, there is evidence of a single large transfer event, whereas others are more “mosaic-like.” The “mosaiclike” makeup of some PAIs is caused by many, distinct lateral transfer events (Hacker et al. 1997; Schmidt and Hensel 2004). Pathogenicity is connected with the expression of disease-related factors in pathogenic bacteria that are absent in non-pathogenic bacteria. Unlike the conserved “core” genome of bacteria, the “flexible” pool encodes for certain virulence factors beneficial in some environments. If the donor and recipient bacteria are closely related, the PAI GC content may not differ from that of the core genome (Hacker et al. 1997). Essential traits including antibiotic resistance, symbiosis, fitness, and adaptation in general are influenced by pathogenic and genomic islands. Genome plasticity, or the gaining or losing of genetic information, is essential for the adaptive evolution of pathogenic bacteria because it permits the inheritance of intricate disease-related traits in a single step due to the simultaneous acquisition of numerous genes in HGT (Ochman et al. 2000). On mobile or formerly mobile genomic elements, such as PAIs, virulence genes are frequently found (Juhas 2019). (Jain et al. 2002),while DNA has been transported by plasmid, phage, virulence genes being found on mobile or formerly mobile genetic elements that include PAIs is a recent finding (Boyd and Brüssow 2002; Feigel et al. 2002). In-depth genomic regions (PAIs) that are less frequently observed in closely related non-pathogenic bacteria were discovered to have originated from lysogenic bacteriophages and plasmids and are present in pathogenic variations. They are usually flanked by repeat sequences, contain one or more virulence genes, differ from the rest of the chromosome in terms of G + C composition, and are frequently linked to tRNA genes. In addition, PAIs frequently contain genes that code for integrases or transposons and are inherently unstable (Hacker et al. 1997). 

According to the crucial functions they encode, virulence genes found on PAIs in a broad range of organisms such as Gram-negative, Gram-positive bacteria as well as in humans and may be categorized into different groups: (Table 7.1). 

## 7.4 Resistance Islands (REIs) for Pathogen Adaptation

Despite conferring pathogenic and drug-resistant traits to the bacterium, genomic Islands are also well known for their role in phenol degradation, iron intake, and other secretory activity of microbes. The accommodation and maintenance of the antibiotic resistance genes in the bacterial genomes depends heavily on these genomic islands. A no. of dynamic genetic factors such as horizontal gene transfer and mutations contribute greatly to increase genomic plasticity, which facilitates the acquisition of drug/antibiotic-resistant genes in pathogenic bacterial species (Cattoir and Giard 2014) (Hacker and Carniel 2001). In the terms of pathogen adaptation, it is well known that pathogenicity islands (PAIs) and antimicrobial resistance islands (REIs) are two major subsets of the genomic island. Pathogenicity island acquires the genes mainly encoded for virulence factor, which includes enterotoxin, colonization factor, iron uptake transporter, and type III secretion system (Yoon et al. 2015), while genes acquired by antimicrobial resistance islands were confined to the factors that involved in the antibiotic resistance mechanism. Antimicrobial resistance islands confer the resistance benefit against the antibiotic and drug molecule to escape from therapeutics, eventually giving rise to multidrug-resistant pathogenic strains. For instance, interspecies recombination events in mixed microbial population results in the acquisition of large Carbapenem resistance islands by Acinetobacter baumannii from other pathogenic Acinetobacter species (Godeux et al. 2022). A number of databases dedicated to antibiotic resistance genes were reported earlier named ARDB, CARD, and BacMet, however, databases related to resistance islands are yet to be developed (Liu and Pop 2009; McArthur 2009). The genes that constitute the resistance Islands are indulged in different antibiotic resistance mechanisms in bacteria such as antibiotic degradation, target modification, efflux pumps, and many more (Fig. 7.3) (McArthur et al. 2013). The underlying factors that involved in acquisition of antibiotic resistance island still remain unexplored due to lack of experimental validations supporting the genomic observations. 


Table 7.1 Virulence genes characters and their functions


<table><tr><td>Adherence elements</td><td>Aid bacterial attachment to host surfaces</td></tr><tr><td>Siderophores</td><td>Assure adequate <eq>Fe^{3+}</eq> ion solubilization and uptake</td></tr><tr><td>Capsules</td><td>Resist phagocytosis and provide defence against other immune system components of the host</td></tr><tr><td>Endotoxin (LPS) (belonging to Gram-negative organisms)</td><td>Induce inflammation and the host complement pathway</td></tr><tr><td>Exotoxins</td><td>Affect function of eukaryotic cells by interfering with signal transduction and structures within cells.</td></tr><tr><td>Invasins</td><td>Facilitate the entrance of microorganisms into eukaryotic cells</td></tr><tr><td>Secretion systems, type III and IV</td><td>Toxins or modulins that are essential for their targeted delivery into eukaryotic cells and that change how the host interacts with them. Example: T3SSs and T4SSsInterfere with apoptotic and signaling cascades while facilitating entry into non-phagocytic cells in the host</td></tr></table>

## 7.5 Pathogen Fitness

The characteristics that assist an organism in surviving, multiplying, and/or transmitting within a specific biological niche are referred to as its pathogen fitness (Preston et al. 1998). Positively chosen genomic islands with activities that promote bacterial fitness, either directly or indirectly, are referred to as ‘fitness islands’. Insight into the resistance gene transfer mechanism underlying the development of multidrug-resistant isolates is important and requires knowing the GIs, particularly the resistant GIs. 

## Antibiotic Resistance Mechanisms

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/b3c8d3766db7d8066d28c6a0062afd5d0d07edc954f86389428ab3d4800ae8c4.jpg)



Fig. 7.3 Strategies adopted by bacteria to develop antibiotic resistance phenotypes


The results of an artificial intelligence and in silico study suggest that evolutionary relationships control the fitness and functional compatibility of horizontally transferred genes in new hosts. The findings also revealed that codon use, GC content, and mRNA-folding energy all have a minimal effect on heterologous gene transfer (Hacker and Carniel 2001; Emamalipour et al. 2020). The Darwinian rules (“survival of the fittest”) apply to both eukaryotes and prokaryotes in their evolution. Under specific environmental conditions, possessing a genomic island may give a selective advantage to develop some beneficial traits in microbes that improve their transmission, survival, and colonization within a niche (stress, in vivo settings, antibacterial drug exposure). As Preston et al. have already suggested, genomic islands promoting the fitness of microorganisms are deemed as “fitness islands” from a functional standpoint (Arber 2000). In these conditions, genetic fitness islands bestow novel traits that increase the bacterial host’s ability for adaptation. Genetic fitness islands in these conditions confer unique features that increase the bacterial host’s capacity for adaptation. A true pathogenicity island aids directly or indirectly in the growth of true pathogens, whereas a symbiosis island can be referred to as a fitness island mainly facilitating the bacterial interaction with their host (Ochman and Moran 2001). 

Adhesins and toxins, which are encoded by PAIs, phages, or plasmids and frequently function as a direct result of their activity, are pathogenicity factors (Waldor and Mekalanos 1996; Karaolis et al. 1998). These factors’ effects on pathogenicity appear to be a direct result of pressures on evolution. This is true for intestinal infections as well as respiratory pathogens, where pathogenicity factors make it easier for these pathogens to spread and hence have a favorable impact on microbial evolution. A genomic island containing the genes that code for yersiniabactin, an iron-uptake mechanism, was first recorded from a pathogenic Yersinia species (Carniel et al. 1996). In E. coli, certain adhesion factors (such P-, S-, and F1C-fimbriae) are produced by commensal strains prevalent in the human gut flora and are encoded by genomic islands (Hacker and Carniel 2001). PAIs have genes that produce type III or IV secretion systems. Again, these secretion systems might be termed PAIs if they convey proteins implicated in the infectious process. The type III system includes strains of Salmonella, Shigella, and Yersinia, while the type IV system includes Helicobacter pylori and Legionella pneumophila (Galan and Collmer 1999; Parsot and Sansonetti 1999; Censini et al. 1996). 

## 7.6 Pathogenicity of Clostridium Species

The Clostridium genus is an endospore-forming, strictly anaerobic bacteria and numerous species that are significant for human diseases. Clostridium cluster XIVa and IV species colonize, the main bacteria in the gut, accounts for 10–40% of the total microorganisms in the gut. Around 250 species of Clostridium exist, including ordinary free-living bacteria (Koukou 2021) among them the main disease-causing species in humans are: 

• Clostridium botulinum 

• Clostridium tetani 

• Clostridium perfringens 

• Clostridium Sordellii 

Antibiotic-associated diarrhea (AAD) imbalances the gut microbiota caused by antibiotic usage, with multiple pathways implicated in the illness process (McFarland 1998). Antibiotics cause C. difficile to produce strong toxins, which are the main virulence factors. Clostridium difficile infection (CDI) is one kind of AAD that can cause serious gastrointestinal problems. Clostridium difficile (formerly Clostridioides difficile) is a Gram-positive anaerobic bacillus that forms spores. C. difficile spores may persist for extended durations on inanimate things (resisting heat, acid, and antibiotics), which is one of the reasons why this bacterium can cause so many difficulties in hospitals. Clostridium difficile causes illness in humans by producing two protein exotoxins (toxin A and toxin B), which are cytotoxic to colonic epithelial cells and spread via the fecal-oral pathway (Rupnik et al. 2009). When comparing dangerous and benign strains of C. difficile, a unique locus encoding the toxin genes tcdA and tcdB was found (Braun et al. 1993). A 19.6- kb insertion between genes that are adjacent in nontoxigenic C. difficile strains makes up this PaLoc (short for “pathogenicity locus”), which has five ORFs. There are no genes associated with genetic mobility or instability in PaLoc, and it is unclear which genetic mechanisms give rise to hazardous and harmless strains (Cohen et al. 2000). The 19-kilobyte Pai gene, which is found in the genome of virulent strains of C. difficile that cause antibiotic-associated diarrhea or its fatal form, pseudomembranous colitis, encodes two high-molecular-weight toxins named TcdA and TcdB (a cytotoxin). It is intriguing that a 115-bp segment that creates a 20-bp hairpin loop only shows up in non-pathogenic variants (not in pathogenic strains). It might be where this pathogenicity island’s chromosomes integrate (Braun et al. 1996). The presence of a 115-bp stretch that results in a 20-bp hairpin loop only in non-pathogenic forms is intriguing (not in pathogenic strains). 

## 7.7 Pathogenicity Locus of Clostridium difficile

The production of toxins by C. difficile is only possible when PaLoc is present (Cohen et al. 2000). It was interestingly found that PaLoc insertions and deletions can lead to toxin loss when particularly virulent C. difficile isolates were compared to other toxigenic isolates. According to studies on the expression of the PaLoc gene, TcdC and TcdD, which are encoded by the PaLoc gene, respectively function as negative and positive regulators of PaLoc gene expression (Burks et al. 1997; Spigaglia and Mastrantonio 2002). While there was no evidence of PAI in the genome sequencing research for Clostridium tetani and Clostridium perfringens (Shimizu et al. 2002; Brüggemann et al. 2003). 

## 7.8 Pathogenicity Islands of Citrobacter Species

The Enterobacteriaceae family includes the Citrobacter genus, a group of aerobic, Gram-negative, rod-shaped bacteria that use citrate as their primary carbon source. The locus for enterocyte effacement (LEE) has also been found in C. rodentium, the organism that causes nursing mice to develop transmissible murine colonic hyperplasia. Mice with C. rodentium infections had ruffled coats, mild diarrhea, and delayed growth. Mice can experience rectal prolapse in extreme circumstances, which can result in low to high mortality rates (Luperchio et al. 2000; Schiavo and van der Goot 2001). In the LEE of Citrobacter rodentium, horizontal transfer between attaching and effacing pathogens has been observed (Deng et al. 2001). Although the C. rodentium LEE shares 41 ORF with the EPEC and EHEC LEE, it differs due to the location of the RORF1 and RORF/espG genes and the presence of numerous insertion sequences. In selC, the LEE of C. rodentium is absent. It is surrounded by sequences that are homologous to the Shigella plasmid R100 and the EHEC plasmid pO157 on one side and an operon that contains an ABC transport system and an IS element on the other. The animal model mentioned above may help with the examination of the LEE in C. rodentium (Deng et al. 2001). 

## 7.9 Genomic Islands in Environmental Microorganisms

Due to the recent advent of cost-effective next-generation sequencing technology, a myriad of whole-genome sequencing data become easily accessible to the public database which promotes the extensive genomic study of non-pathogenic/ environmental bacteria from different ecological niches. Pathogenicity is not the sole factor that constitutes the Genomic Islands, other phenomena such as commensalism, environmental fitness, and metabolic adaptability have emerged as major factors responsible for the extension of the genetic island in microbial genomes (Fig. 7.4) (Hacker and Carniel 2001). The association of the integrase gene with the extrachromosomal genomic island provides flexibility to organisms to evolve more rapidly through genetic rearrangements and gene acquisition processes (Dobrindt et al. 2004). Horizontal gene acquisition and Genomic island formation are likely to occur in densely populated niches with large number of diverse bacterial species. 

## 7.10 GEIs for Adaptation in Toxic Environments

Environmental factors can act as a driving force shaping the evolution of bacterial genomic islands. Thus, heavy metal toxic habitats that arise naturally or through anthropogenic activity provide environmental stress to the dwelling species of that environment, which makes them competent to survive in unfavorable toxic conditions. It has been reported that Thiomonas species isolated from toxic acid mine drainage contain a specific genomic island with the capability to oxidize arsenite that confer resistance against extremely toxic habitats (Freel et al. 2015). Studies have demonstrated a close association between antibiotic-resistant and toxic compound-resistant phenotypes that follow the principle of cross-resistance mechanisms (Arsène-Ploetze et al. 2018). It has also been observed that two Thiomonas strains containing GEI from toxic metal-contaminated habitats facilitate the development of antibiotic resistance and toxic compound resistance phenotype (Arsène-Ploetze et al. 2018). Furthermore, studies have reported that beta-carbonic anhydrase (β-CA) genes were horizontally transferred from prokaryotes to eukaryotes (Zolfaghari Emameh et al. 2016). Through the evolutionary process, β-CA gene from the prokaryotic genomic island has integrated into the eukaryotic genome (Zolfaghari Emameh et al. 2018). Hence, the above findings support that genomic islands promote metabolic adaptation and resistance to hazardous environmental factors. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/7608bd96-c51a-46b6-acc7-41bf88eb907d/459a7261aa510dc807dcb01696835013f9399d02262237066025184a325f74ea.jpg)



Fig. 7.4 Horizontal gene transfer and genomic island Integration in various groups of Bacteria


## 7.11 Gene Acquisitions and Adaptation of Marine Bacterial Species

Anciently, it was believed that marine bacterial adaption required sodium-ion to maintain osmotic balance, but later it has been observed that several genetic determinants are responsible for bacterial adaptation in the marine environment. In marine Salinispora, it has been observed that gene acquisition and gene loss influence the marine adaptation capability, acquisition of transporter genes from other marine bacteria promotes adaptation of Salinispora species while gene loss renders this genus incapable to survive outside the ocean (Penn and Jensen 2012). Furthermore, genomic insight on streptomycete revealed that horizontal gene transfer cause to the acquisition of gene clusters that encodes for hybrid isoprenoids (HIs) in the marine Streptomyces genus, acquired isoprenoids gene cluster contributed to develope adaptive ability to survive in marine environment (Gallagher and Jensen 2015). Bacillus methylotrophicus a plant growth promoter produces lanthipeptides with antibacterial activity, genes related to lanthipeptide synthesis were found to reside in the genomic island which is probably associated with the functional adaptation of that species (Dias et al. 2015). Genomic investigation on marine actinobacteria disclosed that genes involved in secondary metabolite biosynthesis located in 21 genomic islands of two Salinispora species correlate to the functional adaptation of those bacteria (Penn et al. 2009). Arthrobacter genomic islands of diverse ecotypes provide insights into multiple genetic factors that exhibit specialized phenotype, which includes antibiotic resistance, multidrug efflux, and carbon metabolism facilitating its adaptability to different environmental niches (Gushgari-Doyle et al. 2022). 

## 7.12 Extremophiles and Horizontal Gene Transfer

An established fact is that hyperthermophilic species show high diversity in their genetic content (Dobrindt et al. 2004). Studies have described the existence of conjugative plasmids in thermophilic archaeal species (Schleper et al. 1995) and demonstrated its capability to integrate with genomes of other species (Peng et al. 

2000). Using the Genome-based Subtraction Hybridization method the dissimilar genomic regions between two Thermotoga maritima species were investigated. An additional genomic region acquired by HGT that is absent in other Thermotoga species encodes for genes involved in arabinosidase expression, rhamnose biosynthesis, and alcohol dehydrogenase and is believed to influence the species adaptability to the environment (Nesbø and Doolittle 2003). Extremophiles are prone to participate in DNA exchange between the same species, to escape the detrimental effect of DNA damage due to higher temperatures in an environment (van Wolferen et al. 2013). In acidophiles, horizontal gene transfer and gene loss events equipped them with an increased capacity to adapt to changing environments (Zhang et al. 2017). 

## 7.13 Gene Exchange Between Archaea and Bacteria

Despite the importance of horizontal gene transfer in genome evolution, it was not fully exploited to study molecular evolution for decades (Cohan 1994). The increasing trend of genomic analysis has enlightened the role of HGT events in genomic evolution and its influence to promote the adaptive capability of microbes. In the present time, it has become more evident that throughout the evolution, bacteria and archaea have exchanged genes to better adapt to the dynamic environmental condition (Guglielmini et al. 2013). Thermophilic and anaerobic are the two bacterial groups, most frequently shared a considerable number of genes with archaea. Geothermal springs, oil wells, and marine sediments are major sites where genes were frequently horizontally transferred between archaea and bacteria (Fuchsman et al. 2017). Bioinformatics analysis mainly investigates codon usage and distinct base composition to identify the horizontally transferred genes in genomes (Nakamura et al. 2004). Three major strategies have been adopted by archaea and bacteria for genetic exchange, which include transduction, conjugation, and natural transformation. Natural transformation and conjugation are two phenomena opposite to each other based on their invasive mechanism, during natural transformation recipient cell has control over transferred DNA in contrast conjugation mainly follows the command from the donor cell. In comparison to mesophilic bacteria, hyperthermophiles acquired a relatively higher number of genes from archaea through the HGT mechanism (van Wolferen et al. 2013). 

## 7.14 Conclusion

Recent advancements in NGS technologies and bioinformatics tools have prompted comprehensive investigation of the genomic content, organization, and potential functions of microbial genomes, which helps to characterize intrinsic as well as horizontally acquired genes of microbes. Genomic analyses have provided an in-depth understanding of the evolution, virulence, and adaptation of microbial species. Advancement in genomic techniques has made it possible to characterize the Genomic island by studying the dynamics and complexity of the microbial genomes. Genomic islands have been used as a target to examine the emergence of novel functional capabilities in pathogenic as well as nonpathogenic microbes. A number of studies have established the fact that other than pathogenic microbes, GEIs played a significant role to develop adaptive capabilities also in microbes from the geothermal and marine environment. The available information on the genomic island has improved our understanding greatly on microbial adaptation in diverse ecological habitats. 

## References



Carniel E, Guilvout I, Prentice M (1996) Characterization of a large chromosomal “high-pathogenicity island” in biotype 1B Yersinia enterocolitica. J Bacteriol 178(23):6743–6751. https://doi. org/10.1128/jb.178.23.6743-6751.1996. PMID: 8955291; PMCID: PMC178570 





Håvarstein LS (1998) Bacterial gene transfer by natural genetic transformation. APMIS 106(S84): 43–46 





Rupnik M, Wilcox MH, Gerding DN (2009) Clostridium difficile infection: new developments in epidemiology and pathogenesis. Nat Rev Microbiol 7(7):526–536 





Cattoir V, Giard JC (2014) Antibiotic resistance in Enterococcus faecium clinical isolates. Expert Rev Anti-Infect Ther 12(2):239–248 





Ingle DJ, Tauschek M, Edwards DJ, Hocking DM, Pickard DJ, Azzopardi KI, Amarasena T, Bennett-Wood V, Pearson JS, Tamboura B, Antonio M (2016) Evolution of atypical enteropathogenic E. coli by repeated acquisition of LEE pathogenicity island variants. Nat Microbiol 1(2):1–9 





Schaechter M, View From Here Group (2004) Escherichia coli and Salmonella 2000: the view from here. EcoSal Plus 65(1):119 





Aminov RI (2011) Horizontal gene exchange in environmental microbiota. Front Microbiol 2:158 





Censini S, Lange C, Xiang Z, Crabtree JE, Ghiara P, Borodovsky M, Rappuoli R, Covacci A (1996) cag, a pathogenicity island of Helicobacter pylori, encodes type I-specific and diseaseassociated virulence factors. Proc Natl Acad Sci 93(25):14648–14653 





Jain R, Rivera MC, Moore JE, Lake JA (2002) Horizontal gene transfer in microbial genome evolution. Theor Popul Biol 61(4):489–495 





Schiavo G, van der Goot FG (2001) The bacterial toxin toolkit. Nat Rev Mol Cell Biol 2(7): 530–537 





Arber W (2000) Genetic variation: molecular mechanisms and impact on microbial evolution. FEMS Microbiol Rev 24(1):1–7 





Chen I, Christie PJ, Dubnau D (2005) The ins and outs of DNA transfer in bacteria. Science 310(5753):1456–1460 





Juhas M (2019) Genomic Islands and the evolution of multidrug-resistant bacteria. In: Horizontal gene transfer. Springer, Cham, pp 143–153 





Schleper C, Holz I, Janekovic D, Murphy J, Zillig W (1995) A multicopy plasmid of the extremely thermophilic archaeon Sulfolobus effects its transfer to recipients by mating. J Bacteriol 177(15):4417–4426 





Arsène-Ploetze F, Chiboub O, Lièvremont D, Farasin J, Freel KC, Fouteau S, Barbe V (2018) Adaptation in toxic environments: comparative genomics of loci carrying antibiotic resistance genes derived from acid mine drainage waters. Environ Sci Pollut Res 25(2):1470–1483 





Cohan FM (1994) The effects of rare but promiscuous genetic exchange on evolutionary divergence in prokaryotes. Am Nat 143(6):965–986 





Juhas M, Van Der Meer JR, Gaillard M, Harding RM, Hood DW, Crook DW (2009) Genomic islands: tools of bacterial horizontal gene transfer and evolution. FEMS Microbiol Rev 33(2): 376–393 





Schmidt H, Hensel M (2004) Pathogenicity islands in bacterial pathogenesis. Clin Microbiol Rev 17(1):14–56 





Bertelli C, Greub G (2013) Rapid bacterial genome sequencing: methods and applications in clinical microbiology. Clin Microbiol Infect 19(9):803–813 





Cohen SH, Tang YJ, Silva J Jr (2000) Analysis of the pathogenicity locus in Clostridium difficile strains. J Infect Dis 181(2):659–663 





Karaolis DK, Johnson JA, Bailey CC, Boedeker EC, Kaper JB, Reeves PR (1998) A Vibrio cholerae pathogenicity island associated with epidemic and pandemic strains. Proc Natl Acad Sci 95(6):3134–3139 





Shimizu T, Ohtani K, Hirakawa H, Ohshima K, Yamashita A, Shiba T, Ogasawara N, Hattori M, Kuhara S, Hayashi H (2002) Complete genome sequence of Clostridium perfringens, an anaerobic flesh-eater. Proc Natl Acad Sci 99(2):996–1001 





Bertelli C, Laird MR, Williams KP, Simon Fraser University Research Computing Group, Lau BY, Hoad G, Winsor GL, Brinkman FSL (2017) IslandViewer 4: expanded prediction of genomic islands for larger-scale datasets. Nucleic Acids Res 45(W1):30–35 





Deng W, Li Y, Vallance BA, Finlay BB (2001) Locus of enterocyte effacement from Citrobacter rodentium: sequence analysis and evidence for horizontal transfer among attaching and effacing pathogens. Infect Immun 69(10):6323–6335 





Koukou I (2021) Management of Clostridium botulinum in food: A predictive food microbiology approach. DTU Food 





Spigaglia P, Mastrantonio P (2002) Molecular analysis of the pathogenicity locus and polymorphism in the putative negative regulator of toxin production (TcdC) among Clostridium difficile clinical isolates. J Clin Microbiol 40(9):3470–3475 





Blum G, Ott M, Lischewski A, Ritter A, Imrich H, Tschäpe H, Hacker J (1994) Excision of large DNA regions termed pathogenicity islands from tRNA-specific loci in the chromosome of an Escherichia coli wild-type pathogen. Infect Immun 62(2):606–614 





Dias L, Caetano T, Pinheiro M, Mendo S (2015) The lanthipeptides of Bacillus methylotrophicus and their association with genomic islands. Syst Appl Microbiol 38(8):525–533 





Liu B, Pop M (2009) ARDB—antibiotic resistance genes database. Nucleic Acids Res 37(suppl_1): D443–D447 





Sulaiman S, Yusoff NS, Mun NS, Makmur H, Firdaus-Raih M (2019) Inference of horizontal gene transfer: gaining insights into evolution via lateral acquisition of genetic material. In: Reference module in life sciences. Elsevier, Amsterdam, pp 953–964 





Botelho J, Mourão J, Roberts AP, Peixe L (2020) Comprehensive genome data analysis establishes a triple whammy of carbapenemases, ICEs and multiple clinically relevant bacteria. Microb Genom 6(10):mgen000424 





Dobrindt U, Hochhut B, Hentschel U, Hacker J (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2(5):414–424 





Luperchio SA, Newman JV, Dangler CA, Schrenzel MD, Brenner DJ, Steigerwalt AG, Schauer DB (2000) Citrobacter rodentium, the causative agent of transmissible murine colonic hyperplasia, exhibits clonality: synonymy of C. rodentium and mouse-pathogenic Escherichia coli. J Clin Microbiol 38(12):4343–4350 





Tormo MA, Ferrer MD, Maiques E, Ubeda C, Selva L, Lasa Í, Calvete JJ, Novick RP, Penadés JR (2008) Staphylococcus aureus pathogenicity island DNA is packaged in particles composed of phage proteins. J Bacteriol 190(7):2434–2440 





Boyd DA, Lalancette C, Lévesque S, Golding GR (2016) Characterization of a genomic island harbouring a new vanD allele from Enterococcus faecium N15-508 isolated in Canada. J Antimicrob Chemother 71(7):2052–2054 





Emamalipour M, Seidi K, Zununi Vahed S, Jahanban-Esfahlan A, Jaymand M, Majdi H, Amoozgar Z, Chitkushev LT, Javaheri T, Jahanban-Esfahlan R, Zare P (2020) Horizontal gene transfer: from evolutionary flexibility to disease progression. Front Cell Develop Biol 8: 229 





McArthur AG, Waglechner N, Nizam F, Yan A, Azad MA, Baylay AJ, Bhullar K, Canova MJ, De Pascale G, Ejim L, Kalan L (2013) The comprehensive antibiotic resistance database. Antimicrob Agents Chemother 57(7):3348–3357 





van Wolferen M, Ajon M, Driessen AJ, Albers SV (2013) How hyperthermophiles adapt to change their lives: DNA exchange in extreme conditions. Extremophiles 17(4):545–563 





Boyd EF, Brüssow H (2002) Common themes among bacteriophage-encoded virulence factors and diversity among the bacteriophages involved. Trends Microbiol 10(11):521–529 





Feigel A, Kotler Z, Sfez B (2002) Scalable interference lithography alignment for fabrication of three-dimensional photonic crystals. Opt Lett 27(9):746–748 





McFarland LV (1998) Epidemiology, risk factors and treatments for antibiotic-associated diarrhea. Dig Dis 16(5):292–307 





Waldor MK, Mekalanos JJ (1996) Lysogenic conversion by a filamentous phage encoding cholera toxin. Science 272(5270):1910–1914 





Braun V, Hundsberger T, Leukel P, Sauerborn M, von Eichel-Streiber C (1996) Definition of the single integration site of the pathogenicity locus in Clostridium difficile. Gene 181(1–2):29–38 





Freel KC, Krueger MC, Farasin J, Brochier-Armanet C, Barbe V, Andrès J, Cholley PE, Dillies MA, Jagla B, Koechler S, Leva Y (2015) Adaptation in toxic environments: arsenic genomic islands in the bacterial genus Thiomonas. PLoS One 10(9):e0139011 





Nakamura Y, Itoh T, Matsuda H, Gojobori T (2004) Biased biological functions of horizontally transferred genes in prokaryotic genomes. Nat Genet 36(7):760–766 





Winstanley C, Langille MG, Fothergill JL, Kukavica-Ibrulj I, Paradis-Bleau C, Sanschagrin F, Thomson NR, Winsor GL, Quail MA, Lennard N, Bignell A (2009) Newly introduced genomic prophage islands are critical determinants of in vivo competitiveness in the Liverpool Epidemic Strain of Pseudomonas aeruginosa. Genome Res 19(1):12–23 





Braun V, Schönherr R, Hobbie S (1993) Enterobacterial hemolysins: activation, secretion and pore formation. Trends Microbiol 1(6):211–216 





Fuchsman CA, Collins RE, Rocap G, Brazelton WJ (2017) Effect of the environment on horizontal gene transfer between bacteria and archaea. PeerJ 5:e3865 





Nesbø CL, Doolittle WF (2003) Targeting clusters of transferred genes in Thermotoga maritima. Environ Microbiol 5(11):1144–1154 





Yoon SH, Park YK, Kim JF (2015) PAIDB v2. 0: exploration and analysis of pathogenicity and resistance islands. Nucleic Acids Res 43(D1):D624–D630 





Brown BP, Wernegreen JJ (2019) Genomic erosion and extensive horizontal gene transfer in gut-associated Acetobacteraceae. BMC Genomics 20(1):1–15 





Galan JE, Collmer A (1999) Type III secretion machines: bacterial devices for protein delivery into host cells. Science 284:1322–1328 





Ochman H, Moran NA (2001) Genes lost and genes found: evolution of bacterial pathogenesis and symbiosis. Science 292(5519):1096–1099 





Zhang X, Liu X, Liang Y, Guo X, Xiao Y, Ma L, Miao B, Liu H, Peng D, Huang W, Zhang Y (2017) Adaptive evolution of extreme acidophile Sulfobacillus thermosulfidooxidans potentially driven by horizontal gene transfer and gene loss. Appl Environ Microbiol 83(7):e03098– e03016 





Brüggemann H, Bäumer S, Fricke WF, Wiezer A, Liesegang H, Decker I, Herzberg C, Martinez-Arias R, Merkl R, Henne A, Gottschalk G (2003) The genome sequence of Clostridium tetani, the causative agent of tetanus disease. Proc Natl Acad Sci 100(3):1316–1321 





Gallagher KA, Jensen PR (2015) Genomic insights into the evolution of hybrid isoprenoid biosynthetic gene clusters in the MAR4 marine streptomycete clade. BMC Genomics 16(1): 1–13 





Ochman H, Lawrence JG, Groisman EA (2000) Lateral gene transfer and the nature of bacterial innovation. Nature 405(6784):299–304 





Zolfaghari Emameh R, Barker HR, Hytönen VP, Parkkila S (2018) Involvement of β-carbonic anhydrase genes in bacterial genomic islands and their horizontal transfer to protists. Appl Environ Microbiol 84(15):e00771–e00718 





Buchrieser C, Brosch R, Bach S, Guiyoule A, Carniel E (1998) The high-pathogenicity island of Yersinia pseudotuberculosis can be inserted into any of the three chromosomal asn tRNA genes. Mol Microbiol 30(5):965–978 





Gardy JL, Loman NJ (2018) Towards a genomics-informed, real-time, global pathogen surveillance system. Nat Rev Genet 19(1):9–20 





Parsot C, Sansonetti PJ (1999) The virulence plasmid of Shigellae: an archipelago of pathogenicity islands? In: Pathogenicity islands and other mobile virulence elements. ASM Press, Washington, pp 151–165 





Zolfaghari Emameh R, Barker HR, Tolvanen ME, Parkkila S, Hytönen VP (2016) Horizontal transfer of β-carbonic anhydrase genes from prokaryotes to protozoans, insects, and nematodes. Parasit Vectors 9(1):1–12 





Burks AW, Shin D, Cockrell G, Stanley JS, Helm RM, Bannon GA (1997) Mapping and mutational analysis of the IgE-binding epitopes on Ara h 1, a legume vicilin protein and a major allergen in peanut hypersensitivity. Eur J Biochem 245(2):334–339 





Godeux AS, Svedholm E, Barreto S, Potron A, Venner S, Charpentier X, Laaberki MH (2022) Interbacterial transfer of carbapenem resistance and large antibiotic resistance islands by natural transformation in pathogenic Acinetobacter. MBio 13(1):e02631–e02621 





Partridge SR, Kwong SM, Firth N, Jensen SO (2018) Mobile genetic elements associated with antimicrobial resistance. Clin Microbiol Rev 31(4):e00088–e00017 





Guglielmini J, de la Cruz F, Rocha EP (2013) Evolution of conjugation and type IV secretion systems. Mol Biol Evol 30(2):315–331 





Peng X, Holz I, Zillig W, Garrett RA, She Q (2000) Evolution of the family of pRN plasmids and their integrase-mediated insertion into the chromosome of the crenarchaeon Sulfolobus solfataricus. J Mol Biol 303(4):449–454 





Gushgari-Doyle S, Lui LM, Nielsen TN, Wu X, Malana RG, Hendrickson AJ, Carion H, Poole FL, Adams MW, Arkin AP, Chakraborty R (2022) Genotype to ecotype in niche environments: adaptation of Arthrobacter to carbon availability and environmental conditions. ISME Commun 2(1):1–10 





Penn K, Jensen PR (2012) Comparative genomics reveals evidence of marine adaptation in Salinispora species. BMC Genomics 13(1):1–12 





Hacker J, Blum-Oehler G, Mühldorfer I, Tschäpe H (1997) Pathogenicity islands of virulent bacteria: structure, function and impact on microbial evolution. Mol Microbiol 23(6): 1089–1097 





Penn K, Jenkins C, Nett M, Udwary DW, Gontang EA, McGlinchey RP, Foster B, Lapidus A, Podell S, Allen EE, Moore BS (2009) Genomic islands link secondary metabolism to functional adaptation in marine Actinobacteria. ISME J 3(10):1193–1203 





Hacker J, Carniel E (2001) Ecological fitness, genomic islands and bacterial pathogenicity. EMBO Rep 2:376–381 





Preston GM, Haubold B, Rainey PB (1998) Bacterial genomics and adaptation to life on plants: implications for the evolution of pathogenicity and symbiosis. Curr Opin Microbiol 1(5): 589–597 



# Genomic Islands Involved in Iron Uptake

8 

Stanzin Choksket, Harshvardhan, Ashish Jain, Suresh Korpole, and Vishakha Grover 

## Abstract

Iron is an important element for all life forms. In microbial life, it plays a significant bearing either as an important growth factor and/or cofactor for various metabolic processes in case of environmental bacteria or as a virulence determinant for many pathogenic microorganisms to affect their disease-causing ability. Microorganisms have developed a variety of modes to acquire iron from local environment. In iron scarcity conditions, many bacteria adopt specific strategies to fulfill their iron requisite and survive. Distinct genetic machinery targeted for iron uptake and utilization have been documented and have been extensively studied. Different microorganisms harbor distinct genomic islands specifically intended to accomplish the iron uptake and few have been described in detail to provide insights into this important area. The current chapter provides an update on the various microbial mechanisms of iron uptake, general aspects of bacterial genomic islands and the details of the genomic islands involved in the microbial iron uptake mechanisms. 

## Keywords

Iron uptake · Genomic islands · Ferric ion · Siderophores · Heme · Yersiniabactin 

S. Choksket · Harshvardhan · S. Korpole 

CSIR-Institute of Microbial Technology, Chandigarh, India 

e-mail: stanzin@imtech.res.in; harshvardhan@imtech.res.in; suresh@imtech.res.in 

A. Jain 

Dental Institute, Rajendra Institute of Medical Sciences, Ranchi, Jharkhand, India 

V. Grover (✉) 

Dr. HS Judge Institute of Dental Sciences and Hospital, Panjab University, Chandigarh, India 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_8 

## 8.1 Introduction

Iron is a vital component for all life forms including humans and microbes. It has a significant bearing on day-to-day life processes such as the interactions with bacteria, defensive ability, and many other vital metabolic activities considered crucial for life processes (Wessling-Resnick 2010; Nairz et al. 2010; Markel et al. 2007). The majority of living things have evolved to obtain iron from their nearby environment using the conserved evolutionary approach. Iron plays a vital role as a cofactor in bacterial replication and growth requirements, synthesis of DNA, energy metabolism, and protection against oxidative species. Thus, the deficiency of iron may hamper many essential bacterial metabolic processes (Sheftel et al. 2012). In such conditions, generally, ferric uptake is initiated by the derepression or activity of several iron acquisition gene programs. On the other hand, Ferric uptake regulator (FUR) proteins act as a regulator guided by iron concentration to stop iron intake in the presence of adequate amount of iron present in the local environment. Siderophores formation, cell surface enzymes that reduce iron to be used by the microbe and biochemical mediators, e.g., cytotoxins stimulating release of iron from host contribute toward the microbial modes of iron acquisition (Yilmaz and Li 2018). 

It is important to understand iron metabolism to have better insights into microbial survival processes including the vital housekeeping as well as advanced mechanisms of adaptation (Andrews 2011; Utley 1990; Hederstedt et al. 2020; Mey et al. 2005). Some bacteria even utilize iron oxidation as a resource for energy production. Since iron is such a pivotal nutrient that almost all prokaryotes need this vital element for survival except the lactic acid bacteria, which can manage to survive without it. The versatility of iron may be gathered from the fact that it has a range of -300 to +700 mV as redox potential based activities, depending on the nature of the ligands and the local environment. However, microbes utilize the compound best in the lower oxidizing form of iron ion (+3-valence) at neutral pH. The compound also plays an essential role in modulating the expression of some virulence factors (Symeonidis and Marangos 2012; Andrews et al. 2003a, 2003b; Golonka et al. 2019; Kramer et al. 2020; Grenier and Tanabe 2011; Zhang et al. 2012). Thus, iron is a crucial element for the majority forms of gut bacteria except for Bacteroides spp. (Rocha et al. 1991; Otto et al. 1990) and Enterobacteriaceae (Carpenter and Payne 2014). Another exceptional strain is Lactobacilli species, which can grow without iron (Imbert and Blondeau 1998; Weinberg 1997). Some probiotic bacteria like Lactobacillus plantarum 299v, help in the increased absorption in host organisms (Botta et al. 2021). 

Although relatively low iron concentrations are consistent with satisfactory growth yields of microbes, still many times low-level iron around the bacteria owing to the presence of iron-binding proteins, e.g., ferritin, lactoferrin, and transferring and must exercise a huge deal of adaptation to maintain the needful concentrations of the vital element. In the oral cavity, salivary lactoferrin serves as a crucial element in the maintenance of iron levels and metabolism in the context of oral microorganisms (van der Hoeven et al. 1984; Weinberg 2001; Lönnerdal and 

Iyer 1995). The resident oral bacteria have devised a large variety of mechanisms to meet their iron requirements, e.g., reducing $\mathrm { F e } ^ { 3 + }$ to the soluble $\mathrm { F e } ^ { \overset { \cdot } { 2 } + }$ via a membraneassociated ferric reductase activity (Evans et al. 1986), siderophores as high-affinity ferric chelators (Ge et al. 2009; Moelling et al. 2007), directly acquiring human transferring (Duchesne et al. 1999), or importing heme via heme binding protein (Liu et al. 2006). The essential requirement coupled with the limited bioavailability, and microbial iron regulation mechanisms make iron an important deterministic factor for microbial composition in the oral cavity (Wang et al. 2012). 

## 8.2 Iron Uptake in Bacteria

There are many acquiring systems in the microbes that can work toward maintaining a balanced concentration of iron, for example, siderophore production, with its associated receptors and transport protein, etc. is one prime acquisition system that ensures the availability of iron in iron-deficient conditions to microbes. Similarly in very extreme conditions, there are microbial species known as extremophiles which tend to possess characteristics from diverse groups of bacteria, as their adaptive measures to sustain in that extremely harsh environment. One of these bacterial groups halophiles has its siderophores in distinctive structural characterization different from the usual structure seen in rest of the microbes. 

Iron assimilation in bacteria occurs by diverse pathways, as several different resources of iron may be utilized to uptake environmental iron. Gram-negative bacteria, accomplish iron transport by complexing iron to a carrier which with the help of receptor protein in the outer membrane shall transport across based on iron concentration. A particular receptor protein is usually specific to bind a unique ironcarrier complex. The receptor proteins viz. TonB, ExbB, and ExbD generally work as a functional unit to act as gated pores utilizing the electrochemical potential of cell membranes and allowing the passage of iron or iron chelates across the cellular environment. Most of the bacteria have a single set of receptor export proteins that can interact further with multiple compounds; however, two microbial species, i.e., Vibrio cholerae and Pseudomonas aeruginosa have two sets of TonB systems which are spanning into the intracellular environment. There are observed subtle differences in the Gram-positive and Gram-negative microbes in harboring these receptor proteins. In Gram-positive cells, generally, the lipoprotein attached to cell membrane is hanging into the peptidoglycan region, whereas Gram-negative bacteria require a fully-fledged system of outer membrane receptor protein, Ton B system, and an ABC transporter out of which Ton B and ABC transporters are known to have broader specificity. 

## 8.2.1 Siderophore-Mediated Iron Transport Systems

Siderophores are highly specific compounds which have low molecular mass (61,000 Da) and a huge affinity toward the ferric form of iron (Andrews et al. 

2003a, 2003b). These are secreted by many lower life forms including bacteria and fungi and can reach huge concentrations up to 200 mg in response to iron-deficient conditions. So far, approximately 500 kinds of these compounds have been known and are classified according to the functional group involved in the binding of iron (Byers and Arceneaux 1998; Ratledge and Dover 2000). These are one of the prime mechanisms to obtain iron by microbial species, and sustain life in iron-deficient conditions. Two broad categories which are most well studied are catecholate or o hydroxamate types Siderophores from hexadentate octahedral complexes with ferric iron typically employ hydroxamates, which serve as much efficacious $\mathrm { F e } ^ { 3 + }$ ligands (Winkelmann 1991; Winkelmann 2002). The siderophores compounds so formed or their modifications, for example, by the addition of some glucose moieties or the breakdown products, etc. may be synthesized in an iron-deficient environment and once these compounds are released from cells they are internalized by the microbes present using the available transport systems. Extensive studies into the siderophore biosynthesis mechanisms have revealed a new group of enzymes with phosphopantetheine transferases, the enzymatic reaction mediated by this particular class of enzyme enables the binding and aggregation of the activated precursor compounds to produce the final product by donating the P-pant to the peptide synthetases to make iron available for membrane receptor proteins in conjunction with the protein-dependent ABC transporters. Citrate is another important mediator compound which when present in an environment above the concentration of 0.1 Milli mole per liter serves as a useful resource iron transport system as it acts similar to dihydroxy benzoic acid and dihydroxy benzoyl serine which are the metabolic precursor and a breakdown product of siderophore enterobactin. In comparison to biosynthesis, the release of iron from these compounds is not elucidated much. Once these compounds are within the cellular environment, the mechanism responsible for release is usually thought to be either the lesser affinity of these compounds to ferrous form or the reducing environment of the cytoplasm where enzymatic reduction of iron is considered to release the free siderophores. There have been many in vitro studies to demonstrate the presence of such reduction activities employing ferri-siderophore reductase activities. Usually, these enzymes have a broad range of substrate specificity and are not affected by the presence or absence of iron in the environment. Many new variants of these enzymes are being discovered, e.g., Fhu F from E. coli which is specific for three ferric hydroxamate siderophores. In terms of transport across membranes, ABC transporters are the most widely used set of ATP-utilizing transporters. There are other transporter families such as MFS and RND which are utilized by specific species of the genera Vibrio, Bordetella, Legionella and Pseudomonas. The efflux pumps employed in iron transport have workability to many substrates, for example, E.coli utilizes two proteins, i.e., ENTs and Tol C for its enterobactin secretion. Tol C is an outer membrane protein that is vital for efflux pump functioning in many bacteria. In specific situations such as in the case of a high acidic environment, iron is oxidized for energy production by bacteria and different mechanism of acquisition of the element from environment has been described. Considerate research effort has been focused in the recent past on bioinformatics approach to study iron transport proteins. It was found that 

Acidithiobacillus ferrooxidans, Acidithiobacillus thiooxidans, and Acidithiobacillus caldus possess the corresponding genetic information required for the oxidation of ferrous iron (Andrews et al. 2003a, 2003b). 

Acidithiobacillus ferrooxidans, Acidithiobacillus thiooxidans, and Acidithiobacillus caldus all possess the corresponding genetic information that is responsible for the oxidation of ferrous iron. These microorganisms have helped study some facets of the mechanism and suggested that A. ferrooxidans is capable of complementing the functions of Dfur E. coli (Quatrini et al. 2005). Other bioinformatic studies revealed that genetic machinery for iron metabolism was upregulated in Ferroplasma acidarmanus (Potrykus et al. 2011) particularly in iron-poor conditions. Osorio et al. 2008; Potrykus et al. 2011 have shared some of the computational analysis-based genetic information in this regard. A. ferrooxidans and A. thiooxidans are known to have genetically an efficient setupfor iron metabolism including citrate (a siderophore) production, a citrate efflux pump and a Ton B-dependent Fe(III)-dicitrate transport systems (Osorio et al. 2008). Also, Potrykus et al. (2011) reported the production of a siderophore system in F. acidarmanus, without much elucidation on the structural details. A number of phylogenetic studies have been specifically carried out in acidic soil environments on secondary metabolite production from rhizobia, yet not much information on the structure could be obtained (Yadav et al. 2011). The isolated siderophores include Pseudomonas putida (7), P. fluorescens (2), Rhizobium radiobacter (1), P. syringae (1), and Bacillus atrophaeus (1) Karagoz et al. (2012). Another report from Verma et al. also measured the production activity of siderophore from a microbe viz. P. fluorescens, yet hardly any information on the structural aspects was obtained (Verma et al. 2007). Only a compound pyoverdine from Pseudomonas species was considered as a potential candidate (Kalinowski et al. 2006). 

## 8.2.2 Iron Acquisition Through Ferrous and Ferric Ions

Utilizing the outer membrane, the iron can enter in the form of Fe. Microbes have multiple systems in place to enable iron absorption from the extracellular environment. Cell cytoplasmic membrane transporters generally have an affinity for the transition metals at large, yet show some limited affinity for ferrous form. Microbial iron (II) transport system, known as Feo, has been well studied in E. coli and serves an important role in ensuring iron supply under anaerobic conditions. FeoB is a huge constitutional membrane protein, which spans approximately to involve 700–800 amino acid residues and functions as the mainstay of this transport system. FeoB functions optimally with two other regulated small proteins, FeoA and FeoC, and is ATP/GTP dependent for transport. 

Streptococcus mutans, being an aerotolerant bacteria has a different system to uptake iron. They utilize reductase enzyme on the outer surface of the cell to convert surface-bound iron into ferrous form so that it may be taken inside the cellular cytoplasm. Gram-negative flora, e.g., Serratia has an acquisition system for iron which is a kind of ABC transporter and has been described for the first time in this bacteria. The same system named Sfu-type transport is responsible for iron acquisition in Haemophilus, Yersinia, Actinobacillus, and Neisseria. Ferric iron transporters along with uptake systems in outer membrane also facilitate iron transport in many microbial organisms (Andrews et al. 2003a, 2003b). 

## 8.2.3 Iron Acquisition from Heme

Animals typically have bonded iron because it is found in cells as heme and acts as a prosthetic group for many animal proteins, most notably hemoglobin. Other, hemecontaining proteins are myoglobin, cytochromes, etc. and to obtain free iron from these substances, it has to be released by the hemolysis of red blood corpuscles. The extracellular heme further binds to multiple plasma proteins and glycoproteins and thus, becomes available as a possible source of iron. For most bacterial species such as Shigella, vibrio, and Yersinia the entire heme molecule may enter the cell. On the other hand, all strains of E. coli are not able to obtain iron from heme but certain strains having an ABC transporter for dipeptides may complex with hemoglobin transporter and serve as additional roles in iron transport from heme. Several other microbial species, for example, Nesseria have a designated transporter for heme which is a TonB-dependent transport system. Another variant of extracellular heme binding protein is HasA which can uptake free or bound hemoglobin and transfer iron to receptors at the outer cellular membrane. E. coli having a specific plasmid pqv also secretes hemoglobin binding protein. All these transfer proteins require functional TonB-dependent outer membrane systems. Specifically, hemophilus strains can utilize heme associated with hemopexin, which also requires a functional TonB protein (Andrews et al. 2003a, 2003b). 

## 8.2.4 Iron Uptake via Transferrin and Lactoferrin

TF and LF are the vital components involved in the extracellular iron transport system, particularly in vertebrate forms of life. These are two structurally related glycoproteins, which harbor an ability to bind two ferric ions each. Many of the bacterial species such as Neisseria and Haemophilus absorb iron with the help of an iron receptor transferrin and do not make siderophores. This bipartite receptor contains two distinct proteins, Tbpa and Tbpb, which are present on the surface and iron regulated. Protein b is a lipoprotein that discriminates between appo and holo transferrin and its expression is not mandatory for transferrin-based iron uptake. The uptake of ferric siderophore and vitamin B12 via bacterial cell membranes is carried out by TbpA, a member of TonB-dependent transporters, via a protein gradient. This protein differs from other mechanisms where the whole complex is internalized, but in this case, iron is removed from the transferrin at the cell surface (Cornelissen 2003). Another protein of the same family with 60% amino acids similar to transferrin is Lactoferrin. It was first discovered from bovine milk, though the protein shares similar composition, secondary and tertiary structures to transferrin, it differs in their biological activities from transferring. There are three different isoforms to LF with Alpha form being the only form binding iron whereas beta and gamma both have ribonuclease activity only. LF helps the utilization of iron by pathogenic bacteria as it may directly accept ferric iron from other proteins and serves as an important player by preventing bacteria to sequester iron, which is an essential requirement for their well-being and virulence (Andrews et al. 2003a, 2003b). 

## 8.2.5 Low-Affinity Iron Uptake Systems

The low-affinity iron transport systems comes to the mainstream when the concentration of iron becomes limited in extraneous environments and are generally observed in more than 5–10 mmol l–1 iron present in the vicinity. The prime requisite for these systems to work is the presence of iron in the Fe form. Typically, the feo system proteins or a cell membrane-associated transporter system that has broad selectivity for interacting molecules like divalent cations, such as the CorA protein of E. coli and Salmonella typhimurium, are used to ingest the Fe form (Earhart 2009). 

## 8.2.6 Iron Uptake Mechanisms in Pathogenic Bacteria

Most of the iron in higher forms like mammals exists usually in a bound state to iron binding proteins and maintains a reduced level of the free extracellular iron, which is unable to support the growth of microbial species, hence infections. Apart from this, the host also produces many oxygen transport and storage proteins such as hemoglobin and myoglobin, which carry heme as an Iron containing central molecule. These molecules further reduce the amount of iron for pathogenic bacteria (Litwin and Calderwood 1993). Pathogenic flora employs several mechanisms to cope with these systems and develop many sophisticated mechanisms to sequester iron in such low iron conditions. For instance, iron deficiency triggers the Shiga-like toxin I of enterohemorrhagic E. coli (Calderwood and Mekalanos 1987). Some others can combat the host-driven iron restriction via siderophores. Siderophores act as competitive analogs to host iron-binding proteins, whereas some siderophore-based transport systems serve as portals for ejective host colonization (Williams and Warner 1980; Winkelmann 1991). However, many pathogens may directly utilize the host iron complexes via receptor-mediated transport systems, instead of free iron or releasing the iron from its bound form (Andrews et al. 2003a, 2003b). 

## 8.3 Bacterial Iron Homeostasis

Iron is an important biomolecule involved in multiple biological processes. The functionality of iron in microbial life depends on many factors such as if it is in free or bound form with proteins, exists as a mono or binuclear species and whether it forms a member of some iron-based complex such as iron-sulfur clusters or heme groups. Iron molecules existing within a protein complex, appear a little bit more manageable in the local environment as the presence of protein allows a controlled interface for the diverse functionality of the iron assuming the necessary redox potential, geometry, and spin state. Oxygen availability and iron metabolism are very closely linked as the bacteria thrive in varying conditions of both these compounds over a great range. The most common shift of the diverse form of iron was a transit from a soluble form, i.e., ferrous state to a quiet stable insoluble form of ferric ion, which makes the element much less available. Also, this particular form seems to have a potential for toxicity, with oxygen being available in the vicinity. Iron mediates many important biochemical reactions specifically related to oxidation mechanisms such as superoxide formation, hydroxyl free radicals production, and Fenton reactions in the cellular environment and prevents the biological damage incident on cellular DNA. The regulation of iron sulfur cluster is primarily accomplished by an autoregulated protein termed as ferric uptake regulator(Fur), which serves as a repressor in the regulatory mechanism for most iron uptake promoters (Vogt et al. 2021; Delany et al. 2003). Thus, to ensure adequate iron supply for normal cell cycle and cellular activities, the microbes have to develop unique strategies for iron uptake from environment depending upon the amount of available iron concentrations in the local milieu. The most significant five mechanisms used by bacteria to manage iron are High-affinity transport enabling iron scavenging, intracellular storage for periods of iron shortage, redox stress resistance systems enabling the inducible release of radicals, downregulation of certain iron-containing proteins, and a highly orchestrated iron responsive regulatory system which mediates all the associate machinery in coherence according to the prevailing environment, ecological niche, and phylogeny (Andrews et al. 2003a, 2003b). 

## 8.4 Genetic Aspects of Iron Uptake Mechanisms in Bacteria

The bacterial genomes keep evolving with diverse processes, for example, mutations, genetic rearrangements, and even by horizontal gene transfers across multiple species. Thus, many accessory genes are acquired by horizontal transport from syntenic blocks which have been recently recognized as the emergence of genomic islands. These islands have led to the belief that they contribute to the diversification and adaptation of microbial species. These alterations impact the genetic characteristics of the species in a big way as significant features such as antibiotic susceptibility, virulence, and many catabolic processes are carried via genomic islands (Schmidt and Hensel 2004). 

GEIs are frequently identified as distinct DNA stretches that separate closely related strains. These are considered important portals of genome plasticity and evolution, as these tend to allow huge flexibility and adaptation in characteristics as needed for the survival of the organisms. With the advent of novel analysis methods and advances in bioinformatic technologies, a great deal of information is emerging to understand these genetic structural entities in a better and clearer way. This information further paves the path for a variety of biotechnological applications in diverse fields of life (Juhas et al. 2009). 

## 8.4.1 Genomic Islands

Genomic Islands are also known popularly as “pathogenicity” Islands. The term came in last some years to denote the genomic islands encoding pathogenicity features and has attracted a great deal of interest from researchers (Hacker and Carniel 2001). These have been first and most studied in the case of E. coli but subsequently, many other pathogenic microorganisms also showed the presence of these specific entities, which were related to the pathogenicity of the microorganism. Genome sequence studies showed a much wider prevalence of these genetic islands and demonstrated that actually these represented a pool of genes for adaptation and flexibility. Genomic Islands usually range between 10 and 100 kilobases in length (Hacker and Kaper 2000). They typically contain genetic sequences acquired from plasmids and/or phages, especially integrases or IS elements. These most frequently emerge as tRNA genes’ unstable component parts. Instability stems from the flanking direct repeats, which appear similar to phage attachment sites and alterations for transit across the genomes by disintegration and assimilation into the new genome (Hacker et al. 1997). Usually, they carry distinct function-related gene clusters. These islands appear distinct from the core genome depending on their G + C composition and codon use. The advantage of genomic islands over smaller genetic changes is that these help the transfer of multiple genes in one go and its incorporation en bloc into the recipient genome. The gene responsible for encoding the siderophore yersiniabactin-mediated iron absorption mechanism is called HPI and has a 36–43 kb GEI. Numerous bacterial GEIs contain type III and type IV secretion systems (T3SS and T4SS), which directly influence pathogenicity and horizontal gene transfer by transferring proteins or nucleoprotein complexes. P. aeruginosa PA14 also encodes many biomolecules involved in iron metabolism. Magnetospirillum gryphiswaldense is known to carry a 130-kb unstable region of probable ancient GEI origin, lately has been documented as a region containing multiple IS causing huge amounts of genetic alterations and also mediating an interesting phenomenon of magnetosome biomineralization. The anaerobic bacterium Geobacter sulfurreducens also exhibited the presence of ancient GEIs with deteriorated integrases with no detection of transfer or excision (Butler et al. 2007). There were grouped genes in this 300 kb region that were involved in the anaerobic metabolism of organic compounds. 

## 8.4.2 GEIs—General Features

GEIs are distinct DNA segments that vary among mobile, closely related bacterial strains. They represent an expanded class of DNA elements with a huge range of size and diversity beyond PAIs. These entities reveal differential coding capacity for several important functional aspects such as ability to coexist, metal assimilations, and toxicities in addition to pathogenicity functions (Hacker et al. 1990; Groisman and Ochman 1996; Sullivan et al. 2002; Gaillard et al. 2006; Larbig et al. 2002). These observations state their strong distinctive ability to provide the organism with a selective advantage of many adaptive, flexible attributes, and auxiliary functions. 

The extremes of variability in the genetic makeup and the associated functional profiles sometimes make it difficult to suggest a typical definition and landscape of work for GEIs. They usually appear as a unique entity, with salient differences from the rest of the chromosome. GEIs appear as a component part of tRNA genes, often as ICEs. GEIs are frequently followed by 16–20 bp of perfectly or almost perfectly repeated direct sequences (Dobrindt et al. 2004). Different evolutionary-related and ancient GEI families have been recognized based on prediction of sequence and functional similarities (Burrus et al. 2002; Juhas et al. 2007; Vernikos and Parkhill 2008). 

Direct repeats serve as identifying sequences for enzymatic activity required for the excision of sequence and often appear depending upon site-specific integration of the island in the target site (Schmidt and Hensel 2004). These regions frequently contain functional or hidden genes that code for integrases, plasmid conjugation systems, phages carrying insertion elements, or transposons, which are involved in transferring genetic material to or erasing DNA from the element (Buchrieser et al. 1998; Gal-Mor and Finlay 2006). GEIs are often associated with the transfer of genetic machinery specifically implicated to provide a selective advantage for the bacteria harboring GEIs (Dobrindt et al. 2004; Schmidt and Hensel 2004). 

## 8.4.3 Genomic Island Identification Methods

Microbial isolation and culturing may or may not be required as part of the approaches for studying genomic islands. However, more thorough analyses, like phenotypic screening of (meta)genomic libraries for traits suggestive of mobile and transferable DNA elements, do require bacterial cultivation when specific and more concrete information is required, such as with comparative genomic analysis using suppressive subtractive hybridization, more frequently for strain-specific DNA regions, or DNA–DNA hybridization for mapping known genes. To detect any horizontally acquired DNA, flanking sequences alterations in tRNA genes and repeat structures, e.g., insertion sequences (IS), the microbes are cultured by standard methods first and further analysis of the overall base composition, G + C content / skew, and delta-differences are characterized. Another unique Island probing strategy that uses counter-selectable markers and other techniques to examine the stability of a DNA region is likewise characterized as a technique involving the isolation and growth of bacteria (Dobrindt et al. 2004). 

## 8.4.4 Types of Genomic Islands—Contributions to Ecological Adaptation and the Pathogenesis

It is well documented that genomic islands are critical in transferring a part of the host chromosome into other related or unrelated bacterial genomes (Hochhut et al. 2000). These GEIs undergo genetic recombination and can modify the characteristics of bacteria. Given that many crucial clinical or fitness features are transmitted via genomic islands, these changes may eventually have an impact on the evolution of the host bacteria (Hamilton et al. 2005). The categorization of these fitness islands into different kinds is not merely based upon their genetic constitution, but more often are related to the specific niche and the organism, into which they are present. Thus, the functionality of the genomic island may be diverse in different environments (Groisman and Ochman 1996; Vernikos and Parkhill 2008), for example, genomic islands contributing toward iron uptake may act as a pathogenic factor in yersiniabactin, however, the same genome island is harmless in other nonpathogenic species and constitutes constitutive machinery contributing to the general well-being of the bacteria. These are also termed as an ecological islands, with some role assigned in the cellular metabolism. If such an island is present in bacteria residing in a host with virulence features, it shall be termed a pathogenicity island. On the contrary, integration of the island into the genome of a nonvirulent microbe may constitute saprophytic islands. 

In this context, fitness is defined as characteristics that help an organism survive, spread, and/or transmit within a particular ecological niche. Because it increases microbial transmission, survival, or colonization within a niche, having a genomic island may confer a selective advantage under particular environmental conditions. From a functional perspective, genomic islands that increase the fitness of the recipient microorganisms should be called “fitness islands,” by Preston et al. In contrast, a genuine pathogenicity island assists directly or indirectly in developing lesions. As a result, a “symbiosis island” is a form of Fitness Island that aids bacteria in favorably interacting with their hosts. In contrast, a genuine pathogenicity island assists directly or indirectly in developing lesions (Juhas et al. 2009). 

## 8.5 Genomic Islands Implicated in Iron Acquisition

Iron is vital for both pathogenic and nonpathogenic bacteria to propagate bacterial populations. Regarding harmful bacteria, generally, availability of iron is much limited in higher forms as most of it remains strongly bound to specific binding proteins like transferrin and lactoferrin. However, there are some species capable of adhering directly to these carrier molecules and obtaining iron, e.g., H. influenzae (Finlay and Falkow 1997). Siderophores, in pathogenic Yersinia also serve as the means for acquiring iron from environment as they bind to iron more strongly as compared to the host’s proteins (Hacker and Carniel 2001). A yersiniabactin coding “high pathogenicity island” (HPI) has been identified in Klebsiella also (Hacker and Carniel 2001). 

Except for a few exceptions like Borrelia burgdorferi strains and lactobacilli, most bacteria need iron as a growth factor. As siderophores are the prime mode of acquisition of iron by most pathogenic bacteria, thus islands encoding siderophore systems are considered as PAIs and as “fitness islands” when they enhance the niche adaptive characteristics, in case of environmental bacteria. “High pathogenicity island” (HPI), initially described in virulent Yersinia spp. is one such example and has been documented in many disease causing and other bacteria. A progenitor island to HPI has been observed in an E. coli isolate related to functional T4SS, active DNA-processing region, and genes necessary for mobilization. Thus, it has been suggested to simulate an IC, which can disseminate effectively across genomes. Many other siderophore systems are located on plasmids, PAIs, and GEIs of diverse microbiota indicating the enhanced capacity of the organisms for maintaining good iron levels by virtue of intaking extraneous DNA (Dobrindt et al. 2004). 

Though the presence of very similar HPI-borne ORFs among different species suggests that probably such acquisitions are not very old in terms of evolutionary changes of these bacteria; however, the underlying mechanisms responsible for this kind of mediating the horizontal transfer yet need exploration (Lesic and Carniel 2005; Juhas et al. 2009). 

Three human pathogenic strains of Yersinia, Y. pestis, Y. pseudotuberculosis, and Y. enterocolitica, have been used as suitable model organisms to research siderophores and their effects on bacterial fitness and metabolism (Rakin et al. 2012). In fact the species delineation into different pathogenic abilities has been based on their ability to deal with iron uptake and expression of a siderophore yersiniabactin (Ybt), which remains a major determinant for murine pathogenicity (Carniel et al. 1987; Heesemann 1987; Rakin et al. 1994). Contrary to this, other two lesser pathogenic strains, i.e., Y. pseudotuberculosis and Y. enterocolitica (low and apathogenic) lack Ybt which led to the belief that Ybt solely exists as an endogenous iron regulatory system for highly pathogenic species of Yersinia only. 

## 8.5.1 Yersiniabactin

This Yersinia species’ siderophore system has undergone the most in-depth research (Perry and Fetherston 2011). It was discovered that Ybt shares a lot of structural similarities with two additional chemicals, pyochelin and anquibactin, which are made by the bacteria Pseudomonas aeruginosa and Vibrio anguillarum, respectively. Phenolate, thiazoline, and thiazolidine rings were observed in the structure of the molecule. Non-ribosomal peptide synthetase (NRPS) and polyketide synthetase (PKS) pathways were employed in the synthesis from salicylate, three cysteine molecules and three methyl groups (Gehring et al. 1998). Six genes, notably irp1—irp5 and irp9 in Y. enterocolitica and irp1–2, ybtU, T, E, and S in Y. pestis and Y. pseudotuberculosis are found in the Ybt cluster. Chorismate is immediately transformed into salicylate, the YbtS precursor, via Irp9 (YbtS) (Pelludat et al. 2003). The activated salicylate is transferred to HMWP2 via the Irp5 (YbtE) salicyl-AMP ligase (encoded by irp2). Irp8 (YbtX in Y. pestis), which was believed to be in charge of exporting Ybt (Fetherston et al. 1999); was documented to have some alternate pathways also working as YbtX—mutants could also secrete the molecule. Fe-Ybt assimilation occurs through both outer and inner membrane proteins such as FyuA and Irp6-7, respectively (Fetherston et al. 1999; Brem et al. 2001; Perry and Fetherston 2011). There is limited information on the periplasmic ferric Ybt transport protein. The major synthetic and transport genetic machinery of Ybt are contained in the mobile genomic element showing recombination activity to a particular site as seen in P4-like integrase (Rakin et al. 1999; Carniel 2001). It is widely distributed in the family Enterobacteriaceae owing to its locus present on the mobile element accounts (Schubert et al. 2004; Antonenka et al. 2005). Multiple factors (environmental and host) control the synthesis and activity of YbT system. Iron-loaded ferric uptake regulator (Fur) protein is involved in the repression of the biosynthetic and transport genes (Fetherston et al. 1999; Anisimov et al. 2005). Apart from this, there is an activation controlled after the transcription by P-pant transferase considered essential for phosphopantetheinylation NRP/PK synthetases (Bobrov et al. 2002). The loss of activity of the Ybt system results in a significant loss of the pathogenicity and virulence of the bacteria (de Almeida et al. 1993; Heesemann et al. 1993; Rakin et al. 1994; Bearden et al. 1997; Pelludat et al. 1998; Brem et al. 2001). Y. enterocolitica 1B harbors a single siderophore, i.e., Ybt. The organism loses its siderophore activity and virulence on its inactivation (Schwyn and Neilands 1987). These findings have come from a comparative analysis of the ybt genes expression in LB media and in vivo growth conditions. The ybt genes were upregulated after Y. pestis inoculation through various routes such as subcutaneous (Sebbane et al. 2006) and intranasal (Lathem et al. 2005; Liu et al. 2009) in different animal experimental studies. These findings were however, not recapitulated in the spleen and liver in mice (Liu et al. 2009) and in the flea (Vadyvaloo et al. 2007; Vadyvaloo et al. 2010). On the contrary, a strong evidence for its role in pathogenicity was gathered from the mammalian hosts. This Ybt siderophore system not only contributes by iron uptake only, rather it imparts the bacterial survival, particularly to some species of E. coli implicated in urinary infections by enabling the microbial species to tackle the excess and toxicity of copper in local environment (Chaturvedi et al. 2012). 

## 8.5.2 Pseudochelin

Another closely related genetic locus to ybt gene cluster, for siderophore system, has been observed in Y. pestis and Y. pseudotuberculosis strains, which is very potent, however, no such locus has been seen in Y. enterocolitica. These are accordingly named as Yersinia non-ribosomal peptide (ynp) (Perry and Fetherston 2004; Forman et al. 2010). It was initially referred to as the second HPI in Y. pestis CO92 (Parkhill et al. 2001), however, due to the absence of mobile elements such as integraseencoding genes or recombination sites, it was later altered to refer to a separate system. In Y. pseudotuberculosis IP32953, the ynp locus (YPTB3290–3298) contains putative NRPS and PKS siderophore assembly genes, transport genes, and outer membrane receptor coding genes. This locus does not contain a salicylate synthase (ybtS), suggesting an alternative biosynthetic precursor. Enzymatic analysis methods have revealed that the YPTB3296 and YPTB3297 genes exhibited three thiazoline rings and molecular mass of 404.4/460.37 m/z with and without Fe3+, respectively (Forman et al. 2010). Ybt and Ynp clusters have diverse distribution patterns in Y. pseudotuberculosis O1. In Y. pestis CO92, the ynp cluster has two chromosomal loci where YPO1011–1012 codes for the receptor and N-terminal part while YPO0770–0778 have the rest of the genes. Such observations over a period clarified the specific functional status of the ynp locus in Y. pestis (Forman et al. 2010) and it was found to be specific to the sporadic Y. pseudotuberculosis strains and named as pseudochelin (Pch) coding locus. The expression of the ynp genes was supported by multiple investigations including in vivo and in vitro studies using microarray and quantitative real-time PCR. It was thought to be another Fur-dependent locus that got upregulated in iron scarcity conditions (Han et al. 2007; Gao et al. 2008). A lot of evidence mounted on the upregulation of the putative ynp receptor gene (YPTB3298) in Y. pestis and Y. pseudotuberculosis in low iron conditions from different researchers (Han et al. 2007; Gao et al. 2008; Rosso et al. 2008). Further, it was observed that growth conditions also altered the upregulation of the cluster as human plasma could witness greater upregulation as compared to LB media (Chauvaux et al. 2007). Studies using the murine pneumonic model revealed that pseudochelin played a function in the early stages of infection (Lathem et al. 2005). Similar findings in the rat bubonic infection model supported the observed expression level (YPTB3298 and YPTB3296) in vivo as opposed to the expression level in LB media (Sebbane et al. 2006; Vadyvaloo et al. 2010). When cells were cultured in PMH2 medium, putative Ynp receptor was found in higher concentrations in the outer membrane extracts of Y. pestis KIM6 at 26C compared to 37C (Pieper et al. 2009). The YbtD siderophore assembly tool could make up for transferase components (Forman et al. 2010). Although the production of aberrant Ybt like molecules by the ynp operon has not yet been proven in laboratory trials, this data has provided valuable insight into the potential connections with other siderophore systems that already exist (Miller et al. 2010). 

## 8.5.3 Yersiniachelin

Another siderophore system which is somewhat different from the rest is a purified fractional part of the autoagglutination factor (AF) of the Ybt-negative strain Y. pestis EV76 (Podladchikova and Rykova 2006). It is a 17,485-kDa complex protein. The AF protein was discovered to be the Hcp (hemolysin coregulated protein)-like component of an extracellular apparatus of the type six secretion system (T6SS) of Gram-negative bacteria (Podladchikova et al. 2011). Yersiniachelin (Ych) 

revealed hydroxamate groups in chemical analysis. All Y. pestis and Y. pseudotuberculosis strains have shown the presence of this cluster except Y. enterocolitica. Removal of three genes responsible for the synthesis of the putative hydroxamate siderophore (ysu IHG) in a knockout experiment for Y. pestis EV76 resulted in the absence of the production of Ych (Podladchikova et al. 2012) support the accountability of the ysu locus for production and assimilation of the siderophore. Bordetella spp. has shown a very similar system NRPS independent alc cluster for another hydroxamate siderophore alcaligin (Alc) primarily mediating the growth, differentiation, and the disease-causing ability of the bacteria (Brickman et al. 2008, 2011; Brickman and Armstrong 2009). Diamine precursors are assembled by an enzyme mechanism that involves multiple steps and is controlled by the alc cluster in Bordetella species. The four siderophore synthesisrelated genes (ysuGHIJE and odc, alcABC), outer membrane receptors (ysuR and fauA), ferric iron reductase genes, and Ysu and Alc clusters have commonalities (ysuF and alcD). The ysu cluster and Y. pestis genomes, however, do not contain the homolog of the alcE biosynthetic gene, which codes for an iron-sulfur protein involved in the C-hydroxylation of precursor molecules during Alc biosynthesis. This is where they diverge from one another. The macrocyclic hydroxamate siderophore has several conceivable structural modifications (Forman et al. 2010). Second, unlike Bordetella cells, the ysu cluster lacks a homolog of the alcS gene (Brickman and Armstrong 2005). The same’s export mechanisms are scarcely known. Third, the alc cluster lacks the ysuABCD genes that code for cellular membrane trafficking. Bordetella completes this specific stage through a different mechanism (Brickman et al. 2011). Multiple structurally unique siderophores carried by the FbpA ABC transporter move iron from the periplasm across the cytoplasmic membrane. Fourth, Bordetella’s synthesis and transport-related genes lack a homolog in the ysu cluster for the AraC-type transcriptional regulator AlcR (Brickman and Armstrong 2009). From numerous study types, such as microarray in vitro, ex vivo growth in human immune cells, and in vivo animal studies, there is growing evidence that Y. pestis expresses the ysu genes. 

Previous observations regarding Y. pestis strains in laboratory studies reveal that the temperature does not affect the transcription of ysu genes (Han et al. 2004; Motin et al. 2004), however, presence of iron tends to downregulate and vice versa (Zhou et al. 2006; Gao et al. 2008). In a comparative analysis (Han et al. 2004; Han et al. 2007), it was found that high salinity and hyperosmotic stress Omp R-dependent signals also have an effect on the cluster, with OmpR potentially serving the same function as AlcR in the expression of the alc genes. Plasma upregulation of ysu genes for Y. pestis and Y. pseudotuberculosis were noted in ex vivo studies (Chauvaux et al. 2007; Rosso et al. 2008). No change was observed in expression inside J774.1 macrophage-like cells in Ybt-negative Y. pestis strains (Fukuto et al. 2010). Within the cells, many genes controlling iron levels were downregulated indicating that the organism is able to maintain its iron homeostasis with adequate levels of iron. The ysu genes failed to express in flea vector in vivo (Vadyvaloo et al. 2010), whereas did not differ in expression in case of mice lungs, spleen, and liver compared to in vitro LB medium (Lathem et al. 2005; Liu et al. 2009). The upregulation of these in the bubo of s.c. infected rats (Sebbane et al. 2006) actually hinted at their role in the early infective phase. Proteomic analysis unraveled the encoding process of ysu genes (Pieper et al. 2009). The biosynthetic protein and siderophore receptor were deciphered to be the part of membrane proteome and YsuR protein and YsuG (AlcC homolog) expression increased in the outer membrane and periplasm during iron starvation (Pieper et al. 2010). It was anticipated that probably the final steps of Ych synthesis are occurring in the periplasm. Thus, the third siderophore system encoded by the ysu locus is expressed in extremely pathogenic Yersinia. Several studies, including mutagenesis investigations, transcriptome, and proteomic analyses, as well as the separation of the Ych siderophore from the strain, have confirmed this finding. However, the exposure of Ych linked to the Hcp-like protein YPO502 in iron-rich environments and the upregulation of its production in response to stress implies that Ych has another function in the physiology of Y. pestis (Rakin et al. 2012). 

The Yersinia HPI exhibits pathognomonic characteristics of a pathogenicity island since it is a significant chromosomal region that contains crucial virulence genes and has a tRNA gene nearby. The area has significant variation in terms of the insertion sequences, G + C content, and an integrase gene, from chromosome in general (Koczura and Kaznowski 2003; Carniel 2002). 

The HPI is the most widely distributed and well-studied PAI among Enterobacteriaceae and has been used to understand the horizontal gene transfer in this process (Schubert et al. 2009). This system establishes the coding of the siderophore yersiniabactin, as a very efficient and significant mechanism for the maintenance of iron homeostasis. The genetic sequence of the island is pretty conserved in different species of microbes with primarily two kinds of variants witnessed in ExPECs: A minimal proportion (approx. 1%) of HPI-positive E. coli strains has a completely self-transmissible integrative conjugative element island. While the majority of E. coli, or around 99% of them, exhibit a non-self-transmissible island combined with a deletion of about 30 kb, containing genes necessary for the island’s mobilization (Schubert and Norenberg 2010; Messerer et al. 2017). The SHI-2 pathogenicity island of Shigella flexneri, which contains the aerobactin genes, is a second significant PAI (Vokes et al. 1999; Koczura and Kaznowski 2003). 

Koczura and Kaznowski (2003) studied the genetic makeup and its diversity of Yersinia HPI in clinical K. pneumoniae isolates. Its location was almost the same way as observed in E. coli (Karch et al. 1999) and Y. enterocolitis (Carniel et al. 1996) strains, i.e., close to asn T gene. However, in the Y. pseudotuberculosis and Y. pestis, its location was variable in relation to any of the three or two asn tRNA genes, respectively (Buchrieser et al. 1998). A 30-bp deletion inside the gene was inferred based on the short version of PCR output for fyuA gene (strains RK 74 and RK 75). The same observations have been documented in some earlier investigations also for some of the disease-causing strains of E. coli (Schubert et al. 1998). Even the integrase gene has seen deletions. As was the case with Yersinia bacteria (Bach et al. 2000), IS100 was not constraining the left boundary in Klebsiella spp. strains and some E. coli isolates (Karch et al. 1999). According to the scientists, the primers were complimentary to any deletions or lack of conservation in DNA sequences found throughout the experiment. This information has previously been published for another strain of Klebsiella oxytoca. The arrangement of the HPI genes in the K. pneumoniae strains was compared to that of Yersinia spp. and E. coli and suggested that these species may have undergone horizontal gene transfer (Koczura and Kaznowski 2003). 

## 8.5.4 Specific PAIs Involved in Iron Uptake

Numerous bacteria have created capture systems that can absorb the iron complexed with different molecules like citrate ions (FEC system) or heme that is coupled to iron (chu system). The bacteria utilize Sit systems or generate siderophores, which are PK-NRP chemicals (Braun 2003). Some siderophores, such as enterobactin (E. coli), are broadly dispersed and are encoded by the organism’s core DNA. There are compounds like Lipocalin-2, which can prevent the iron uptake released from some siderophores such as enterobactin via the FepA receptor of bacteria (Fischbach et al. 2006). To circumvent this host defense response, some bacteria develop iron uptake systems that encode the PAI. The three siderophores that are most frequently observed are salmochelin, yersiniabactin, and aerobactin (Braun 2003). Salmochelin is a well-known glycosylated enterobactin that human Lipocalin-2 cannot inhibit (Fischbach et al. 2006). Urinary tract infections are brought on by extraintestinal pathogenic E. coli (ExPEC), which has a high prevalence of salmochelin and yersiniabactin (Henderson et al. 2009). Salmochelin tends to maintain a high level of bacteremia, and permits the persistent passage of bacteria via the blood–brain barrier in a mice meningitis model. The characterization of ChuA and Hma, two outer membrane heme receptors, ensures the fitness of the bacteria in a UTI mouse model (Hagan and Mobley 2009). The PAI-encoded iron regulation also mediates the transport of manganese and ferrous iron, which renders the organism resistant to oxidative stress. In research models using rats and humans, these pathways help explain urofitness (Snyder et al. 2004). 

The locus of adhesion and autoaggregation (LAA) is a composite 86-kb PAI composed of four modules (Montero et al. 2017). Module III of this system has a role in iron regulation as it encodes an adhesin Iha which is a homolog to an iron regulatory gene. Other components show great similarity to the integrase encoded in SHI-2 (Shigella pathogenicity island 2) PAI. 

The relics of the island’s numerous stepwise assemblies, including a large number of incomplete transposases and IS elements (Moss et al. 1999; Vokes et al. 1999). SHI-2 encodes the iuc ABCD operon that produces the hydroxamate siderophore known as aerobactin (Lawlor and Payne 1984; Vokes et al. 1999; Braun 2003), as well as the iut A gene that codes for the outer membrane receptor for aerobactin complexed to iron (Crosa 1989). 

This island has a unique ABCD locus that encodes a ferrous iron and manganese uptake system from the ABC transporter family, which is quite similar to what was seen for Salmonella. This system was first described in S. flexneri (Kehres et al. 2002; Runyen-Janecky et al. 2006; Fisher et al. 2009). This pathogenicity islands have been documented in many members of E. coli, including both commensals and pathogenic strains, in four clustered insertion sites at diverse locations in the chromosome (Fisher et al. 2009). 

## 8.6 Model for Horizontal Transfer of PAIs

Genomic islands, conserved in E. coli chromosomal backbone are crucial elements of horizontal transfer. However, the transfer of these across diverse strains within the E. coli species has much-limited understanding so far. HPI has been utilized to understand horizontal transfer of genetic content. To comprehend the transfer of DNA islands within the E. coli species, Schubert et al. 2009 used DNA transfer studies and sequence-based approaches (Multi Locus Sequence Typing). The scientists presented evidence that homologous DNA recombination and conjugative transfer are key roles in the horizontal transfer of genetic information, including the pathogenicity island within E. coli. 

The asnT tRNA locus is where HPI is introduced in E. coli. Of the four asn tRNA gene copies found in E. coli, the HPI is positioned at the asnT gene in the majority of the ECOR strain; however, the asnV gene is only linked to the island in the ECOR31 strain. This particular strain harbors a huge genetic cluster as HPI, which tend to resemble an arrangement like conjugative plasmids. Since the HPI is fixed in the E. coli genome, thus the plausibility of its transfer exists either by a clonal distribution or by multiple independent insertions into E. coli from other microbes. Further, a passive transfer mechanism by horizontal transfer cannot be ruled out which actually may follow the transfer with homologous recombinations and integrations in the recipient’s genome. In fact, the passive transfer was demonstrated via experimental evidence also. It was established that the presence of the rec A gene was necessary for the subsequent integration. The researchers defined the transmission and spread of PAIs in general and the HPI in specific. Even though there are some minor variations among the different E. coli strains, almost all E. coli HPIs appear to be recent descendants of a single progenitor. The rapid proliferation of the species suggests a significant selective pressure among its members, which is highly congruent high distribution of the HPI among all extraintestinal pathogenic E. coli (Schubert et al. 2009). 

## 8.7 Siderophores and Colibactin Genotoxin Biosynthetic Pathway Interactions in Escherichia coli

A series of enzymes known as phosphopantetheine transferases (PPTases) are involved in the manufacture of the genotoxin colibactin and low-molecular weight iron chelators (siderophores). EntD (a component of the core genome) and ClbA are the only two PPTases that have been clearly discovered in E. coli (on the pks pathogenicity island, coding for colibactin). 

The Pks Island is observed to be physically connected with the high pathogenicity island (HPI) coding for yersiniabactin production in a subset of highly pathogenic strains of E. coli I, except a gene encoding its homologous PPTase. The authors demonstrated that function interchangeability for ClbA as it could help in siderophores synthesis. Only the destruction or Inactivation of both entD and clbA components completely stopped the disease causing potential of the bacteria in a mouse sepsis model. Whereas any of these being present in a functional form could sustain the survival of ExPEC in vivo. The research revealed for the first time a potential interconnection between various phosphopantetheinyl-dependent pathways that could result in the creation of functionally different secondary metabolites for particular bacteria. The authors speculated that such kind of association is possible owing to the promiscuity of the ClbA PPTase and points toward the intricacy of the virulence regulation mechanisms in bacteria (Martin et al. 2013). 

Another pertinent example of complex bacterial interactions in the context of iron regulation comes from the B. cereus group, which forms bacillibactin (BB), a 2,3-dihydroxybenzoyl-Gly-Thr trilactone siderophore that shares a huge similarity to the enterobactin (Ent) of Gram-negative bacteria. Two members, i.e., B. anthracis and B. cereus, however, produce petrobactin (PB) as a prime compound (Zawadzka et al. 2009; Koppisch et al. 2005; Wilson et al. 2006). PB is also produced by B. cereus and B. thuringiensis isolates (Koppisch et al. 2008), and is known to impact the general growth and virulence mechanisms of the bacteria. Siderocalin, binds to several siderophores and hinders its usage by pathogenic bacteria, however, the unbound siderophores get assimilated to promote the virulence of the bacteria (Abergel et al. 2006;Goetz et al. 2002; Hoette et al. 2008). PB is a unique compound containing two 3,4-catecholate moieties and a citrate-based backbone, whose origin was traced in the marine bacterium Marinobacter hydrocarbonoclasticus (Barbeau et al. 2002). Ferric PB undergoes photolysis and results in an iron reduction, decarboxylation, and oxidation of the ligand with the production of a 3-ketoglutarate residue at the previous position of the citryl moiety (Barbeau et al. 2002). The PB photoproduct (PBν ) acts to significant removal of the iron from transferrin (Abergel et al. 2008). The photoreactivity of ferric complexes with citrate siderophores, like PB and aerobactin, was thought to mediate the formation of ferrous iron available in the environment (Barbeau 2006). Ferric complex of PB and its photoproduct help both in the growth and in the survival of Bacillus subtilis under poor availability of iron (Garner et al. 2004). 

In Gram-positive bacteria, the iron–siderophore complexes are extracted from the local environment by specific transport proteins, i.e., ABC-type transporters (Brown and Holden 2004). B. subtilis the prototype of the group has five such membrane anchors that identify and transport the cell formed BB and a variety of xenosiderophores (Moore and Helmann 2005; Ollinger et al. 2006). These substrate-binding proteins (SBPs), which are similar to the periplasmic binding proteins (bi-lobed structures) of Gram-negative bacteria but have higher selectivity and affinities toward the ligands, scavenge iron-loaded siderophores. A binding protein known as FeuA can distinguish between BB and the similar triscatecholate Ent (Miethke et al. 2006). Different SBPs identify ferric citrate, ferrichromes, ferrioxamines, and photoreactive citrate-based hydroxamates such as schizokinen (Sch) and arthrobactin (YfmC, FhuD, YxeB, and YfiY, respectively). Certain B. subtilis SBPs have been found to utilize the same ABC transporter, FhuBGC, as Staphylococcus aureus (Sebulsky and Heinrichs 2001). It has been determined that the B. cereus group only contains one such mechanism, a ferric dicitrate transporter, which is necessary for B. cereus 569 to be fully virulent in a lepidopteran infection model (Harvie and Ellar 2005). 

## 8.8 Conclusion



Anisimov R, Brem D, Heesemann J (2005) Transcriptional regulation of high pathogenicity island iron uptake genes by YbtA. Int J Med Microbiol 295:19–28. https://doi.org/10.1016/j.ijmm. 2004.11.007 





Calderwood SB, Mekalanos JJ (1987) Iron regulation of Shiga-like toxin expression in Escherichia coli is mediated by the fur locus. J Bacteriol 169:4759–4764. https://doi.org/10.1128/jb.169.10. 4759-4764.1987 





Fukuto HS, Svetlanov A, Palmer LE et al (2010) Global gene expression profiling of Yersinia pestis replicating inside macrophages reveals the roles of a putative stress-induced operon in regulating type III secretion and intracellular cell division. Infect Immun 78:3700–3715. https://doi.org/10.1128/IAI.00062-10 





Hederstedt L, Gorton L, Pankratova G (2020) Two routes for extracellular electron transfer in Enterococcus faecalis. J Bacteriol 202:e00725-19. https://doi.org/10.1128/JB.00725-19 





Lathem WW, Crosby SD, Miller VL et al (2005) Progression of primary pneumonic plague: a mouse model of infection, pathology, and bacterial transcriptional activity. Proc Natl Acad Sci U S A 102:17786–17791. https://doi.org/10.1073/pnas.0506840102 





Osorio H, Martinez V, Nieto PA et al (2008) Microbial iron management mechanisms in extremely acidic environments: comparative genomics evidence for diversity and versatility. BMC Microbiol 8:1. https://doi.org/10.1186/1471-2180-8-203 





Rocha ER, de Uzeda M, Brock JH (1991) Effect of ferric and ferrous iron chelators on growth of Bacteroides fragilis under anaerobic conditions. FEMS Microbiol Lett 68:45–50. https://doi. org/10.1111/j.1574-6968.1991.tb04567.x 





Vogt AS, Arsiwala T, Mohsen M (2021) On iron metabolism and its regulation. Int J Mol Sci 22: 4591. https://doi.org/10.3390/ijms22094591 



Genomic islands make an important portal for horizontal gene transfer and mediate a huge variety of adaptive functions for microbes. Conceptually they are different from plasmids due to their integration ability into the host genetic makeup, though do not require a high replication cost than plasmids. They tend to distribute in a far wide variety of unrelated bacterial species and strongly depend on the ecological positioning and lifestyle of the host species that are environmental or pathogenic. Examination of various genes impacting traits such as resistance to antimicrobials, their ability to survive in close community, and general adaptation can be mediated through genomic Islands. Iron uptake systems are significant metabolic adaptation which is mediated by genomic islands in many bacterial species true for Enterobacter species of bacteria and members of the Pseudomonas group. Yersenia spp. is the model organism to understand the genomic islands involved in iron uptake and has been extensively studied. Increasing the knowledge about the genomic islands involved in the iron uptake may help identify suitable targets to modulate the bacterial resources both in the environmental and virulence aspects. 



Antonenka U, Nölting C, Heesemann J et al (2005) Horizontal transfer of Yersinia highpathogenicity island by the conjugative RP4attB target presenting shuttle plasmid. Mol Microbiol 57:727–734. https://doi.org/10.1111/j.1365-2958.2005.04722.x 





Carniel E (2001) The Yersinia high-pathogenicity island: an iron-uptake island. Microbes Infect 3: 561–569. https://doi.org/10.1016/S1286-4579(01)01412-5 





Gaillard M, Vallaeys T, Vorholter FJ et al (2006) The clc element of Pseudomonas sp. strain B13, a genomic island with various catabolic properties. J Bacteriol 188:1999–2013. https://doi.org/10. 1128/JB.188.5.1999-2013.2006 





Heesemann J (1987) Chromosomal-encoded siderophores are required for mouse virulence of enteropathogenic Yersinia species. FEMS Microbiol Lett 48:229–233. https://doi.org/10.1111/ j.1574-6968.1987.tb02547.x 





Lawlor KM, Payne SM (1984) Aerobactin genes in Shigella spp. J Bacteriol 160:266–272. https:// doi.org/10.1128/jb.160.1.266-272.1984 





Otto BR, Sparrius M, Verweij-van Vught AM, MacLaren DM (1990) Iron-regulated outer membrane protein of Bacteroides fragilis involved in heme uptake. Infect Immun 58:3954–3958. https://doi.org/10.1128/iai.58.12.3954-3958.1990 





Rosso ML, Chauvaux S, Dessein R et al (2008) Growth of Yersinia pseudotuberculosis in human plasma: impacts on virulence and metabolic gene expression. BMC Microbiol 8:211. https://doi. org/10.1186/1471-2180-8-211 





Vokes SA, Reeves SA, Torres AG, Payne SM (1999) The aerobactin iron transport system genes in Shigella flexneri are present within a pathogenicity island. Mol Microbiol 33:63–73. https://doi. org/10.1046/j.1365-2958.1999.01448.x 



## References



Bach S, de Almeida A, Carniel E (2000) The Yersinia high-pathogenicity island is present in different members of the family Enterobacteriaceae. FEMS Microbiol Lett 183:289–294. https://doi.org/10.1111/j.1574-6968.2000.tb08973.x 





Carniel E (2002) Plasmids and pathogenicity islands of Yersinia. Curr Top Microbiol Immunol 264: 89–108. https://doi.org/10.1007/978-3-642-56031-6_6 





Gal-Mor O, Finlay BB (2006) Pathogenicity islands: a molecular toolbox for bacterial virulence. Cell Microbiol 8:1707–1719. https://doi.org/10.1111/j.1462-5822.2006.00794.x 





Heesemann J, Hantke K, Vocke T et al (1993) Virulence of Yersinia enterocolitica is closely associated with siderophore production, expression of an iron-repressible outer membrane polypeptide of 65,000 Da and pesticin sensitivity. Mol Microbiol 8:397–408. https://doi.org/ 10.1111/j.1365-2958.1993.tb01583.x 





Lesic B, Carniel E (2005) Horizontal transfer of the highpathogenicity island of Yersinia pseudotuberculosis. J Bacteriol 187:3352–3358. https://doi.org/10.1128/JB.187.10.3352-3358.2005 





Parkhill J, Wren BW, Thomson NR et al (2001) Genome sequence of Yersinia pestis, the causative agent of plague. Nature 413:523–527. https://doi.org/10.1038/35097083 





Runyen-Janecky L, Dazenski E, Hawkins S et al (2006) Role and regulation of the Shigella flexneri sit and MntH systems. Infect Immun 74:4666–4672. https://doi.org/10.1128/IAI.00562-06 





Wang R, Kaplan A, Guo L (2012) The influence of iron availability on human salivary microbial community composition. Microb Ecol 64:152–161. https://doi.org/10.1007/s00248-012-0013-2 





Barbeau K (2006) Photochemistry of organic iron(III) complexing ligands in oceanic systems. Photochem Photobiol 82:1505–1516. https://doi.org/10.1111/j.1751-1097.2006.tb09806.x 





Carniel E, Guilvout I, Prentice M (1996) Characterization of a large chromosomal highpathogenicity island in biotype 1B Yersinia enterocolitica. J Bacteriol 178:674351. https:// doi.org/10.1128/jb.178.23.6743-6751.1996 





Gao H, Zhou D, Li Y et al (2008) The iron-responsive fur regulon in Yersinia pestis. J Bacteriol 190:3063–3075. https://doi.org/10.1128/JB.01910-07 





Henderson JP, Crowley JR, Pinkner JS et al (2009) Quantitative metabolomics reveals an epigenetic blueprint for iron acquisition in uropathogenic Escherichia coli. PLoS Pathog 5:e1000305. https://doi.org/10.1371/journal.ppat.1000305 





Litwin CM, Calderwood SB (1993) Role of iron in regulation of virulence genes. Clin Microbiol Rev 6:137–149. https://doi.org/10.1128/CMR.6.2.137 





Pelludat C, Brem D, Heesemann J (2003) Irp9, encoded by the high-pathogenicity island of Yersinia enterocolitica, is able to convert chorismate into salicylate, the precursor of the siderophore yersiniabactin. J Bacteriol 185:5648–5653. https://doi.org/10.1128/JB.185.18. 5648-5653.2003 





Schmidt H, Hensel M (2004) Pathogenicity islands in bacterial pathogenesis. Clin Microbiol Rev 17:14–56. https://doi.org/10.1128/CMR.17.1.14-56.2004 





Weinberg ED (1997) The Lactobacillus anomaly: total iron abstinence. Perspect Biol Med 40:578– 583. https://doi.org/10.1353/pbm.1997.0072 





Abergel RJ, Wilson MK, Arceneaux JEL (2006) The anthrax pathogen evades the mammalian immune system through stealth siderophore production. Proc Natl Acad Sci U S A 103:18499– 18503. https://doi.org/10.1073/pnas.060705510 





Barbeau K, Zhang G, Live DH, Butler A (2002) Petrobactin, a photoreactive siderophore produced by the oil-degrading marine bacterium Marinobacter hydrocarbonoclasticus. J Am Chem Soc 124:378–379. https://doi.org/10.1021/ja0119088 





Carniel E, Mazigh D, Mollaret HH (1987) Expression of iron-regulated proteins in Yersinia species and their relation to virulence. Infect Immun 55:277–280. https://doi.org/10.1128/iai.55.1. 277-280.1987 





Garner BL, Arceneaux JEL, Byers BR (2004) Temperature control of a 3,4-dihydroxybenzoate (protocatechuate)-based siderophore in Bacillus anthracis. Curr Microbiol 49:89–94. https:// doi.org/10.1007/s00284-004-4286-7 





Hochhut B, Marrero J, Waldor MK (2000) Mobilization of plasmids and chromosomal DNA mediated by the SXT element, a constin found in Vibrio cholerae O139. J Bacteriol 182: 2043–2047. https://doi.org/10.1128/JB.182.7.2043-2047.2000 





Liu H, Wang H, Qiu J et al (2009) Transcriptional profiling of a mice plague model: insights into interaction between Yersinia pestis and its host. J Basic Microbiol 49:92–99. https://doi.org/10. 1002/jobm.200800027 





Pelludat C, Rakin A, Jacobi CA et al (1998) The yersiniabactin biosynthetic gene cluster of Yersinia enterocolitica: organization and siderophore-dependent regulation. J Bacteriol 180:538–546. https://doi.org/10.1128/JB.180.3.538-546.1998 





Schubert S, Darlu P, Clermont O et al (2009) Role of intraspecies recombination in the spread of pathogenicity islands within the Escherichiacoli species. PLoS Pathog 5:e1000257. https://doi. org/10.1371/journal.ppat.1000257 





Weinberg ED (2001) Human lactoferrin: a novel therapeutic with broad spectrum potential. J Pharm Pharmacol 53:1303–1310. https://doi.org/10.1211/0022357011777792 





Abergel RJ, Zawadzka AM, Raymond KN (2008) Petrobactin-mediated iron transport in pathogenic bacteria: coordination chemistry of an unusual 3,4-catecholate/citrate siderophore. J Am Chem Soc 130:2124–2125. https://doi.org/10.1021/ja077202g 





Bearden SW, Fetherston JD, Perry RD (1997) Genetic organization of the yersiniabactin biosynthetic region and construction of avirulent mutants in Yersinia pestis. Infect Immun 65:1659– 1668. https://doi.org/10.1128/iai.65.5.1659-1668.1997 





Carpenter C, Payne SM (2014) Regulation of iron transport systems in Enterobacteriaceae in response to oxygen and iron availability. J Inorg Biochem 133:110–117. https://doi.org/10. 1016/j.jinorgbio.2014.01.007 





Ge R, Sun X, He Q (2009) Iron acquisition by Streptococcus species: an updated review. Front Biol China 4:392–401. https://doi.org/10.1007/s11515-009-0035-4 





Hoette TM, Abergel RJ, Xu J (2008) The role of electrostatics in siderophore recognition by the immunoprotein siderocalin. J Am Chem Soc 130:17584–17592. https://doi.org/10.1021/ ja8074665 





Liu X, Olczak T, Guo H-C (2006) Identification of amino acid residues involved in heme binding and hemoprotein utilization in the Porphyromonas gingivalis heme receptor HmuR. Infect Immun 74:1222–1232. https://doi.org/10.1128/IAI.74.2.1222-1232.2006 





Perry RD, Fetherston J (2004) Iron and heme uptake systems. In: Carniel E, Hinnebusch BJ (eds) Yersinia molecular and cellular biology. Horizon Bioscience, Norfolk, pp 257–283 





Schubert S, Norenberg D, Clermont O et al (2010) Prevalence and phylogenetic history of the TcpC virulence determinant in Escherichiacoli. Int J Med Microbiol 300:429–434. https://doi.org/10. 1016/j.ijmm.2010.02.006 





Wessling-Resnick M (2010) Iron homeostasis and the inflammatory response. Annu Rev Nutr 30: 105–122. https://doi.org/10.1146/annurev.nutr.012809.104804 





de Almeida AM, Guiyoule A, Guilvout I et al (1993) Chromosomal irp2 gene in Yersinia: distribution, expression, deletion and impact on virulence. Microb Pathog 14:9–21. https:// doi.org/10.1006/mpat.1993.1002 





Bobrov AG, Geoffroy VA, Perry RD (2002) Yersiniabactin production requires the thioesterase domain of HMWP2 and YbtD, a putative phosphopantetheinylate transferase. Infect Immun 70: 4204–4214. https://doi.org/10.1128/IAI.70.8.4204-4214.2002 





Chaturvedi KS, Hung CS, Crowley JR et al (2012) The siderophore yersiniabactin binds copper to protect pathogens during infection. Nat Chem Biol 8:731–736. https://doi.org/10.1038/ nchembio.1020 





Gehring AM, DeMoll E, Fetherston JD et al (1998) Iron acquisition in plague: modular logic in enzymatic biogenesis of yersiniabactin by Yersinia pestis. Chem Biol 5:573–586. https://doi. org/10.1016/S1074-5521(98)90115-6 





van der Hoeven JS, de Jong M, Rogers AH, Camp P (1984) A conceptual model for the co-existence of Streptococcus spp. and Actinomyces spp. in dental plaque. J Dent Res 63: 389–392. https://doi.org/10.1177/00220345840630030601 





Lönnerdal B, Iyer S (1995) Lactoferrin: molecular structure and biological function. Annu Rev Nutr 15:93–11. https://doi.org/10.1177/0022034584063003060 





Perry RD, Fetherston JD (2011) Yersiniabactin iron uptake: mechanisms and role in Yersinia pestis pathogenesis. Microbes Infect 13:808–817. https://doi.org/10.1016/j.micinf.2011.04.008 





Schubert S, Rakin A, Heesemann J (2004) The Yersinia high-pathogenicity island (HPI): evolutionary and functional aspects. Int J Med Microbiol 294:83–94. https://doi.org/10.1016/j.ijmm. 2004.06.026 





Williams PH, Warner PJ (1980) ColV-plasmid mediated, colicin V-independent iron uptake system of invasive strains of Escherichia coli. Infect Immun 29:411–416. https://doi.org/10.1128/iai. 29.2.411-416.1980 





Andrews SC (2011) Making DNA without iron - induction of a manganese-dependent ribonucleotide reductase in response to iron starvation. Mol Microbiol 80:286–289. https://doi.org/10. 1111/j.1365-2958.2011.07594.x 





Botta A, Barra NG, Lam NH et al (2021) Iron reshapes the gut microbiome and host metabolism. J Lipid Atheroscl 10:160–183. https://doi.org/10.12997/jla.2021.10.2.160 





Chauvaux S, Rosso ML, Frangeul L et al (2007) Transcriptome analysis of Yersinia pestis in human plasma: an approach for discovering bacterial genes involved in septicaemic plague. Microbiology 153:31123123. https://doi.org/10.1099/mic.0.2007/006213-0 





Goetz DH, Holmes MA, Borregaard N (2002) The neutrophil lipocalin NGAL is a bacteriostatic agent that interferes with siderophore-mediated iron acquisition. Mol Cell 10:1033–1043. https://doi.org/10.1016/S1097-2765(02)00708-6 





Imbert M, Blondeau R (1998) On the iron requirement of lactobacilli grown in chemically defined medium. Curr Microbiol 37:64–66. https://doi.org/10.1007/s002849900339 





Markel TA, Crisostomo PR, Wang M et al (2007) The struggle for iron: gastrointestinal microbes modulate the host immune response during infection. J Leukoc Biol 81:393–400. https://doi. org/10.1189/jlb.0906579 





Pieper R, Huang ST, Clark DJ et al (2009) Integral and peripheral association of proteins and protein complexes with Yersinia pestis inner and outer membranes. Proteome Sci 7:5. https:// doi.org/10.1186/1477-5956-7-5 





Schubert S, Rakin A, Karch H et al (1998) Prevalence of the ‘high-pathogenicity island’ of Yersinia species among Escherichiacoli strains that are pathogenic to human. Infect Immun 66:480–485. https://doi.org/10.1128/IAI.66.2.480-485.1998 





Wilson MK, Abergel RJ, Raymond KN (2006) Siderophores of Bacillus anthracis, Bacillus cereus, and Bacillus thuringiensis. Biochem Biophys Res Commun 348:320–325. https://doi.org/10. 1016/j.bbrc.2006.07.055 





Andrews SC, Robinson AK, Rodríguez-Quiñones F (2003a) Bacterial iron homeostasis. FEMS Microbiol Rev 2-3:215–237. https://doi.org/10.1016/S0168-6445(03)00055-X 





Braun V (2003) Iron uptake by Escherichia coli. Front Biosci 8:s1409–s1421. https://doi.org/10. 2741/1232 





Cornelissen CN (2003) Transferrin-iron uptake by gram-negative bacteria. Front Biosci 1(8):d836– d847. https://doi.org/10.2741/1076 





Golonka R, Yeoh BS, Vijay-Kumar M (2019) The iron tug-of-war between bacterial siderophores and innate immunity. J Innate Immun 11:249–262. https://doi.org/10.1159/000494627 





Juhas M, Power PM, Harding RM et al (2007) Sequence and functional analyses of Haemophilus spp. genomic islands. Genome Biol 8:R23. https://doi.org/10.1186/gb-2007-8-11-r237 





Martin P, Marcq I, Magistro G et al (2013) Interplay between siderophores and colibactin genotoxin biosynthetic pathways in Escherichia coli. PLoS Pathog 9(7):e1003437. https://doi.org/10.1371/ journal.ppat.1003437 





Pieper R, Huang ST, Parmar PP et al (2010) Proteomic analysis of iron acquisition, metabolic and regulatory responses of Yersinia pestis to iron starvation. BMC Microbiol 10:30. https://doi.org/ 10.1186/1471-2180-10-30 





Schwyn B, Neilands JB (1987) Universal chemical assay for the detection and determination of siderophores. Anal Biochem 160:47–56. https://doi.org/10.1016/0003-2697(87)90612-9 





Winkelmann G (1991) Structural and sterochemical aspects of iron transport in fungi. Biotechnol Adv 8:207–223. https://doi.org/10.1016/0734-9750(90)90013-2 





Andrews SC, Robinson AK, Rodríguez-Quiñones F (2003b) Bacterial iron homeostasis. FEMS Microbiol Rev 27:215–237. https://doi.org/10.1016/S0168-6445(03)00055-X 





Brem D, Pelludat C, Rakin A (2001) Functional analysis of yersiniabactin transport genes of Yersinia enterocolitica. Microbiology 147:1115–1127. https://doi.org/10.1099/00221287-147- 5-1115 





Crosa JH (1989) Genetics and molecular biology of siderophore-mediated iron transport in bacteria. Microbiol Rev 53:517–530. https://doi.org/10.1128/mr.53.4.517-530.1989 





Grenier D, Tanabe S (2011) Transferrin as a source of iron for Campylobacter rectus. J Oral Microbiol 3:3. https://doi.org/10.3402/jom.v3i0.5660 





Juhas M, van der Meer JR, Gaillard M et al (2009) Genomic islands: tools of bacterial horizontal gene transfer and evolution. FEMS Microbiol Rev 33:376–393. https://doi.org/10.1111/j. 1574-6976.2008.00136 





Messerer M, Fischer W, Schubert S (2017) Investigation of horizontal gene transfer of pathogenicity islands in Escherichia coli using next generation sequencing. PLoS One 12(7):e0179880. https://doi.org/10.1371/journal.pone.0179880 





Podladchikova O, Antonenka U, Heesemann J, Rakin A (2011) Yersinia pestis autoagglutination factor is a component of the type six secretion system. Int J Med Microbiol 301:562–569. https://doi.org/10.1016/j.ijmm.2011.03.004 





Sebbane F, Lemaitre N, Sturdevant DE et al (2006) Adaptive response of Yersinia pestis to extracellular effectors of innate immunity during bubonic plague. Proc Natl Acad Sci U S A 103:11766–11771. https://doi.org/10.1073/pnas.0601182103 





Winkelmann G (2002) Microbial siderophore-mediated transport. Biochem Soc Trans 30:691–696 





Brickman TJ, Armstrong SK (2005) Bordetella AlcS transporter functions in alcaligin siderophore export and is central to inducer sensing in positive regulation of alcaligin system gene expression. J Bacteriol 187:3650–3661. https://doi.org/10.1128/JB.187.11.3650-3661.2005 





Delany I, Spohn G, Rappuoli R (2003) An anti-repression Fur operator upstream of the promoter is required for iron-mediated transcriptional autoregulation in Helicobacter pylori. Mol Microbiol 50:1329–1338. https://doi.org/10.1046/j.1365-2958.2003.03757.x 





Groisman EA, Ochman H (1996) Pathogenicity islands: bacterial evolution in quantum leaps. Cell 87:791–794. https://doi.org/10.1016/S0092-8674(00)81985-6 





Kalinowski BE, Johnsson A, Arlinger J et al (2006) Microbial mobilization of uranium from shale mine waste. Geomicrobiol J 23:157–164. https://doi.org/10.1080/01490450600599197 





Mey AR, Wyckoff EE, Kanukurthy V (2005) Iron and fur regulation in Vibrio cholerae and the role of fur in virulence. Infect Immun 73:8167–8178. https://doi.org/10.1128/IAI.73.12.8167-8178. 2005 





Podladchikova O, Rykova V, Antonenka U et al (2012) Yersiniapestis autoagglutination is mediated by HCP-like protein and siderophore Yersiniachelin (Ych). Adv Exp Med Biol 954: 289–292. https://doi.org/10.1007/978-1-4614-3561-7_36 





Sebulsky MT, Heinrichs DE (2001) Identification and characterization of fhuD1 and fhuD2, two genes involved in iron-hydroxamate uptake in Staphylococcus aureus. J Bacteriol 183:4994– 5000. https://doi.org/10.1128/JB.183.17.4994-5000.2001 





Yadav S, Kaushik R, Saxena AK (2011) Diversity and phylogeny of plant growth-promoting bacilli from moderately acidic soil. J Basic Microbiol 51:98–106. https://doi.org/10.1002/jobm. 201000098 





Brickman TJ, Armstrong SK (2009) Temporal signaling and differential expression of Bordetella iron transport systems: the role of ferrimones and positive regulators. Biometals 22:33–41. https://doi.org/10.1007/s10534-008-9189-9 





Dobrindt U, Hochhut B, Hentschel U (2004) Genomic islands in pathogenic and environmental microorganisms. Nat Rev Microbiol 2:414–424. https://doi.org/10.1038/nrmicro884 





Hacker J, Bender L, Ott M et al (1990) Deletions of chromosomal regions coding for fimbriae and hemolysins occur in vitro and in vivo in various extraintestinal Escherichia coli isolates. Microb Pathog 8:213–225. https://doi.org/10.1016/0882-4010(90)90048-U 





Karagoz K, Ates F, Karagoz H et al (2012) Characterization of plant growth-promoting traits of bacteria isolated from the rhizosphere of grapevine grown in alkaline and acidic soils. Eur J Soil Biol 50:144–150. https://doi.org/10.1016/j.ejsobi.2012.01.007 





Miethke M, Klotz O, Linne U (2006) Ferri-bacillibactin uptake and hydrolysis in Bacillus subtilis. Mol Microbiol 61:1413–1427. https://doi.org/10.1111/j.1365-2958.2006.05321.x 





Podladchikova ON, Rykova VA (2006) Isolation and characterization of autoagglutination factor of Yersinia pestis Hms- cells. Biochemistry (Mosc) 71:1192–1199. https://doi.org/10.1134/ S0006297906110046 





Sheftel AD, Mason AB, Ponka P (2012) The long history of iron in the Universe and in health and disease. Biochim Biophys Acta 1820:161–187. https://doi.org/10.1016/j.bbagen.2011.08.002 





Yilmaz B, Li H (2018) Gut microbiota and iron: the crucial actors in health and disease. Pharmaceuticals 11:98. https://doi.org/10.3390/ph11040098 





Brickman TJ, Cummings CA, Liew SY et al (2011) Transcriptional profiling of the iron starvation response in Bordetella pertussis provides new insights into siderophore utilization and virulence gene expression. J Bacteriol 193:4798–4812. https://doi.org/10.1128/JB.05136-11 





Duchesne P, Grenier D, Mayrand D (1999) Binding and utilization of human transferrin by Prevotella nigrescens. Infect Immun 67:576–580. https://doi.org/10.1128/IAI.67.2.576-580. 1999 





Hacker J, Blum-Oehler G, Mühldorfer I et al (1997) Pathogenicity island of virulent bacteria: structure, function and impact on microbial evolution. Mol Microbiol 23:1089–1097. https:// doi.org/10.1046/j.1365-2958.1997.3101672.x 





Karch H, Schubert S, Zhang D (1999) A genomic island, termed high-pathogenicity island, is present in certain non-O157 Shiga toxin-producing Escherichia coli clonal lineages. Infect Immun 67:5094–6001. https://doi.org/10.1128/IAI.67.11.5994-6001.1999 





Miller MC, Fetherston JD, Pickett CL et al (2010) Reduced synthesis of the Ybt siderophore or production of aberrant YBT-like molecules activates transcription of yersiniabactin genes in Yersinia pestis. Microbiology 156:2226–2238. https://doi.org/10.1099/mic.0.037945-0 





Potrykus J, Jonna VR, Dopson M (2011) Iron homeostasis and responses to iron limitation in extreme acidophiles from the Ferroplasma genus. Proteomics 11:52–63. https://doi.org/10. 1002/pmic.201000193 





Snyder JA, Haugen BJ, Buckles EL et al (2004) Transcriptome of uropathogenic Escherichia coli during urinary tract infection. Infect Immun 72:6373–6381. https://doi.org/10.1128/IAI.72.11. 6373-6381.2004 





Zawadzka A, Aberge R, Nichiporuk R (2009) Siderophore-mediated iron acquisition systems in Bacillus cereus: identification f receptors for anthrax virulence-associated petrobactin. Biochemistry 48:3645–3657. https://doi.org/10.1021/bi8018674 





Brickman TJ, Hanawa T, Anderson MT et al (2008) Differential expression of Bordetella pertussis iron transport system genes during infection. Mol Microbiol 70:314. https://doi.org/10.1111/j. 1365-2958.2008.06333.x 





Earhart CF (2009) Iron metabolism. In: Schaechter M (ed) Encyclopedia of microbiology, 3rd edn. Academic Press, Oxford, pp 210–218 





Hacker J, Carniel E (2001) Ecology, fitness, genomic islands and bacterial pathogenicity. A Darwinian view of the evolution of microbes. EMBO Rep 2:376–381. https://doi.org/10. 1093/embo-reports/kve097 





Kehres DG, Janakiraman A, Slauch JM et al (2002) SitABCD is the alkaline Mn(2+) transporter of Salmonella enterica serovar Typhimurium. J Bacteriol 184:3159–3166. https://doi.org/10.1128/ jb.184.12.3159-3166.2002 





Moelling C, Oberschlacke R, Ward P et al (2007) Metal-dependent repression of siderophore and biofilm formation in Actinomyces naeslundii. FEMS Microbiol Lett 275:214–220. https://doi. org/10.1111/j.1574-6968.2007.00888.x 





Quatrini R, Jedlicki E, Holmes DS (2005) Genomic insights into the iron uptake mechanisms of the biomining microorganism Acidithiobacillus ferrooxidans. J Ind Microbiol Biotechnol 1(11–12): 606–614. https://doi.org/10.1007/s10295-005-0233-2 





Sullivan JT, Trzebiatowski JR, Cruickshank RW et al (2002) Comparative sequence analysis of the symbiosis island of Mesorhizobium loti strain R7A. J Bacteriol 184:3086–3095. https://doi.org/ 10.1128/JB.184.11.3086-3095.2002 





Zhang XH, Austin B, Symeonidis A, Marangos M (2012) Iron and microbial growth. In: Priti R (ed) Insight and control of infectious disease in global scenario. IntechOpen, London, pp 289–330 





Brown JS, Holden DW (2004) Iron acquisition by gram-positive bacterial pathogens. Microbes Infect 4:1149–1156. https://doi.org/10.1016/S1286-4579(02)01640-4 





Evans SL, Arceneaux JE, Byers BR, Martin ME, Aranha H (1986) Ferrous iron transport in Streptococcus mutans. J Bacteriol 168:1096–1099. https://doi.org/10.1128/jb.168.3. 1096-1099.1986 





Hacker J, Kaper JB (2000) Pathogenicity islands and the evolution of microbes. Annu Rev Microbiol 54:641–679 





Koczura R, Kaznowski A (2003) Occurrence of the Yersinia high-pathogenicity island and iron uptake systems in clinical isolates of Klebsiella pneumoniae. Microb Pathog 35:197–202. https://doi.org/10.1016/s0882-4010(03)00125-6 





Montero DA, Velasco J, Fetal DC (2017) Locus of adhesion and autoaggregation (LAA), a pathogenicity island present in emerging Shiga Toxin-producing Escherichia coli strains. Sci Rep 7:7011. https://doi.org/10.1038/s41598-017-06999-y 





Rakin A, Saken E, Harmsen D et al (1994) The pesticin receptor of Yersinia enterocolitica: a novel virulence factor with dual function. Mol Microbiol 13:253–263. https://doi.org/10.1111/j. 1365-2958.1994.tb00420.x 





Symeonidis A, Marangos M (2012) Iron and microbial growth. In: Priti R (ed) Insight and control of infectious disease in global scenario. IntechOpen, London, pp 289–330 





Zhou D, Qin L, Han Y et al (2006) Global analysis of iron assimilation and fur regulation in Yersinia pestis. FEMS Microbiol Lett 258:917. https://doi.org/10.1111/j.1574-6968.2006. 00208.x 





Buchrieser C, Prentice M, Carniel E (1998) The 102-kilobase unstable region of Yersinia pestis comprises a high pathogenicity island linked to a pigmentation segment which undergoes internal rearrangement. J Bacteriol 180:2321–2329. https://doi.org/10.1128/JB.180.9. 2321-2329.1998 





Fetherston JD, Bertolino VJ, Perry RD (1999) YbtP and YbtQ: two ABC transporters required for iron uptake in Yersinia pestis. Mol Microbiol 32:289–229. https://doi.org/10.1046/j.1365-2958. 1999.01348.x 





Hagan EC, Mobley HL (2009) Haem acquisition is facilitated by a novel receptor Hma and required by uropathogenic Escherichia coli for kidney infection. Mol Microbiol 71:79–91. https://doi. org/10.1111/j.1365-2958.2008.06509.x 





Koppisch AT, Browder CC, Moe AL (2005) Petrobactin is a primary siderophore synthesized by Bacillus anthracis str. Sterne under conditions of iron starvation. Biometals 18:577–585. https:// doi.org/10.1007/s10534-005-1782-6 





Moore CM, Helmann JD (2005) Metal homeostasis in Bacillus subtilis. Curr Opin Microbiol 8: 188–195. https://doi.org/10.1016/j.mib.2005.02.007 





Rakin A, Schneider L, Podladchikova O (2012) Hunger for iron: the alternative siderophore iron scavenging systems in highly virulent Yersinia. Front Cell Infect Microbiol 2:151. https://doi. org/10.3389/fcimb.2012.00151 





Utley JR (1990) Pathophysiology of cardiopulmonary bypass: current issues. J Card Surg 5:177– 189. https://doi.org/10.1111/j.1540-8191.1990.tb01036.x 





Burrus V, Pavlovic G, Decaris B (2002) Conjugative transposons: the tip of the iceberg. Mol Microbiol 46:601–610. https://doi.org/10.1046/j.1365-2958.2002.03191.x 





Finlay BB, Falkow S (1997) Common themes in microbial pathogenicity revisited. Microbiol Mol Biol Rev 61(2):136–169. https://doi.org/10.1128/mmbr.61.2.136-169.1997 





Hamilton HL, Dominguez NM, Schwartz KJ, Hackett KT, Dillard JP (2005) Neisseria gonorrhoeae secretes chromosomal DNA via a novel type IV secretion system. Mol Microbiol 55:1704– 1721. https://doi.org/10.1111/j.1365-2958.2005.04521.x 





Koppisch AT, Dhungana S, Hill KK (2008) Petrobactin is produced by both pathogenic and non-pathogenic isolates of the Bacillus cereus group of bacteria. Biometals 21:581–589. https://doi.org/10.1007/s10534-008-9144-9 





Moss JE, Cardozo TJ, Zychlinsky A (1999) The selC-associated SHI-2 pathogenicity island of Shigella flexneri. Mol Microbiol 33:74–83. https://doi.org/10.1046/j.1365-2958.1999.01449.x 





Rakin A, Schubert S, Pelludat C (1999) The high-pathogenicity island of yersiniae. In: Kaper JB, Hacker J (eds) Pathogenicity Islands and other mobile virulence elements. ASM Press, Washington, DC, pp 77–90. https://doi.org/10.1128/9781555818173.ch5 





Vadyvaloo R et al (2007) island. Microbes Infect 3:561–569. https://doi.org/10.1016/s1286-4579 (01)01412-5 





Butler JE, He Q, Nevin K (2007) Genomic and microarray analysis of aromatics degradation in Geobactermetallireducens and comparison to a Geobacter isolate from a contaminated field site. BMC Genomics 8. https://doi.org/10.1186/1471-2164-8-180 





Fischbach MA, Lin H, Zhou L et al (2006) The pathogen-associated iroA gene cluster mediates bacterial evasion of lipocalin 2. Proc Natl Acad Sci U S A 103:16502–16507. https://doi.org/10. 1073/pnas.0604636103 





Han Y, Qiu J, Guo Z et al (2007) Comparative transcriptomics in Yersinia pestis: a global view of environmental modulation of gene expression. BMC Microbiol 7:96. https://doi.org/10.1186/ 1471-2180-7-96 





Kramer J, Özkaya Ö, Kümmerli R (2020) Bacterial siderophores in community and host interactions. Nat Rev Microbiol 18:152–163. https://doi.org/10.1038/s41579-019-0284-4 





Motin VL, Georgescu AM, Fitch JP et al (2004) Temporal global changes in gene expression during temperature transition in Yersinia pestis. J Bacteriol 186:6298–6305 





Ratledge C, Dover LG (2000) Iron metabolism in pathogenic bacteria. Annu Rev Microbiol 54: 881–941 





Vadyvaloo V, Jarrett C, Sturdevant DE (2010) Transit through the flea vector induces a pretransmission innate immunity resistance phenotype in Yersinia pestis. PLoS Pathog 6: e1000783. https://doi.org/10.1371/journal.ppat.1000783 





Byers BR, Arceneaux JEL (1998) Microbial iron transport: iron acquisition by pathogenic microorganisms. In: Sigel A, Sigel H (eds) Metal ions in biological systems, vol 35. Marcel Dekker, New York, pp 37–66 





Fisher CR, Davies NMLL, Wyckoff EE et al (2009) Genetics and virulence association of the Shigella flexneri sit iron transport system. Infect Immun 77:1992–1999. https://doi.org/10.1128/ IAI.00064-09 





Han Y, Zhou D, Pang X et al (2004) Microarray analysis of temperature-induced transcriptome of Yersinia pestis. Microbiol Immunol 48:791–805. https://doi.org/10.1111/j.1348-0421.2004. tb03605.x 





Larbig KD, Christmann A, Johann A et al (2002) Gene islands integrated into tRNA(Gly) genes confer genome diversity on a Pseudomonas aeruginosa clone. J Bacteriol 184:6665–6680. https://doi.org/10.1128/JB.184.23.6665-6680.2002 





Nairz M, Schroll A, Sonnweber T et al (2010) The struggle for iron—a metal at the host-pathogen interface. Cell Microbiol 12:1691–1702. https://doi.org/10.1111/j.1462-5822.2010.01529.x 





Verma R, Naosekpam AS, Kumar S et al (2007) Influence of soil reaction on diversity and antifungal activity of fluorescent pseudomonads in crop rhizospheres. Bioresour Technol 98: 1346–1352. https://doi.org/10.1016/j.biortech.2006.05.030 





Forman S, Paulley JT, Fetherston JD et al (2010) Yersinia ironomics: comparison of iron transporters among Yersinia pestis biotypes and its nearest neighbor, Yersinia pseudotuberculosis. Biometals 2:275–294. https://doi.org/10.1007/s10534-009-9286-4 





Harvie DR, Ellar DJ (2005) A ferric dicitrate uptake system is required for the full virulence of Bacillus cereus. Curr Microbiol 50:246–250. https://doi.org/10.1007/s00284-004-4442-0 





Ollinger J, Song KB, Antelmann H, Hecker M, Helmann JD (2006) Role of the Fur regulon in iron transport in Bacillus subtilis. J Bacteriol 188:3664–3673. https://doi.org/10.1128/JB.188.10. 3664-3673.2006 





Vernikos GS, Parkhill J (2008) Resolving the structural features of genomic islands: a machine learning approach. Genome Res 18:331–342. https://doi.org/10.1101/gr.7004508 



# Genomic Islands in Uropathogenic Escherichia coli

9 

Shriparna Mukherjee and Ranadhir Chakraborty 

## Abstract

Discrete DNA segments known as genomic islands are responsible for establishing horizontally transmitted genes in a population. This region might be excised, integrated into the host’s chromosome, or transferred en route to different bacteria via all three modes of gene transfer. Genomic islands may aid in adaptability, can code for a variety of roles, and may be involved in disease or symbiosis. A genomic island can be identified by certain sequence features, including direct repeats, insertion sequence elements, tRNA genes, and mobility genes (including transposases and integrases). More than one virulence genes, like that coding for adhesins, toxins, or invasins, are carried by pathogenicity islands. They might be contained in a plasmid or found on a bacterial chromosome. Large genomic islands can be found in Escherichia coli strains that are uropathogenic (UPECs). UPECs are the root cause of at least 80% of all urinary system infections that the general population contracts. There is an expanding list of virulence factors found in UPECs. Several virulence genes are linked among UPEC isolates. Virulence factor-encoding genes are linked and localized to a region in the UPECs’ genome that resembles a pathogenicity island. The chapter provided a thorough analysis of the genomic islands’ potential use in UPECs. 

Shriparna Mukherjee and Ranadhir Chakraborty contributed equally to this work 

S. Mukherjee 

Department of Botany, Prasannadeb Women’s College, Jalpaiguri, India 

R. Chakraborty (✉) 

OMICS Laboratory, Department of Biotechnology, University of North Bengal, Siliguri, India 

# The Author(s), under exclusive license to Springer Nature Singapore Pte Ltd. 2023 

I. Mani et al. (eds.), Microbial Genomic Islands in Adaptation and Pathogenicity, https://doi.org/10.1007/978-981-19-9342-8_9 

## Keywords

Urinary tract infection · Pathogenicity Island · Uropathogenic Escherichia coli · Virulence factors · Omics technology · Mobile DNA element · tRNA-encoding gene 

## 9.1 General Introduction

Escherichia coli is an “aero-anaerobic” Gram-negative bacillus. E. coli’s evolutionary substructure is significantly influenced by phylogenetic groups, A, B1, B2, C, D, E, F, and G. Each of these phylogroups is associated with the diverse strains’ way of life (Milkman 1973; Selander et al. 1987; Escobar-Páramo et al. 2004; Clermont et al. 2019). E. coli’s major habitat is the intestines of vertebrates, where it interacts symbiotically with the host. However, if these commensal strains pick up virulence factors, they can become lethal, resulting in life-threatening illnesses (Kaper et al. 2004; Le Gall et al. 2007; Tenaillon et al. 2010). One of the following three groups can be used to categorize E. coli: 

Group I: Commensal (nonpathogenic) E. coli. They have a symbiotic relationship with the host and do not cause disease. 

Group II: Intestinal pathogenic E. coli (InPEC) They bring on colitis or gastroenteritis [often called diarrhea-causing (=diarrheagenic) Escherichia coli (DEC)]. DECs are distributed into six distinctly characterized pathotypes. These are enteropathogenic (EHEC), enterohemorrhagic (EHEC), enterotoxigenic (ETEC), enteroaggregative (EAEC), enteroinvasive (EIEC), and diffusely adherent (DAEC) E. coli. 

Group III: Extraintestinal pathogenic E. coli (ExPEC). 

In order to include E. coli strains causing illness in organs external to the intestinal system, the acronym ExPEC was proposed in the year 2000. ExPEC isolates are facultative pathogens that can harmlessly colonize human gastrointestinal region, but they can also spread to organs of different systems like bloodvascular, urinary, and central nervous systems inducing pathogenesis (Wiles et al. 2008; Kohler and Dobrindt 2011). ExPECs are differentiated from those exhibiting commensalism or InPECs with the aid of genotyping techniques or by using advanced phylogenetic tools including multilocus sequence typing (MLST) or Kmer analysis of whole genome sequences. Genetically, ExPECs are distinguished via a wide variety of virulence genes concerned with high-affinity iron acquisition system, invasion strategies, and evasion of host immune defense system. ExPEC strains must possess at least two of the virulence genes papA and/or papc, sfa/foc, afa/draBC, kpsM II, and/or iutA (Sarowska et al. 2019). ExPEC strains were formerly divided into four pathotypes based on the place of isolation [urinary tract (UPEC) or tissues covering the brain and spinal cord of the newborn (NMEC) or birds (APEC)] and disease associations (sepsis: SEPEC) (Ewers et al. 2007). Since E. coli strains from several pathotypes were found to spread disease in non-specific locations, it is currently thought that the classification, as stated above, is no longer accurate (Dale and Woodford 2015) plus these strains have common genealogical characteristics (Jorgensen et al. 2019). 

## 9.2 Genomic Islands in E. coli

According to E. coli phylogeny based on whole genome sequences, commensal E. coli strains were originally virulence free. The current shape of the E. coli genome has really been altered through horizontal gene transfer comprising transformation, transduction, and conjugation events. Although the genomes of E. coli and Salmonella enterica display 70% identity, they have separated due to the acquisition of large DNA pieces known as genomic islands (GEIs). According to bioinformatic investigations, GEIs typically contain more new genes than the rest of the genome, or genes that have no orthologs in other species (Hsiao et al. 2005). Symbiosis, metabolism of sucrose and aromatic compounds, resistance to mercury, siderophore production, and pathogenicity functions are all included in the coding capacity of GEIs. Pathogenicity islands, symbiosis islands, metabolic islands, fitness islands, and resistance islands are all terms that can be used to describe GEIs indicating that genomic islands have been actively chosen for auxiliary and adaptable roles. 

The chromosomal DNAs of the E. coli strains incapable of causing disease that are similar or somewhat interrelated sometimes lack single or bunch of virulence genes. Those missing virulence genes are encoded by a set of large (>10 kb) integrative elements known as pathogenicity islands. PAIs are unable to selfreplicate and also, they cannot mobilize themselves. In this respect they do differ from those of other extrachromosomal conjugative mobile genetic element or integrative and conjugative elements (ICEs). Pathogenicity islands usually carry portions of mobile genetic elements like bacteriophages, plasmids, and insertion sequence (IS) elements. They are flanked by repetitive structures and frequently coupled with either the genes that encode tRNA or att sites specific for temperate bacteriophages. PAIs have unique genomic traits, which is compelling proof of their horizontal acquisition and foreign origin. When compared to the host organisms it is found that frequency of occurrence of dinucleotides, codon usage pattern, also the G + C contents of PAIs differ markedly from that of host organism. With time, composition of the sequence or the codon usage pattern of PAI can improve, becoming more comparable to that of the core region. Therefore, the difference in GC content could represent a new acquirement or the result of evolution. 

Virulence factors (≥1), found missing in the chromosomes of nonpathogenic strains, similar or allied, are encoded by pathogenic islands, a large (>10 kb) set of integrative factors. Pathogenicity islands are not self-replicating or self-mobilizable, contrary to other extrachromosomal DNA elements and ICEs. They frequently contain fragments of other mobile DNA elements, such as plasmids, bacteriophages, and insertion sequence (IS) elements. PAIs commonly link with genes coding for tRNA or temperate bacteriophage-specific att sites, and are flanked by repetitive structures. Comparing the DNA sequences of PAIs with the rest of the chromosomal DNA, revealing pathogenicity islands’ uniqueness in genomes, stands as solid proof in favor of lateral gene transfer. When compared to the host organisms, PAIs frequently have different $\mathrm { ~ G ~ } + \mathrm { ~ C ~ }$ contents, dinucleotide frequencies or Kmers, and codon usage patterns. The nucleotide sequence or codon usage pattern of the PAI region can improve through time, becoming more comparable to that of the core region. Divergence in GC content could thus be the result of evolution or the possession of new genes. 

## 9.3 Characteristics of Pathogenic Genomic Islands in E. Coli

Hacker and Kaper (2000) discovered GEIs in UPEC that had genes related with virulence, and they were given the name pathogenicity islands (PAIs). Studies employing UPEC strain 536 [O6:K15:H31] provided the first insight into the occurrence of PAIs in bacterial pathogens. The pathogenesis of ExPEC and evolutionary development of bacterial pathogens were studied using one of the ExPEC E. coli model strains. Five distinct PAI characteristics were discovered after examining nucleotide sequences of $\mathrm { P A I } \ \mathrm { I } _ { 5 3 6 }$ to $\mathrm { P A I \ I I I } _ { 5 3 6 }$ including left and right flanks (spanning approximately a 270-kb DNA region) of a uropathogenic E. coli strain 536 (O6:K15:H31). They were: (i) a connection with genes coding for tRNAs; (ii) a difference in $\mathrm { ~ G ~ } { + } \mathrm { ~ C ~ }$ content (compared to the $\mathrm { ~ G ~ } { + \mathrm { ~ C ~ } }$ content of the major genomic regions); (iii) the presence of repetitive DNA sequences on either flanks of a PAI; (iv) the presence of abundant coding sequences of genes, with identified or unidentified properties, forming a mishmash structure; and (v) occurrence of several sections of itinerant DNA sequences. The PAIs $( \mathrm { P A I } \mathrm { I } _ { 5 3 6 }$ to $\mathrm { P A I } \mathrm { I I I } _ { 5 3 6 } )$ had molecular sizes ranging from 68 to 102 kb, indicating the presence of ORFs coding for unknown proteins as well as multiple ORFs coding for virulence factors homologous to putative virulence proteins explained in the case of PAIs from other extraintestinal pathogenic E. coli (ExPEC) isolates. Genes encoding a siderophore system, found in PAI $\mathrm { I V } _ { 5 3 6 } ,$ and first discovered in pathogenic Yersinia, form the foundation of a high-pathogenicity island. Generally speaking, PAI $\mathrm { I } _ { 5 3 6 }$ to $\mathrm { P A I } \mathrm { I I I } _ { 5 3 6 }$ are mishmash structures made up of several DNA pieces that have the most nucleotide resemblance to genomic sections of newly discovered EPECs, including those of Shigella flexneri and the O157:H7 strains EDL933 and Sakai (she and SHI-2 PAIs). The different plasmids belonging to three members of the order Enterobacterales (pColV, pB171, pO157, and pAPEC-1 of E. coli; pWR100 and pWR501 of Shigella spp.; and pMT1 and pYVe227 of Yersinia spp.) have virulence genes highly identical to many segments of PAI $\mathrm { I } _ { 5 3 6 }$ to PAI $\mathrm { I I I } _ { 5 3 6 }$ . Other fragments are yet-to-be-identified DNA sequences that lack DNA-level similarity. These various areas are interleaved with each other and contain putative ORFs that have not yet been found but may have unknown roles, as well as functional and nonfunctional or truncated ORFs that are previously known. MGEs (mobile genetic elements) including bacteriophages, plasmids, and IS elements make up a sizable portion of the ORFs found on these PAIs. It is interesting to note that PAI $\mathrm { I V } _ { 5 3 6 } ,$ a broad-host-range PAI found in numerous enterobacteria, only has functional ORFs. 

## 9.3.1 Molecular Characteristics of PAI $\mathbf { I } _ { 5 3 6 }$

The tRNA-encoding gene selC and PAI $\mathrm { I } _ { 5 3 6 }$ are genetically connected. The island $\mathrm { P A I I } _ { 5 3 6 }$ is 76,843 bp in length, with 16 bp straight repetitions on either side of it, and has 46% $\mathrm { ~ G ~ } { + \mathrm { ~ C ~ } }$ composition. The inactive integrase gene of bacterial virus origin $( \mathrm { O R F l } _ { \mathrm { I } - 5 3 6 } )$ located immediately after selC, found homologous to several intP4-like genes identified for pathogenicity islands and to the phage φR73 gene positioned at gene coding for tRNA. In addition to previously documented virulence-linked genes discovered on PAI $\mathrm { I } _ { 5 3 6 }$ , for example, the genes coding for alpha-hemolysin, and identifying functional elements along the sequence of PAI $\mathrm { I } _ { 5 3 6 }$ disclosed only a pair of unnamed potential adhesin genes without any sequence homology. Accordingly, translated protein sequences as well as their genetic organization, the putative ORF $1 5 _ { \mathrm { I } - 5 3 6 }$ to ORF $1 8 _ { \mathrm { I } - 5 3 6 }$ and ORF $3 7 _ { \mathrm { I } \mathrm { - } 5 3 6 }$ to ORF $4 2 _ { \mathrm { I } - 5 3 6 }$ correspond to genes encoding F17- and CS12-like adhesins. However, ORF $1 8 _ { \mathrm { I } - 5 3 6 }$ translated peptide exhibits homology to the F17a fimbrial subunit as well as the $P .$ mirabilis fimbrial protein, UcaA, to aid in adhesion to epithelial cells bridging the urinary space and underlying tissue, raising the possibility that fimbriae holding this subunit is conceivably connected to UTIs. 

Putative ORF $4 7 _ { \mathrm { I } - 5 3 6 }$ encoding adhesin-like protein go before two presumptive ATP-binding cassette transporter-coding ORFs (ORF $4 5 _ { \mathrm { I } - 5 3 6 }$ and ORF $4 6 _ { \mathrm { I } - 5 3 6 } )$ . Although the amino acid sequences of these ORFs are comparable to those of three neighboring genes (NMB0586, NMB0587, and NMB0588) in the Neisseria meningitidis strain MC58, they do not share any DNA homology. Putative ORFs $2 _ { \mathrm { I } }$ - $5 3 6$ and $3 _ { \mathrm { I } - 5 3 6 }$ are intriguing ORFs that have not yet been described. These related ORFs (whose sizes are alike) share 43 and 39 percent identity in their translated peptide sequences with N. gonorrhoeae’s 374 amino acid long modification methylase, NgoFVII. However, the first 89 nucleotides of each ORFs’ DNA exhibit just 78 percent identity, ruling out the likelihood of gene duplication. 

## 9.3.2 Molecular Characteristics of PAI $1 1 _ { 5 3 6 }$

A 102-Kb long PAI $\mathrm { I I } _ { 5 3 6 }$ is linked with the presence of tRNA gene leuX. PAI $\mathrm { I I } _ { 5 3 6 } ,$ , with direct 18 base pair direct repeats on its either side, has $\mathrm { ~ G ~ } + \mathrm { ~ C ~ }$ content of 46 percent. The ORF $1 _ { \mathrm { I I } - 5 3 6 }$ (located just after leuX) encodes an active bacteriophage P4 integrase protein. ORFs encoding P-associated fimbrial adhesins (ORF $6 _ { \mathrm { I I } - 5 3 6 }$ to ORF $1 7 _ { \mathrm { I I } - 5 3 6 } )$ and a bunch of genes coding for α-hemolysin have been identified as virulence factors located on PAI $\mathrm { I I } _ { 5 3 6 }$ . Other likely virulence-linked genetic sequences found on this genomic island include ORF which encodes E. coli Hek adhesin (ac. no. AY040859), and two presumed coding sequence of genes (ORF 

$4 0 _ { \mathrm { I I } - 5 3 6 }$ and ORF $4 1 _ { \mathrm { I I } - 5 3 6 } )$ that lack DNA sequence homology. The protein coded by ORF $4 0 _ { \mathrm { I I } - 5 3 6 }$ shares similarities with filamentous protein (FHA) that provides a principal attachment factor for adherence (filamentous hemagglutinin-like adhesions) made by Yersinia pestis, Pseudomonas aeruginosa, and Bordetella pertussis. The ORF located immediately before the gene that codes for hemagglutinin and is required for adhesin secretion is homologous to ORF $4 1 _ { \mathrm { I I } - 5 3 6 }$ . Another unnamed ORF is ORF $3 5 _ { \mathrm { I I } - 5 3 6 }$ , the putative protein of which displays homology to a portion of the Herpetosiphon aurantiacus’s modification methylase, HgiDII (EMBL accession no. P25265). An additional DNA section of 4 kb that is missing from E. coli K-12 strain MG1655 immediately follows the right-hand direct repeat structure instead of the unchanged sequence reads in the genome unique to $E .$ coli K-12. There is just one supposed ORF encoding unknown function protein in this genomic area of E. coli O157:H7 strain Z5892. The typical E. coli K-12 chromosomal sequence, which starts with the ORF coding for the YjhS protein, is preceded by the aforementioned 4 kb DNA section. 

## 9.3.3 Molecular Characteristics of PAI $1 1 1 _ { 5 3 6 }$

The gene thrW, which codes for tRNA, is related to $\mathrm { P A I I I I } _ { 5 3 6 } .$ . The GC composition and length of PAI $\mathrm { I I I } _ { 5 3 6 }$ is 47% and 68,124 bp, respectively. The active integrase gene (ORF $1 _ { \mathrm { I I I } - 5 3 6 } )$ located just after thrW bears the most resemblance to SfX phage’s int gene (which identifies thrW during insertion into the chromosome). 47 bp direct repeats surround this PAI on either side. There is evidence that the Tsh hemoglobin protease, present in some disease-causing E. coli strains in birds, contributes to the pathogenicity of some bacteria (Dozois et al. 2000). DNA sequences with similarity to int gene segments, present in various bacteriophages infecting S. flexneri and E. coli, follow segments of homologous Iso IS1’s DNA sequences coding for insB and insA at intersection point of PAI (Dobrindt et al. 2002). These findings show that the DNA sequence between two genes, thrW and yagU, is composed of horizontally acquired sequences, including PAI $\mathrm { I I I } _ { 5 3 6 } .$ , and could be thought of as being flanked by $a t t \mathrm { P }$ sites of Shigella bacteriophage sequences responsible for integration after thrW. Shorter tRNA-encoding genes have also been discovered for PAI II from pathogenic E. coli CFT073 (Rasko et al. 2001), highlighting the significance of these epicenter where alien DNA could integrate into the chromosome. It is believed that lateral gene transfer is how these DNA regions were obtained. 

There are more known genes encoding for E. coli virulence factors in the PAI $\mathrm { I I I } _ { 5 3 6 }$ area, according to a sequence study of the complete region. Other virulence factors’ expressing genes, ORF $1 7 _ { \mathrm { I I I } - 5 3 6 }$ to ORF $2 5 _ { \mathrm { I I I } - 5 3 6 } .$ , and ORF $2 7 _ { \mathrm { I I I } - 5 3 6 }$ to ORF $3 1 _ { \mathrm { I I I } - 5 3 6 } .$ borne on $\mathrm { P A I I I I } _ { 5 3 6 } ,$ were the homologous genes encoding adhesin $( s f a )$ and siderophore (iro) in S. flexineri. Moreover, S. flexneri 2a’s she PAI (EMBL accession no. AF200692) contains the homolog of sap, the autotransporter-adhesin coding ORF $5 2 _ { \mathrm { I I I } - 5 3 6 }$ . The $\mathrm { O R F } 3 6 _ { \mathrm { I I I } - 5 3 6 }$ putatively encodes a heme-binding receptor protein similar to Y. pestis’s HmuR. Smaller portions of the putative proteins lysine decarboxylase and cadaverine antiporter, which were translated from ORFs $4 7 _ { \mathrm { I I I } - 5 3 6 }$ and $4 8 _ { \mathrm { I I I } - 5 3 6 } ,$ respectively, show sequence homology with related genes cadA and cadB from $E .$ coli or Salmonella enterica serovar Typhimurium, suggesting the possibility of multiple nucleotide sequence rearrangements or lateral gene relocation. It is interesting to note that PAI II of CFT073 also has ORFs with significant similarity to these genes (Rasko et al. 2001). 

## 9.3.4 Molecular Characteristics of PAI $N _ { 5 3 6 }$

The pathogenic island, PAI $\mathrm { I V } _ { 5 3 6 . }$ , is connected to gene coding for asparagine tRNA, asnT. The central part of the supposed Yersinia sp.’s high-pathogenicity island is present on this island. For numerous Yersinia strains, it has been fully sequenced (Dobrindt et al. 2002). The $5 ^ { \prime }$ end of PAI $\mathrm { I V } _ { 5 3 6 }$ consists of a 1-kb sequence region that has on its flanks the genes, $f y u \mathrm { A }$ and $\Delta b 1 9 7 8$ . PAI $\mathrm { I V } _ { 5 3 6 }$ has a $\mathrm { G } + \mathrm { C }$ composition of 57% and a size of roughly 30.2 kb. The gene cluster necessary for the desired product of the siderophore system yersiniabactin is found in PAI $\mathrm { I V } _ { 5 3 6 }$ , which lacks flanking repeat structures. 

## 9.3.5 Comparative Account of PAIs in E. Coli Including Uropathogenic E. Coli

A comparative account of pathogenic islands derived from E. coli strain 536 is presented in Table 9.1, while Table 9.2 provides an account of virulence factors used by UPEC strains. 

The uropathogenic isolates J96 and CFT073 each have two PAIs identified (Guyer et al. 1998; Rasko et al. 2001; Swenson et al. 1996). Even though some of these islands resemble one another because they carry the same genes, they are noticeably diverse in terms of length in Kb, composition of genes and their location, point of integration in the host chromosome, and permanence. The J96 PAIs’ chromosomal positions and connections differ from those of the $E .$ coli 536 PAIs. When nucleotide sequence databases were searched for similar sequences against query sequences pertaining to J96 PAI, it yielded significant similarity percentages with several virulence genes, including genes encoding toxins and adhesins. Nucleotide sequences of self-transmissible plasmid, R1, Enterobacteria phage P4, and insertion DNA sequences corresponding to IS100, IS630, and IS911 were also identified. 

<table><tr><td>Pathogenic Island</td><td>Pathogenicity island characteristic tRNA coding gene</td><td>Molecular Size (kb)</td><td>GC composition (%)</td><td>Recognized or assumed virulence factors</td><td>Gene responsible for integration</td><td>Length of the direct Repetitive DNA sequence (mers)</td><td>Transposable DNA elements and its constituent genes</td></tr><tr><td><eq>I_{536}</eq></td><td>Selenocysteine-inserting tRNA gene (selC)</td><td>~77 Kb</td><td>46</td><td>α-Hemolysin, fimbrial proteins, and transporters</td><td>Integrase similar to that present in Enterobacteria phage P4</td><td>16</td><td>Insertion DNA elements: IS1-4, IS10, IS50R, IS100, IS629-630, IS679, IS911, IS1328, and IS1353; some ORFs of Stx-encoding phage CP-933 integrated in the genome of E. coli O157: H7strain EDL933; and an intron associated reverse transcriptase/ maturase.</td></tr><tr><td><eq>II_{536}</eq></td><td>Leucine-inserting tRNA gene (leuX)</td><td>~102 Kb</td><td>46</td><td>α-Hemolysin, adhesin similar to hemagglutinin and Hek, and fimbrial proteins</td><td>Integrase identical to that coded by P4 bacteriophage</td><td>18</td><td>Insertion DNA elements: IS1-4, IS10, IS50R, IS100, IS629-630, IS679, IS911, IS1328, and IS1353; some ORFs of Stx-encoding phage CP-933 integrated in the genome of E. coli O157: H7strain EDL933; and multidrug resistance protein, QacE.</td></tr><tr><td><eq>III_{536}</eq></td><td></td><td>~68 Kb</td><td>47</td><td>Adhesin of S fimbriae, sfa gene product; adhesin of</td><td>Integrase identical to that</td><td>47</td><td>Insertion DNA elements: IS1-4, IS10, IS50R,</td></tr></table>

<table><tr><td></td><td>Threonine-inserting tRNA gene (thrW)</td><td></td><td></td><td>autotransporter, sap gene product; heme receptor, HmuR; protease active on hemoglobin, similar to Tsh; proteins related to siderophore production,iro gene product; proteins homologous to CadA and CadB</td><td>coded byShigella phageSfX</td><td></td><td>IS100, IS629–630, IS679, IS911, IS1328, and IS1353; and some ORFs of Stx-encoding phage CP-933 integrated in the genome ofE. coliO157:H7strain EDL933.</td></tr><tr><td>IV<eq>_{536}</eq></td><td>One of the four asparagine-inserting tRNA genes,asnT</td><td>~30 Kb</td><td>57</td><td>Proteins related to siderophore production, Yersiniabactin</td><td>Integrase similar to that present in Enterobacteria phage P4</td><td>Absent</td><td>Absent.</td></tr></table>


Table 9.2 Virulence factors used by UPEC strains


<table><tr><td colspan="3">Adhesin</td></tr><tr><td>Types</td><td>Designation</td><td>Function of the gene product and associated role in infections</td></tr><tr><td>Type 1 fimbriae</td><td>fimH</td><td>To induce colony formation and subsequently produce biofilm.</td></tr><tr><td>Curli fimbriae</td><td>csgAB</td><td>To cause bacterial aggregation, create biofilms, interact with host proteins, immune system activation, and induce host cell invasion and attachment.</td></tr><tr><td>P fimbriae</td><td>papGII,papGIII</td><td>To upregulate inflammatory reactions.</td></tr><tr><td>S fimbriae</td><td>staS</td><td>To enable adherence to cells lining the walls of intestine and urinary tract promoting access within the tissues.</td></tr><tr><td>F1C fimbriae</td><td>focG</td><td>To promote adhering to epithelial and endothelial cell populations of kidney and urinary bladder.</td></tr><tr><td>Auf fimbriae</td><td>auf</td><td>To code for Auf fimbriae.</td></tr><tr><td>RTX protein TosA</td><td>tosA</td><td>To cause host cell adhesion, and enhance survival in disseminated infections.</td></tr><tr><td>Dr fimbriae</td><td>dra</td><td>To enable receptor binding of the epithelial cells, and also supports invasion of the host cells.</td></tr><tr><td>Afimbrial adhesin</td><td>afa</td><td>To enable binding of receptor to epithelium and enhance ability to hemagglutinate.</td></tr><tr><td>IrgA homolog adhesin</td><td>iha</td><td>To code for homologous adhesin which is genetically regulated by iron.</td></tr><tr><td colspan="3">Invasin</td></tr><tr><td>Types</td><td>Designation</td><td>Function and associated role in infections</td></tr><tr><td>Hemagglutinin</td><td>fim operon</td><td>To express type 1 pili for causing mannose-sensitive hemagglutination.</td></tr><tr><td>Endothelial brain invasion</td><td>fim</td><td>To bind and invade microvascular endothelium of the human brain.</td></tr><tr><td colspan="3">Toxins</td></tr><tr><td>Types</td><td>Designation</td><td>Function and associated role in infections</td></tr><tr><td>α-Hemolysin</td><td>hly</td><td>To express RTX toxin in order to create pores.</td></tr><tr><td>Cytotoxic necrotizing factor 1</td><td>Cnf1</td><td>To participate in cell necrotic process, phagocytosis resistance, and inflammatory process.</td></tr><tr><td>Colibactin</td><td>Clb</td><td>To induce DNA damage that will cause immune cells to apoptoses and epithelial cells to undergo senescence of cells before maturity.</td></tr><tr><td colspan="3">Autotransporters</td></tr><tr><td>Types</td><td>Designation</td><td>Function and associated infections</td></tr><tr><td>Antigen43</td><td>agn43</td><td>To get entailed in self-aggregation, adhesion, and progression of biofilm.</td></tr><tr><td>Secreted autotransporter toxin</td><td>Sat</td><td>To promote protein-splitting activity of serine protease stirring cytotoxicity.</td></tr><tr><td>Vacuolating autotransporter toxin</td><td>Vat</td><td>To facilitate epithelium colonization and induce vacuolization of host cells.</td></tr></table>

(continued) 


Table 9.2 (continued)


<table><tr><td>Serine protease autotransporter</td><td>pic</td><td>To affect mucins, facilitate colonization of epithelial cells, and induce formation of vacuoles in the host cell.</td></tr><tr><td colspan="3">Iron uptake</td></tr><tr><td>Types</td><td>Designation</td><td>Function and associated infections</td></tr><tr><td>Enterobactin</td><td>ent, fepA</td><td>To produce and possess siderophore, enterobactin-Fe<eq>^{3+}</eq>.</td></tr><tr><td>Aerobactin</td><td>aer, iuc, iut</td><td>To produce and possess siderophore, aerobactin-Fe ions.</td></tr><tr><td>Salmochelin</td><td>iroN</td><td>To produce and possess siderophore, salmochelin-Fe ions.</td></tr><tr><td>ChuA, Hma</td><td>chu, hma</td><td>To acquire iron from hemoglobin present in blood circulation system of the host.</td></tr><tr><td>Sit</td><td>sitDCBA</td><td>To transport iron and manganese.</td></tr><tr><td>IreA</td><td>ireA</td><td>To produce homologous siderophore receptor that is regulated by concentration of iron.</td></tr><tr><td colspan="3">Protectin</td></tr><tr><td>Types</td><td>Designation</td><td>Function and associated infections</td></tr><tr><td>TcpC</td><td>tcpC</td><td>To weaken innate immune reactions of the host.</td></tr><tr><td>D-serine deaminase</td><td>dsdCXA</td><td>To consume D-serine as C, N, and energy source, thus averting D-serine-mediated bacterial growth inhibition.</td></tr><tr><td rowspan="2">TrapT</td><td>traT</td><td>To suppress complement action and overcome killer potential of serum.</td></tr><tr><td>Iss</td><td>To promote resistance to complement and survival of serum.</td></tr><tr><td>Outer membrane protein T</td><td>OmpT</td><td>To exert protamin resistance.</td></tr></table>

## 9.4 Genes Governing Hardiness and Virulence in Uropathogenic E. coli

UPEC strains are responsible for approximately 90% of urinary tract infections acquired in the community (Foxman 2014; Flores-Mireles et al. 2015). When compared to the E. coli K12 genome (reference strain MG1655), the genomes of CFT073, 536, and UT189 are 6–13% larger and 8–22% more abundant with open reading frames (Brzuszkiewicz et al. 2006; Chen et al. 2006; Welch et al. 2002). The main four phylogroups of UPEC isolates—A, B1, B2, and D were recognized depending on the presence of PAIs, the nature of virulence gene expression, systems controlling secretion of toxins, receptors for iron import (TonB), siderophore receptors, complex biomolecule containing both lipid and polysaccharide (LPS), capsule made of carbohydrate-containing many monosaccharide units, motility organelle, and proteins embedded in the outer membrane (OMPs) (Bien et al. 2012). A variety of virulence genes are expressed and utilized by the majority of UPEC strains to support their extraintestinal survival, although there are significant variations in the virulence factor repertoire and expression levels across other UPEC strains. 

## 9.4.1 Lipopolysaccharide (LPS)

The extended polysaccharide string, commonly referred to as O antigen, is joined to an oligosaccharide center that is coated with fatty acids to form the LPS amphipathic molecules (Simpson et al. 2015). Lipopolysaccharides arbitrate several facets of growth phase of uropathogenic E. coli, such as the capacity to intensely colonize urinary bladders, shape pools, and elicit immune reactions, both general and specialized (Aguiniga et al. 2016). The reduction of LPS on the cell surface and the development of hypersensitivity to harmful compounds like polarized steroids produced in the liver and certain antimicrobials is directly proportional. LPS also provides resistance to hydrophobic antibiotics (Zhang et al. 2013). 

## 9.4.2 Pili

The operons, fim, foc, pap, and sfa, in particular, encode Type I, F1 C pili, P, and S which are typical sticky organelles produced by UPEC. More than 10 fimbrial gene clusters can be found in a single UPEC genome (Snyder et al. 2005; Snyder et al. 2006). Several UPEC isolates encode type 1 and P pili, both are the most researched sticky organelles. The pap operon expresses fimbriae assembled by a chaperoneusher system, whereas the fim operon codes for type 1 pili in UPEC. The pap operon is a component of a pathogenicity island that in addition controls other supposed virulence genes, whereas the fim operon is constitutive in all UPEC clinical isolates. The pap operon, which codes for P pili, is present in both the genomes of 536 and UT189. Two copies of the CFT073 genome each have unique PAIs. Bacterial adherence to host cells is mediated by PapG, a particular adhesin protein that is found at the distal terminus of the P pilus. There are three different forms of PapG adhesin (PapG I, II, and III). Two copies of PapGII are encoded by CFT073. Both 536 and UT189 encode PapGIII (Wiles et al. 2008). In both forms of pili, which are typically a polymer, derived from two or more different types of monomers, and comprise a primary pilus protein component that makes up the stalk of the pilus and many smaller subunit peptides at the distal end, PapG and FimH serve as the true adhesins. The two domains that makeup PapG and FimH are the pilin domain, which permits copolymerization, and the carbohydrate-binding lectin domain (Kline et al. 2009). 

## 9.4.3 Curli

The bacterial surface appendages known as curli exude protein subunits from the cell in the form of soluble monomeric proteins and have the same physical properties as amyloid fibrils. They have been linked to some degenerative disorders in humans. The development of biofilm may be aided by bacterial amyloids (Goyal et al. 2014). 

The operon csgDEFG in UPEC encodes proteins that control curli formation. Although curly fibers are created by subunits of CsgA nucleated by CsgB, secretion of CsgA requires CsgE, CsgF, and CsgG-like auxiliary proteins (Chapman et al. 2002; Barnhart and Chapman 2006). 

## 9.4.4 Non-pilus Adhesins

Other afimbrial adhesins are elaborated by UPEC. In fact, TosA, an adhesion molecule, is expressed in more than 30% of infectious strains (Vigil et al. 2011). The adhesion protein, Iha (regulated by the abundance of iron), intercedes adhesion to BECs in a mouse infection model, whereas FdeC is crucial in bladder and kidney colonization (Nesta et al. 2012; Johnson et al. 2005). 

## 9.4.5 Flagella

Some EPEC strains have sticky and invasive qualities rendered by flagella, which are vital to the dynamics of biofilms (Giron et al. 2002; Pratt and Kolter 1998). According to a recent study, gene expression and regulation throughout the growth phase revealed that flagella serve various roles during biofilm formation, including adhesion, maturation, and dispersal (Nakamura et al. 2016). 

## 9.4.6 Secreted Toxins

Different pathogenetic roles are played by UPEC toxins during infection. UPEC bacteria employ systems that are known as type I and type V secretion systems (Henderson et al. 2004). About 50% of UPEC isolates encode the type I secreted toxin—hemolysin (HlyA) (Marrs et al. 2005). The hemolysin operon, hlyCABD, is present in only one copy in each of the UPEC isolates CFT073 and UT189, but encodes two copies in the 536 strain. When a high concentration level of the calcium-dependent 110 kDa toxin—hemolysin is attained, cell lysis occurs. Sub-lytic dosages of HlyA have been found to potently stimulate the serine/threonine kinase Akt, which is essential for the cell cycle sequence of the host, metabolism, intracellular trafficking of vesicles, survival, and signaling pathways that mediate the inflammatory responses (Wiles et al. 2008). The term “autotransporters” refers to all type V released poisons (Henderson et al. 2004). UPEC isolates frequently expressed Vat (vacuolating autotransporter toxin) and Sat (secreted autotransporter toxin) (Ewers et al. 2007; Restieri et al. 2007). While Vat and Sat are coded by the CFT073 strain, UT189 and 536 solely express VAT. CNF1 is encoded by about one-third of UPEC isolates. This UPEC spread and persistence 