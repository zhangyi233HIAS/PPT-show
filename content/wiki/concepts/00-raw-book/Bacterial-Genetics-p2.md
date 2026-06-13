# A A GC GT  GG Part IV

## Genetics, Genomics, and Bioinformatics

Humans have been doing genetic experiments for thousands of years through selective breeding of plants and animals to select for traits we desire in crops, flowers, pets, animals, and even each other. Although humans did not know the molecular basis for inheritance, it was known that traits and features passed from generation to generation. In the modern era, bacteria have been at the heart of genetics and genomics research. Genomics brings together genetics, molecular biology, biochemistry, statistics, computer science, and disciplines such as engineering and biotechnology in developing technology to study genomes. In this part, the field of bacterial genetics will be further explored and expanded upon. Genetics and genomics have made important contributions to our understanding of the bacterial world, which will be explored in this part, as will the subject of bioinformatics, which uses computer-based tools to analyze genomic sequence data. Information in this section will build upon previous topics, adding depth of understanding of genetics and genomics and introducing bioinformatics. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/bb761fb95532a66be52ec27b0d2b6e99dab76cd73a7059b059614d3d1f934030.jpg)


## Genetics

Chapter 

10 

This chapter will explain the field of bacterial genetics, starting from the terms and concepts particular to the discipline. Genetics is the foundation from which larger investigations, such as those in genomics, can be explored. Also presented are the origins of our understanding of genetics. Some of the key important insights gained by humans into genetics are highlighted here, demonstrating how we have arrived at our current state of understanding in the field. This chapter will begin to explore the genetic tools and techniques that have been used in the laboratory in the past and are still used today to unravel the information contained within DNA. Details on how these technologies work will be addressed in Chapter 18. 

## Terms and conventions in the field of bacterial genetics are straightforward

By now, terms like gene, genetics, genotype, phenotype, genome, and chromosome should be quite familiar. Unlike disciplines such as immunology, bacterial genetics and genomics do not have a lot of abbreviations to try to remember. DNA and RNA are relatively commonplace abbreviations, which often do not need definition. The abbreviation CDS has been used in previous chapters and refers specifically to the coding sequence from the start codon to the stop codon within an open reading frame, or ORF (see Chapter 2). A gene is a CDS, but not all CDSs are genes. This is because a sequence with a start codon and a stop codon that has been identified in sequence data is only speculated to be encoding a protein, based on the sequence evidence. To be a gene, that CDS has to have been shown to actually generate a protein via transcription and translation. CDS is therefore a designation assigned from computational analysis of genetic data, whereas genes are defined by laboratory experimentation. This nuance is often overlooked, with sequences being called genes without evidence to support the designation, and CDSs referred to as ORFs when an ORF is actually defined as a region between two stop codons (see Chapter 2). 

In bacterial genetics, the name of the gene matches the name of the protein. The gene dnaA, for example, encodes the protein DnaA (Figure 10.1). For the most part, bacterial genes are named with a three-letter code that may correspond to a function or assumed function of the gene. This is followed by a capitalized letter. Different letters can help differentiate genes that are all involved in the same process. Gene names are always in italics and always start with a lower-case letter. Protein names, however, are not italicized and the first letter is capitalized. In this way, the reader can differentiate between the gene and the protein. Care should be taken when writing to ensure which form is used and whether the topic actually refers to the gene or its encoded protein. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b915d627e4d2aff52bf36701b351779c4bc223cfbeec87c10f96e95ea471b445.jpg)



Figure 10.1 Nomenclature for genes and proteins. The DNA includes many genes, which are identified with names that reflect their function, such as these three genes involved in multiple antibiotic resistance: marR, marA, and marB. Note the differences in how the gene names are written (marR, marA, and marB) versus how the protein names are written (MarR, MarA, and MarB). In this way, it is possible to recognize whether a gene or protein is being referred to in writing. These names are based on the functions of the genes, so here mar comes from multiple antibiotic resistance.


## Humans understood about traits and inheritance long before the term genetics

Evidenced in the food in our markets and the pets with whom we share our homes, humans have had an understanding of the inheritance of traits for several thousand years. Modern dog breeds are very different from their ancestral wild relatives. Over time, through breeding practices in which favorable traits were selected, humans were able to alter the genetic make-up of these animals. The same is true of the crops that are grown for our food, with humans having selectively bred and planted those that were high producers, resistant to stresses, and tasted best. Although we did not call these selective breeding practices genetics, they were the earliest forms of genetically modified organisms, with humans directly influencing the genetic make-up of another species. 

It was not until 1858 that Charles Darwin described the evolution of species and natural selection of traits. His concepts made possible a better understanding of inheritance of traits and could be directly applied to not only phenomena seen in the natural world, but also the changes that humans had been making for over 10,000 years to the species around them. Gregor Mendel’s famous experiments that looked at the traits carried by pea plants, including careful records and detailed drawings of crosses between plants with different traits, was published in 1866. Mendel’s observations led to the concept of there being units of heredity that were responsible for traits and that these units are unchanging particles. It was Hugo de Vries in 1889 who named the units of inheritance pangenes, which later became genes. It wasn’t until 1905 that William Bateson coined the term genetics (Figure 10.2). 

## DNA was ignored and believed to be too simple to be the genetic material of inheritance

Friedrich Miescher published an account in 1869 of his discovery of a weak acid present in pus recovered from hospital bandages. This weak acidic substance was DNA, although at the time it was called nuclein because it was isolated from the nucleus. DNA is a very simple molecule and at the time was not believed to be the genetic material. 

Although it may be hard for us to understand today, it was known that genes code for protein and that genes are on the chromosome, but it was not known that it was the DNA that made up the gene. Early in the 1900s, Mendel’s work was rediscovered and applied to other organisms, including Drosophila melanogaster (fruit flies), which became a model organism for genetic research due to the ease of crossbreeding, their easy to identify phenotypes like eye color and wing structure, and short generation times. The concept of genes, Mendel’s units of inheritance, became well established and genetic experiments were happening well before it was known that genes are made of DNA. 

Indeed, in 1911, Alfred Sturtevant created the first physical map of a chromosome, which was expanded to a genetic map of the chromosome in 1913, 


Figure 10.2 Timeline of genetics up to the structure of DNA. Key important dates over the century from Darwin’s theory of evolution to Watson and Crick’s structure of DNA.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f46a236f2d72abe431aec7a3488a0957a5ae6dd6cde434e35e47b95c9acf2d5f.jpg)


TAhighlighting where key genes could be found. Genetic transfer by the Griffith experiment, previously discussed (see Chapter 1), demonstrated that traits from one bacterial strain could be transferred to another strain. These results showed that chromosomes were the genetic material, supporting the knowledge and understanding of the time. These experiments also showed that bacteria participate in horizontal gene transfer. Some bacterial species, such as the streptococci used in the Griffith exp eriments, are able to take up DNA from other bacterial cells and incorporate it into their own genome, thereby expressing traits from the acquired DNA. 

## Bacterial genetics was the key to demonstrating the importance of DNA

As is highlighted throughout this book, several fundamental concepts in the fields of genetics and genomics have come about through research done in bacteria. One of the most important is the discovery made in the Avery, MacLeod, and McCarty experiment, which showed that DNA is the genetic material. These pivotal experiments demonstrated that the weak acidic substance first identified by Miescher from pus-filled hospital bandages was a critically important component of the cell and the key to genetics. 

The rapid growth and short generation times of bacteria have been useful in studying their evolution and genetics, concepts that could be extrapolated to other organisms. The genetic passage of traits between bacteria, as observed by Griffith , Avery, MacLeod, and McCarty (see Chapter 1), has made important contributions to our understanding of genetics. In 1928, the Griffith exp eriment showed that transformation, the passage of genetic material from one bacterium to another, was possible. These experiments used Streptococcus pneumoniae, which caused important clinical infections at the time. Some S. pneumoniae strains had differences between strains that could be readily observed in the laboratory. Those agar cultures in which the bacterial colonies appeared rough were R strains, while S strains were smooth. The R strain S. pneumoniae did not cause disease and these non-virulent strains were able to be changed into virulent S strains in the course of the Griffith exp eriments (Figure 10.3). 

There also seemed to be different virulent strains of S. pneumoniae that were causing bacterial pneumonia. Patients were able to make antibodies against one virulent S strain of S. pneumoniae but these antibodies were not necessarily able to recognize the antigens on other virulent S strains of S. pneumoniae in the laboratory (Figure 10.4). Oswald Avery studied the bacterial capsule that surrounded virulent S strains of S. pneumoniae. He established that the bacterial capsule is made of polysaccharide and discovered that different strains of S. pneumoniae had different and distinct polysaccharide capsules. Avery proposed that the capsules were antigenic and that this was the reason behind the differences in antibody responses seen in patients. The genes encoding the ability for S. pneumoniae to make distinct polysaccharide capsules are present in the DNA. Therefore, it is possible to not only transform a strain from having no capsule to expressing capsule, but also transform strains from one capsule to another. 

## Insights following the recognition of DNA as the genetic material led us to where we are today

The experiments of Griffith , Avery, MacLeod, and McCarty were early transformation experiments. Transformation is still used today to conduct genetic experiments on bacteria and for other research. There are, however, few bacteria that are naturally competent for transformation, meaning that there are not many species of bacteria that transfer traits in this way. Griffith w as fortunate in his choice of bacterial species demonstrating transformation, a fortunate choice that Avery, MacLeod, and McCarty followed in their modifications of Griffith ’s experiments. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/87655dfe08ea0ce86e62cdf35dcabad883f995a78b2c83249ba2eeb123f9e0f7.jpg)



Figure 10.3 Horizontal gene transfer of the smooth trait in S. pneumoniae. Rough appearing bacteria (R strains) are not virulent (left, green cell). Smooth appearing bacteria (S strains) are virulent (right, pink cell), causing disease in humans. When rough and smooth strains are combined (arrows), the smooth trait can transfer to the rough strain (bottom, green cell), making them smooth. This demonstrates that the smooth trait can be transferred horizontally.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fc3dd73c28b4c9dc19ed3853966fdfc69f0d06bf64b825194df08bd4f3172f11.jpg)



Figure 10.4 Antigenicity of S strains of S. pneumoniae. A patient (top left) infected with an S strain of S. pneumoniae (green bacteria) makes antibodies specific to the antigens on the surface of that S strain (middle left). These antibodies cannot recognize other S strains, only the one that infected the patient (bottom left). Different patients infected with different S strains, produce different antibodies, each only able to recognize the S strain that infected the patient (right panel).


Later, other mechanisms for horizontal gene transfer were discovered, including the identification of conjugation in 1946. This involves the transfer of genetic material from one bacterial cell to another via a conjugation pilus and was described by Joshua Lederberg and Edward Tatum (see Chapter 3). The understanding of conjugation and the ability to replicate and manipulate this natural process in the laboratory was to be vital to understanding the structure of the bacterial genome, as discussed later in this chapter. 

The study of genetics in bacteria led to two key discoveries in the 1960s. In 1961, a series of experiments began with contributions by several laboratories that deciphered the three-letter triplet code of the codons (see Chapter 2). The concepts of the control of gene expression also came in 1961 with the work of Jacob and Monod (see Chapter 3). Their work on the operon model in Escherichia coli has been expanded to other operon systems in many bacterial species. These fundamental experiments formed the basis of our understanding of DNA as the genetic material, of transformation, of horizontal gene transfer, of the genetic code, and of how that code is used by bacterial cells, which guide our investigations today. 

## Bacterial genetics is the cornerstone of all genetics

The key roles that bacterial experiments have played in the history of genetic research emphasize the contribution of bacterial genetics to our overall understanding of genetics today. The influence of bacterial genetic research on the field of genetics in general continues in the research that is being done currently. Today, bacteria are used not only to study the genetics and genomics of themselves and as models for other organisms, but also as genetically engineered bacteria. These bacteria, modified by humans, are able to express insulin, interferon, human growth hormone, clotting factors, and other human proteins that are missing or non-functional in some human diseases. Genetically modified bacteria also produce enzymes that are used in food production and reagents in diagnostic tests and laboratory research. 

E. coli is the workhorse of molecular biology, having been adapted for use as a genetic-engineering tool. Molecular biology uses a variety of techniques to understand nucleic acids and proteins and the processes involving these biological molecules; thus, the application of molecular biology is important in the field of genetics. As an important tool in genetic research, E. coli is the most grown bacterial species in laboratories worldwide and is often grown in laboratories that are not interested in microbiology. Instead, the E. coli bacteria are used to carry introduced genetic material from other organisms and to express proteins from a range of other sources. From E. coli are also derived plasmids that are used for cloning of pieces of DNA and for the expression of proteins from these cloned DNA fragments. E. coli is also the source of enzymes such as polymerases and restriction enzymes that either are native to this species or have been introduced to the E. coli so that it can make the enzymes efficiently. 

## The identification and isolation of restriction enzymes is important for genetics research

Restriction enzymes are also known as restriction endonucleases because these proteins enzymatically cut nucleic acids in the middle, as opposed to exonucleases that digest at the ends. Restriction enzymes cleave both backbones of the DNA double helix and do so based on the enzyme’s recognition of a specific sequence within the DNA. An important development in molecular biology, where we investigate biological systems at a molecular level, and our ability to understand and manipulate genetics in the laboratory was the discovery, isolation, and production of restriction enzymes as recombinant proteins from molecular biology generated recombinant DNA. Recombinant DNA is produced when DNA from two different sources are combined into one DNA molecule in the laboratory. In this way, recombinant proteins can be generated in E. coli regardless of the bacterial species of origin. Restriction enzymes continue to play a vital role in genetics research, by virtue of the specificity of their enzymatic cleavage of DNA. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8f293ba2141b1e6fbba5b9782e83a7e4100be68992a85cc36a896946824d1f54.jpg)



AFigure 10.5 Restriction modification systems. Each restriction modification system includes a restriction enzyme, which cleaves DNA based on a specific DNA sequence, and a methylase, which methylates the DNA within the specific DNA sequence to protect it from cleavage by the restriction enzyme. Shown here, the recognition site for the EcoRI restriction enzyme is cleaved by the enzyme at the red arrows or is acted upon by the methylase to block the action of the EcoRI enzyme.


The discovery of restriction enzymes themselves supports the earlier observations of horizontal gene transfer. A restriction enzyme will digest any DNA that contains the specific recognition sequence for that enzyme. Bacterial cells therefore use restriction enzymes to digest and eliminate foreign DNA that enters the cell, thus restricting integration of DNA that may be harmful to the cell. Restriction enzymes have evolved to protect bacteria from the introduction of harmful DNA, such as bacteriophages. Bacteriophage DNA is introduced into the bacterial cell, where it subverts the bacterial cell for the manufacture of new bacteriophage particles, leading to the lysis of the bacteria. Therefore, digestion and elimination of this foreign DNA by restriction enzymes is beneficial. The bacteria’s own DNA is protected from digestion, not by the absence of the enzyme’s recognition sequence, but by modification of these sequences by a methylase that blocks recognition and digestion through methylation of the recognition sequence in the bacterial DNA (Figure 10.5). Together, the restriction enzyme and the methylase form a restriction modification system. Foreign bacterial DNA, introduced into the cell by horizontal gene transfer, may or may not be protected from digestion by the cell’s restriction enzymes, depending on the methylation state of the DNA. 

Unlike other enzymes that digest DNA, the specificity of the recognition site and therefore the specificity of the DNA ends makes restriction enzymes important in molecular biology and therefore in the study of genetics. The sequence specificity of the restriction enzymes has meant that DNA fragments could be generated by precision cutting of the DNA, either creating a straight cut across the DNA double helix, generating “blunt ends,” or a staggered cut, generating “sticky ends” (Figure 10.6). The isolation of restriction enzymes from bacterial cells has meant that they could be used as molecular biology tools to specifically cut DNA, generating ends of DNA fragments with known sequences and enabling DNA fragments to be cloned into plasmids with complementary ends. Initially, restriction enzymes had to be extracted from bacterial cells and isolated for use in genetics experiments. Today, most restriction enzymes available commercially are recombinant proteins overexpressed in E. coli, which has simplified the process of isolation of the protein from bacterial cells. This reduced the cost per unit of restriction enzymes, making them more widely available molecular biology tools for investigations in the field of genetics. 

## There are four types of restriction enzymes, with type 2 being used most in laboratories

Restriction enzymes come in four different types, based on the make-up of the restriction modification system and distance between the cut site and the recognition site. Type 1 restriction enzymes cleave the DNA away from the recognition site. This means that, although the sequence of the recognition site is known and specific, the ends generated by the digestion are of an unknown sequence. In a type 1 restriction modification system, there is one protein that has both restriction and modification activity. This protein is made up of three subunits: HsdR does the restriction digestion, HsdM has the modification activity, and HsdS confers the sequence specificity for the recognition site. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1cd64e55b593b074d76b18bd5d77cab14ae2e164d5ef226ad79856044c928cda.jpg)



Figure 10.6 Restriction enzymes generate either blunt or sticky ends to the DNA. A restriction enzyme cuts both of the DNA backbones of the double helix. Some cut the DNA straight across, resulting in no overhangs of nucleotides, which generates what is referred to as a blunt end (top). Some create a staggered cut in the DNA, making sticky ends that have nucleotide overhangs. These overhangs can be either at the 3′ end (middle) or at the 5′ end (bottom), depending on the action of the restriction enzyme.


Type 2 restriction enzymes cleave the DNA at the recognition site (see Figure 10.5). This makes them ideal for molecular biology and molecular cloning, the generation of recombinant DNA, because the sequence of the recognition site remains at the end of the DNA after it is cleaved. In the type 2 restriction modification systems, there are separate restriction and modification enzymes. The restriction enzyme forms a homodimer, where two copies of a protein come together into one quaternary structure that is then capable of specifically binding to the DNA. This homodimer structure influences the nature of the recognition site, which is a palindromic sequence of four to eight nucleotides. Cleavage of the DNA occurs at this site, which is the key feature making these enzymes the most commonly used and commercially available restriction enzymes. 

The first type 2 restriction enzyme that was identified and isolated was the HindII enzyme from Haemophilus influenzae. Restriction enzyme nomenclature comes from the species in which it was first identified, making up the first three letters of the enzyme name, which is written in italics. The remaining letters identify the strain of the bacteria and then Roman numerals based on the order in which restriction enzymes were identified in this strain. So, the type 2 restriction enzyme EcoRI comes from E. coli strain R and was the first enzyme identified in this strain. HindI is a type 1 restriction enzyme, with HindII, the first type 2, discovered later. 

Type 3 restriction enzymes are a complex of restriction and modification enzymes that cleave DNA a short distance from the recognition site. The recognition sequence for a type 3 restriction enzyme is actually two different sequences that are present in inverted orientation relative to one another. 

Unlike the other types of restriction enzymes, which are blocked by methylation generated by the associated methylase, the type 4 restriction enzymes specifically cleave methylated DNA. Type 4 restriction modification systems are otherwise similar to type 2 systems. Some classify the enzymatic activity within a CRISPR system as a fifth restriction enzyme type; this will be explored in more detail in Chapter 18. 

## The genetics of bacteria was unraveled using conjugation

In 1957, Jacob and Wollman interrupted conjugation in the laboratory to determine the location of genes on the E. coli chromosome. Bacteria with the F plasmid integrated into the chromosome as Hfr (see Chapter 3) were used to transfer the bacterial chromosome from one E. coli cell to another. As the chromosome crosses from one bacterial cell to another during conjugation, the gene locations on the chromosome were mapped based on the time the bacteria are attached by the conjugation machinery. During conjugation, the pilus retracts, pulling the donor and recipient cells closer together. This enables this Type 4 Secretion System (see Chapter 9) to transfer the DNA between the bacterial cells. Interruption of the conjugation at different times would allow a different amount of the chromosome to transfer over to the recipient. Conjugation experiments were interrupted quite simply – using a standard blender to separate the bacterial cells. Because the F plasmid can integrate into different locations in the chromosome in different Hfr strains, repeated experiments would produce results around the chromosome identifying the relative locations of genes. 

The conjugation mapping experiments relied upon auxotrophy, the requirement for particular nutrients in the media for growth. Auxotrophs require specific nutrients in the media to grow; therefore, they can be easily identified through the use of media with different nutrients. Auxotrophies can differentiate bacteria that are otherwise identical, but which need different nutrients for growth. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/73a01b7be71f1a323f46539edaebab77d47bd32d0dc66143b8dd67d9a461b2a4.jpg)



Figure 10.7 Conjugation mapping of E. coli using auxotrophies and antibiotic susceptibility. The Hfr strain is susceptible to streptomycin (str), resistant to azithromycin (azi), able to use lactose (lac), and able to use galactose (gal). The recipient strain is resistant to streptomycin, susceptible to azithromycin, and unable to use lactose or galactose. Conjugation is allowed to happen for a set time and then disrupted to stop conjugation. After conjugation, bacteria are cultured on media containing streptomycin, to select for the recipient cells. Only the recipient cells will grow, as the Hfr strain is susceptible to streptomycin. The time points at which these streptomycin-resistant recipient strains gain resistance to azithromycin and the ability to grow on lactose and on galactose produce a map of the genome with the relative distances of these genes indicated in the minutes of conjugation required to transfer the trait.


Genetic mapping experiments can track the locations of auxotrophy genes. The transfer of genes between cells in conjugation can reverse the auxotrophy, highlighting the genetic basis of the auxotrophic phenotype. In addition, genes conferring antibiotic resistance enable bacterial cells to grow on media containing the antibiotic. Timing this transfer of genes identifies the location of the gene on the chromosome. Through tracking of auxotrophy genes and antibiotic resistance genes, it was possible to generate a 100-minute map of E. coli that represented the complete conjugative transfer of the whole E. coli genome (Figure 10.7). These experiments were difficult; the connection between conjugating bacteria is very easy to break. Maintaining a connection for a few minutes is relatively easy, but maintaining connections for up to 100 minutes is technically challenging. 

Through these timed conjugation experiments the relative positions of readily identifiable genes were determined. This produces a genetic map that gives the relative locations of genes and genetic features on the chromosome, such as auxotrophy genes, antibiotic resistance genes, and other genes of known function. In this way, the genetic features on the bacterial chromosome were first explored. While valuable, and certainly a cornerstone of understanding the E. coli genome for many years, conjugation does not happen in all bacterial species; therefore, generation of these genetic maps was not possible for every species of interest. 

## Physical maps can be made for any bacterial species using restriction enzymes

A physical map does not have gene location information like a genetic map. Instead, the base pair distances between restriction enzyme recognition sites around the chromosome are determined. The genetic features on physical maps are the type 2 restriction enzyme recognition sequences. Physical maps are made by digesting the chromosome with restriction enzymes and separating the restriction fragments by electrophoresis. The pattern of fragments on a gel is used to identify the lengths of the fragments. When several different restriction enzymes are used, singly and in double digests using two enzymes at the same time, the locations of these different recognition sites in relation to one another can be determined by determining the size of the restriction fragments and analyzing how they would go together. Because restriction enzymes are used to generate the map, these are also referred to as restriction maps. Restriction maps can be made for chromosomes and also for plasmids. Plasmid restriction maps are useful when planning to digest the plasmid with a restriction enzyme for the purposes of cloning (Figure 10.8). 

In a physical map, the genes and other genetic features on the chromosome or plasmid are not identified. It is possible to add genetic map information onto a physical map by experimentally determining the genes within a restriction fragment. A physical map can be used, when overlaid with a genetic map, to identify restriction fragments that contain genes of interest and then use this information to isolate the fragment of DNA containing the gene. Because the restriction enzyme recognition sites are specific known sequences and the distances between them are determined in the physical map, this resource can be used to help in assembly of genome sequences and then to check that the assembly is accurate. The availability of a physical map was deemed to be important in the selection of strains for the first genome sequences. Although new physical maps using restriction enzymes are often not determined today, the methods behind their creation can still be used to verify genomic data. Many of the known functions of genes were determined through experiments that developed genetic and physical maps and experiments that used these data. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c738214dd1d0c04d562e129f4e5d157a4f6a97981bd694a7576577af62947f85.jpg)



Figure 10.8 A physical map of a plasmid. Physical maps use restriction enzymes to generate DNA fragments, which are used to plot the distances between restriction enzyme recognition sites. Using several different enzymes can create a detailed map of the locations of the various enzyme recognition sites. Shown here are the locations of the restriction enzyme recognition sites for EcoRI, BamHI, and HindIII.


## Experimentation reveals whether a CDS is a gene and what its function may be

While in the past mapping and molecular biology techniques were used to identify genes, today the abundance of sequencing data means that potential genes tend to be identified from DNA sequence, rather than experimental data. Although potential genes can be identified as CDSs through analysis of sequence data, only laboratory experiments can truly reveal the expression of the CDS as a gene and its function. Although there are many examples in a bacterial genome of regions where there is a start codon, a segment of uninterrupted DNA, and then a stop codon, identification from the sequence is based on sequence information, not on expression of that sequence as a protein. Even in CDSs with homology to known genes in other species, the function of the potential protein is only assumed to be the same as that of the homologous gene; it is not known to be the same. 

Experiments in which a CDS is deleted or mutationally inactivated can demonstrate that this sequence includes a gene and can reveal its function. If, in the absence of the CDS sequence, a phenotypic difference is observed in the bacteria, the CDS can then be designated as a gene. If the phenotype gives a 

TAclear indication of the function of the gene, this is used to name the gene, using the conventions discussed earlier in this chapter. CDSs should not be given gene names when identified from sequence data alone. For this reason, CDSs are given other designations, often based on their relative locations around the chromosome, so that they can be identified and discussed in the literature prior to their status as a gene being known. 

## Library generation and library screening can identify genes and their functions

Transposon mutagenesis uses the insertion of transposons (see Chapter 3) into a bacterial chromosome to create a library of nearly identical bacterial clones where each has one transposon somewhere in the genome, disrupting the chromosomal sequence. Transposons used for the construction of libraries are specifically chosen to have antibiotic resistance markers that can be readily selected, to randomly insert in the genome, and to be small in size, sometimes being referred to as mini-transposons. The disruption of the genome is not targeted, but relies on the promiscuous integration of the transposon to semi-randomly generate mutations across the chromosome, causing random mutagenesis. The process is semi-random due to the nature of the target sites for the particular transposon used. The library is a collection of strains that can be used to look for changes in phenotype based on the different insertions of the transposon within the library. 

It is possible to use selection to select library clones with a particular phenotype through the creation of a specific medium on which only those clones will survive. Auxotrophs and antibiotic resistance markers can easily be identified in this way. Library clones that grow can then be analyzed in more depth to see where the transposon has inserted in that particular bacteria. The transposon may have interrupted a gene directly involved in the selected phenotype. It may also be that the transposon has inserted into a promoter region that is important for expression of the phenotype or into a regulatory protein gene needed for expression of the phenotype. 

Libraries can also be interrogated for specific phenotypes using screening. Unlike selection, all of the bacteria in the library are grown and then each individual clone is experimentally investigated for the presence of the phenotype, using a variety of molecular biology methods. This is a labor-intensive process because each library clone must be investigated individually for the phenotype of interest. The larger the library, and therefore the more extensive the transposon mutagenesis of the genome, the more experiments will be needed to identify the clone of interest. Like with selection, once the clone or clones with the desired phenotype are identified, the location of the transposon is then determined, using polymerase chain reaction (PCR) or sequencing, to identify genes involved. 

## Random mutagenesis identifies genes that have nonessential functions

A transposon library is a group of clones that are all identical except for the location of insertion of the transposon. Each clone has a transposon somewhere in the chromosome, interrupting the DNA sequence. If this mutation is detrimental to the bacterial cell, it will not grow and will not be part of the transposon library. This means that only non-essential genes will be disrupted by the transposon. 

Locations in the chromosome that do not have transposon insertions in the transposon library will correspond to essential genes. When the locations of the various transposon insertions across the chromosome are assessed, the lack of any transposon insertions in a region suggests that there is an essential gene there, or another genetic feature that is essential, such as a promoter region driving essential genes or an ncRNA that the bacterial cell needs for growth. 

If the growth conditions are changed for the culture used to grow the transposon library and some mutants are lost, the insertion locations of the transposons in the lost clones may be involved in growth in the new condition. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b5891ae1593a935de1f8be51707a197b818cc79300b0f4baacfea320b3e63aee.jpg)



Figure 10.9 STM to identify genes needed in vivo. A signature-tagged library is grown in laboratory conditions. A portion of this culture is injected into mice (or another in vivo model system) to assess which library clones are lost in vivo. These clones will have disrupted genes that are essential for survival in vivo. By virtue of the tags, the clones from the laboratory culture and from the in vivo model can be assessed and those results compared to identify missing clones from the in vivo conditions.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e3a7bed3897809b1ba6ca16fca6e278606d85a25476e2f2f1e3a5911b25d429e.jpg)


By identifying the lost clones from the original culture conditions, it is possible to identify the insertion location and associate the phenotype with the genetic feature. 

A specialized form of transposon library is called signature-tagged mutagenesis (STM). When the transposon library is made, specialized transposons are used that contain specific sequences, genetically engineered tags, within the transposon. Using molecular techniques such as PCR, the specific clones within the library can be identified. In experiments using STM, the transposon mutants are pooled and subjected to different growth conditions to see which can and which cannot survive in the different experimental growth conditions (Figure 10.9). Often STM has been applied to growth in laboratory in vitro conditions versus in vivo conditions in a host organism to identify genes required for growth in vivo. The signature tags enable the identification of clones more readily in the library. High throughput, inexpensive sequencing means that mutants identified from either standard transposon libraries or STM can be whole-genome sequenced to identify the location of transposon insertion. 

## The functions of genes can be determined using knockout technologies

To find the phenotype for a gene, a specific knockout of that gene may reveal the function. Disruption of the gene, the knockout, should result in a loss of function of that gene product. Libraries are particularly useful when the gene for a specific phenotype is sought, or when the functions of several genes need to be investigated. The identified loss of function should relate to the gene, although it should be noted that it is not always that simple. 

In the same way that a transposon interrupts a gene sequence, a knockout mutation specifically gets rid of a gene. This can be achieved by specifically inserting a different sequence into the gene, disrupting the sequence of the desired gene, and rendering it unable to encode the protein. Unlike transposon mutagenesis, the gene is disrupted not by random process, but rather in a carefully designed experiment. Disruption of the gene sequence is often achieved with an antibiotic resistance cassette, which means that clones carrying the insertion in the gene can be selected for on media containing the antibiotic. Homologous recombination occurs between the chromosome and a fragment of engineered DNA containing the antibiotic resistance cassette flanked by sequences homologous to the chromosome. The flanking sequences are chosen so that recombination deletes the gene of interest. Bacterial cells that have not incorporated the antibiotic cassette into their chromosome will not be resistant to the antibiotic and will fail to grow on the plate, leaving only the mutants to grow. This knockout mutant can be used in experiments to try to determine the function of the disrupted gene. 

Advances in molecular biology and molecular cloning mean that genes can be put into a plasmid and manipulated there. This construct enables the manipulation of the genetic sequence of interest. Once inserted into the plasmid, it is possible to insertionally inactivate the gene, delete all of the gene sequence, or delete part of the gene for the purposes of creating a knockout. A construct can also be generated using PCR techniques, which will be explored in detail in Chapter 18. Recombination between the genetically modified sequence and the bacterial chromosome will bring the changes to the gene into the bacterial 

Figure 10.10 Knockout mutant generation. To knock out a gene of interest on the chromosome (top), a construct is generated, either on a plasmid or using PCR. A fragment of DNA containing the gene is created that has an antibiotic resistance cassette inserted into the gene, disrupting the sequence of the gene and thus preventing its function (middle). When this fragment recombines with the chromosome, the homology between the portion of the gene sequence in the construct and that in the chromosome means the construct ends up in the chromosome, generating the knockout of the gene. 

TAgenome, generating a knockout mutant (Figure 10.10). Molecular cloning techniques will be discussed in more detail in Chapter 18. 

## Knock out a gene and complement it back to check the phenotype is caused by the knocked out gene

Since the observed phenotype in a knockout mutant could be due to something else having changed in the genome, it is important to add back the gene and show a return of function. This process is called complementation and is often achieved by providing an intact copy of the gene on a plasmid (Figure 10.11), which is introduced into the bacterial cell. During the process of generating the knockout, a mutation could have appeared elsewhere in the genome, and this could cause the phenotype observed and presumed to be attributable to the knocked-out gene. Complementation provides additional supporting evidence that the phenotype associated with the knockout has actually been caused by the disrupted sequence of the knockout. 

In the era of inexpensive genome sequencing, it is also possible to check for mutations and deletions of the genome that may have arisen during creation of the knockout mutant through whole-genome sequencing. Invariably there are changes seen in the whole-genome sequencing data. Even if two colonies from the same culture plate are sequenced, there can be differences due to errors introduced during replication and sequencing errors from the sequencing technology. Therefore, sequence data from knockout mutants have to be carefully assessed to see if there are sequencing errors or random mutations that do not impact the phenotype. 

Through either targeted knockouts or random mutagenesis, like transposon libraries, many gene functions are identified. However, these techniques cannot be used on genes that are essential to bacteria. Deletion or disruption of a gene that is essential for bacterial growth and survival will result in dead bacteria that cannot be investigated in the laboratory. For essential genes, other strategies are needed. 

## Bacterial research has helped shape the field of genetics

In recent decades several key events involving bacteria have occurred that have contributed to the general field of genetics. In the 1950s, the DNA code was determined, and the principles of transcription, translation, replication, and operons were developed, as discussed briefly here and in earlier chapters. In the 1970s, key enzymes were identified, including restriction enzymes and reverse transcriptase, which are routinely used in molecular biology and have contributed to our understanding of genomes and transcriptomes. Recombinant DNA was first generated by Paul Berg in 1972, with 1973 seeing the creation of recombinant E. coli expressing non-E. coli genes, including a gene from Xenopus laevis, a toad. The first gene sequenced was from bacteriophage MS2, with both 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/5edd6a0b55b08b275392ad511b9f750c11e43f9784c1d00cfa66fdb56368888b.jpg)



Figure 10.11 Complementation of a knockout mutant. To add to the evidence that a knockout mutant is responsible for an observed phenotype, the gene is added back into the bacterial cell, causing complementation. Often this is achieved by putting a functional copy of the gene on a plasmid and introducing it into the bacterial cell.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4b8b02f3ed7bc83ddc9c631164190179000545236b4158f0c09f33e1cbad0b7e.jpg)



Figure 10.12 Timeline of events in the field of bacterial genetics from the structure of DNA to the present.


Sanger sequencing and Maxim and Gilbert sequencing being applied to bacterial sequences soon thereafter. Building upon earlier work and understanding of replication in the bacterial cell, Kary Mullis introduced the world in 1983 to the PCR, enabling researchers to copy specific sequences of DNA in the laboratory. PCR will be explored in depth in Chapter 18. The first automated sequencing machine was available in 1986, an enhancement of Sanger sequencing methodology that enabled the first bacterial genome sequence in 1995 of H. influenzae. Indeed, advances in technologies are often first applied to bacteria, due to the small size of their genomes and relative ease for genetic manipulation. As such, in 2016, E. coli was sequenced in space using a nanopore MinION system by astronaut Kathleen Rubins (Figure 10.12). 

## Key points

Bacterial genetics is the study of how the nucleic acids within the bacterial cell contribute to its characteristics. 

Bacterial gene names are always in italics and the proteins they encode have the same name, but capitalized, making it easy to identify the gene and product in writing. 

Many of the advances in understanding the wider field of genetics have been made through experiments in bacteria, including identifying DNA as the genetic material. 

E. coli is often used in molecular biology for molecular cloning and expression of recombinant proteins, making it an important microorganism. 

The specificity of restriction enzymes in their cleavage of DNA has made possible the generation of physical maps of bacterial chromosomes and the creation of recombinant DNA, key advances in genetics. 

Timed conjugation experiments created genetic maps of bacterial genomes before it was possible to sequence the genome. 

From sequence data, we can predict where a gene might be and what it might do, but only through experimentation can we demonstrate which sequences are truly genes and what they do. 

Transposon mutagenesis, and variants of this method, randomly generates mutants that can contribute to understanding the functions of genes. 

Targeted gene knockouts and complementation can be used to investigate the function of a specific gene of interest. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Auxotroph</td><td>In vitro</td><td>Recombinant protein</td></tr><tr><td>Bioinformatics</td><td>In vivo</td><td>Restriction enzymes</td></tr><tr><td>Blunt ends</td><td>Knockout</td><td>Screening</td></tr><tr><td>Clone</td><td>Molecular cloning</td><td>Selection</td></tr><tr><td>Complementation</td><td>Polymerase chain reaction</td><td>Sticky ends</td></tr><tr><td>Construct</td><td>Recombinant DNA</td><td>Transposon mutagenesis</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 Describe the distinction between a gene, a CDS, and an ORF. 

2	 How is it possible to distinguish in writing between a gene name and a protein name? What is the general convention for naming bacterial genes and the proteins that they encode? 

3	 Early experiments in genetics used the fruit fly, D. melanogaster, to study phenotypes. Why was this model organism used and why does it continue to be used today? 

4	 What mechanism was involved in the horizontal gene transfer that occurred in the experiments by Griffith, Avery, MacLeod, and McCarty with S. pneumoniae? What phenotype was horizontally acquired? 

5	 What are bacterial capsules made from and are all capsules within a species the same? How do capsules impact the immune response to bacteria? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

Just as D. melanogaster was chosen as a model organism for the study of eukaryotic genetics, E. coli became the model organism for the study of bacterial genetics. Discuss the reasons why this was chosen as a readily available bacterial species for laboratories to investigate and to manipulate as molecular biology developed. How have discoveries made in E. coli been applicable to a broad range of other bacterial species, both Gram-negative and Gram-positive? 

6	 What does a restriction endonuclease do to a piece of DNA containing its recognition sequence? Draw the different outcomes for the DNA. 

7	 Compare the differences between a genetic map and a physical map. 

8	 What can be done experimentally to demonstrate the function of a CDS? 

9	 What is the difference between selection and screening? Which do you think is quicker or easier to do? 

10	 What sort of genes cannot be investigated using knockout mutants and transposon libraries? Why can they not be investigated in this way? Can essential genes be identified from library data? 

11	 What is the counterpart experiment to the generation of a knockout, which helps to verify the phenotype of the loss of function seen in the knockout? How would these experiments show the function of an unknown gene? 

12	 When was recombinant DNA first generated? Which species were involved in these experiments? 

2 Identify a recent research article that has explored the function of a bacterial gene. Discuss how the researchers determined the function of the gene, including the genetic experiments conducted and the tests run to demonstrate the function. Was a knockout mutant made and loss of function shown? What were the controls in the experiment? What more needs to be done in future research? 

3 Several important advances in the wider field of genetics and genomics have been based on work in bacteria. Within the last year, what vital research discoveries have been made due to investigations in bacterial species? Discuss the implications of these discoveries for the wider field of genetics and genomics and potential applications for the future. 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/dcd80d352ad5f1d8def6eea52cafe1e4860c93a018fedecc8f0fa82fc337b1f6.jpg)


## Further reading

## Bacterial genetics was the key to demonstrating the importance of DNA



Avery OT, Goebel WF. Chemoimmunological studies on the soluble specific substance of pneumococcus I: The isolation and properties of the acetyl polysaccharide of pneumococcus type I. J Exp Med. 1933; 58: 731–755. 





McCarty M. Discovering genes are made of DNA. Nature. 2003; 421: 406. 





Steinman RM, Moberg CL. A triple tribute to the experiment that transformed biology. J Exp Med. 1994; 179: 379–384. 



## Insights following the recognition of DNA as the genetic material led us to where we are today



Crick FH, Barnett L, Brenner S, Watts-Tobin RJ. General nature of the genetic code for proteins. Nature. 1961; 192: 1227–1232. 



## The identification and isolation of restriction enzymes is important for genetics research



Pingoud A, Wilson GG, Wende W. Type II restriction endonucleases – A historical perspective and more. Nucleic Acids Res. 2014; 42(12): 7489–7527. 





Ren J, Lee HM, Shen J, Na D. Advanced biotechnology using methyltransferase and its applications in bacteria: A mini review. Biotechnol Lett. 2022; 44(1): 33–44. 





van der Oost J, Patinios C. The genome editing revolution. Trends Biotechnol. 2023; 41(3): 396–409. 



## Library generation and library screening can identify genes and their functions



Lin T, Troy EB, Hu LT-Gao L, Norris SJ. Transposon mutagenesis as an approach to improved understanding of Borrelia pathogenesis and biology. Front Cell Infect Microbiol. 2014; 4: 63. 



## Random mutagenesis identifies genes that have non-essential functions



Cummins J, Gahan CG. Signature tagged mutagenesis in the functional genetic analysis of gastrointestinal pathogens. Gut Microbes. 2012; 3(2): 93–103. 



## Bacterial research has helped shape the field of genetics



Castro-Wallace SL, Chiu CY, John KK, Stahl SE, Rubins KH, McIntyre ABR. Nanopore DNA sequencing and genome assembly on the international space station. Sci Rep. 2017; 7(1): 18022. 



## Genomics

Chapter 

11 

Bacterial genomics, in which whole-genome sequence data are generated, interrogated, and explored, has only been possible since 1995. In that year, the first bacterial complete whole-genome sequences became available, and the era of genomics truly began. Previous genomic endeavors had to rely upon incomplete information, gained from techniques such as mapping and mutagenesis, as described in Chapter 10, and short targeted sequencing. Since the first bacterial genome sequences were completed, many thousands of bacterial samples have been sequenced, leading to a new understanding of the genes and sequence features within bacterial species and how they have diverged and evolved over time. This recent history of genomics will be explored in this chapter, highlighting key advances in technologies, discoveries that have been made, and how bacterial genomics has impacted our understanding of bacteria. 

## Automation of Sanger sequencing launched the era of bacterial genome sequencing

Sanger sequencing and Maxam and Gilbert sequencing, developed in the mid-1970s, allowed the specific base sequences of DNA to be determined using biological or chemical techniques, respectively. These methods were technically challenging and, therefore, the automation of Sanger sequencing made it possible to produce more sequence data more efficiently than ever before. This brief overview here will put into context the advances in Sanger sequencing that have led to genome sequencing. 

Although Maxam and Gilbert sequencing was initially more popular, due to its chemical basis of sequence determination, ultimately Sanger sequencing became dominant, with its sequencing by synthesis approach. Sequencing by synthesis reproduces the process of replication, taking a single strand of DNA and using polymerase to add nucleotides. Through monitoring the addition of the four nucleotides, the sequence is able to be determined. Sanger sequencing initially used radioactively labeled nucleotides incorporated into the synthesized second strand of DNA to produce fragments and resolved these on large polyacrylamide slab gels. The radiolabeling of the four different nucleotides required four reactions to be set up and then resolved on four different lanes of the slab gel. After the gel was run, it was exposed to X-ray film and the radiation revealed the location of labeled nucleotides. To obtain the DNA sequence, the bands on the X-ray film across the four lanes were read by eye to reveal the order of the four nucleotides in the sequence (Figure 11.1). 

To automate Sanger sequencing, the radiolabeling had to be replaced with something more easily detected by a computer-driven automated system, rather than relying on human interpretation from bands on a gel. Automated Sanger sequencing incorporated fluorescently labeled nucleotides. This change resulted in three main benefits. Using fluorescently labeled nucleotides, the bands on the polyacrylamide gel are detectable by a sensor and recorded automatically by a computer, rather than needing to be read and recorded by a human. Also, by using different fluorescences for each nucleotide, the four sequencing reactions needed in Sanger sequencing are able to be combined into one reaction in one tube, reducing set-up time for the sequencing reaction. Finally, since there is one sequencing reaction, containing information on all four of the nucleotides, the number of lanes needed for each stretch of sequence on the polyacrylamide slab gel is reduced from four lanes to just one lane. More efficient use of the slab gel means that four times more sequence data can be gathered for each gel poured and run. This dramatically reduced preparation time for both the reaction and the gel, since fewer reactions and fewer gel lanes were needed to achieve the same amount of sequence data (Figure 11.2). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/818020c98927d3b66c6a3fa909b700b03ef798dfac470b9e6e8856668e222768.jpg)



Figure 11.1 Sanger sequencing. The original Sanger sequencing method required radioactive nucleotides (indicated with a *), one for each base within DNA. These were used in four separate reactions to label DNA (top). Each reaction was run in a single lane of a polyacrylamide gel (top middle), which was then exposed to X-ray film to reveal the radioactive bands, each representing a base in the sequence (bottom middle). This X-ray film was read by eye, from bottom to top, to determine the sequence of the DNA (bottom).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/876a02331362001d78172418056806ec36152ddd3a757235f74319c129772f8e.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b69b97045571f56e31818b0d870495d6c49887f1c748d737d940cc52dce64559.jpg)



Figure 11.2 Sanger sequencing with fluorescent nucleotides. Rather than using four separate r adioactive nucleotides in the sequencing reactions, use of nucleotides each labeled with a different type of fluorescence reduced both the number of reactions (top) and the number of lanes on the polyacrylamide gel (middle). Fluorescence also enabled automated detection (bottom), r educing human error in reading bands on an X-ray film as previously (see Figure 11.1).


This stepwise advance in sequencing methodology still required researchers to pour large awkward polyacrylamide slab gels; therefore, these were replaced in the early 1990s with capillary gels. By containing each gel lane within a glass tube, the process was simplified in a way that could be completely automated. From this stage, other advances were based on increasing the capacity of the sequencer, such that more capillaries could be run at the same time and such that more sequence information could be gained from each capillary. These developments and the potential seen in early Sanger sequencing launched the sequencing of bacterial genomes. As groups embarked on large-scale sequencing efforts, new insights into the processes involved in sequencing led to these higher throughput methods, automating Sanger sequencing and transitioning to capillary gels. 

## The first genome sequence of a free-living organism was bacterial

The first genomes that were sequenced were the relatively small genomes of bacteriophages. Scaling up to a bacterial genome sequence was a major undertaking, going from a few hundred bases to several thousand. The first bacterial species for which genome sequencing was undertaken was the model microorganism Escherichia coli, which has 4.6 megabases in its genome. This project took an ordered and methodical approach to bacterial genome sequencing. The E. coli chromosome was physically and genetically mapped previously, providing a reference against which sequence data could be placed. The genome was then ordered into 40,000 base segments that overlapped one another. Each 40,000 base segment became the focus of sequencing efforts. This facilitated the assembly of the 200–800 bases of sequence data from each Sanger sequencing reaction into the correct order in each segment. The overlapping segments were then connected to each other to form the complete E. coli genome. The first 1.9 megabases of sequence data from this project was deposited into GenBank in 1992 and the project was finished in 1997. 

E. coli was the first genome-sequencing project initiated, but it was not, however, the first to be finished. The first bacterial genome sequence, completed in 1995, was Haemophilus influenzae. This involved determining the sequence of the 1,800,000 bases of the H. influenzae genome using a new shotgun sequencing approach and took about a year to finish. In this method, the genome is randomly divided, cloned into a randomized library, and sequenced. Because the sequencing data are then produced in a random order, assembly of the genomic sequence relies heavily on computation and upon there being enough overlapping sequence fragments to determine where each 200–800 bases of sequence data join to one another (Figure 11.3). Although shotgun sequencing is more computationally intense, it is 

Figure 11.3 Shotgun sequencing. This methodology, applied to sequencing whole-bacterial genomes, involves first randomly dividing the genome into fragments that are cloned into a library. The order to the fragments as they were in the genome is lost. As the library is sequenced, it produces overlapping sequence data that is joined computationally to generate contiguous sequence data. 

TAless laborious than making ordered libraries, reducing both cost and time. In the end, about 24,000 fragments of DNA sequence data became the H. influenzae genome sequence. 

In the early years of bacterial genomics, most genome-sequencing projects were completed to one contiguous sequence, with all of the generated sequence fragments joined up as they would be within the bacterial cell. The goal in each case was to fully sequence all of the bases in the genome and fully annotate each coding sequence of the bacterial genome. There were, however, many limitations in the early days of bacterial genome sequencing. The processes of sequencing used for the first bacterial genomes were laborious and expensive, which in turn drove progress toward automating and increasing throughput of the Sanger sequencing methodology. Another limitation discovered during the course of the sequencing projects was that the libraries generated to facilitate all sequencing projects did not contain the entire genome. Regions of DNA that contained genes that were toxic to E. coli when these regions were cloned into plasmids and put into E. coli resulted in gaps in the sequence data. Because plasmids with these regions were toxic, no E. coli containing them were able to grow and therefore these regions could not be recovered in the resulting sequence data. Cloning into plasmids enables sequencing to use primers designed to anneal to the plasmid and sequence the inserted fragment. However, reliance on the propagation of the fragments within plasmids in vivo risks the loss of sequence data due to viability of clones. In order to fill in these gaps and complete the genome sequence, additional laboratory work and additional automated Sanger sequencing, targeting the missing regions, was required. 

## Early genome sequencing of bacteria provided opportunities for new insight and innovation

The availability of a bacterial genome sequence enabled researchers to explore the potential within the DNA, identifying features that might be genes and hypothesize as to their functions. As more whole-genome sequences were determined, new types of analyses could be done. Comparative genomics, in which two or more genome sequences are compared to one another, meant that it was possible to analyze similar sequences and identify regions of difference, where genomes contain different genetic features that are not in common between them (Figure 11.4). 

The first comparative genomics study was published in 1996, evaluating the differences and similarities between two genomes from different Mycoplasma species: Mycoplasma genitalium and Mycoplasma pneumoniae. Due to the small size of Mycoplasma spp. genomes, M. genitalium, with a 580 kb genome, was chosen as the second target of the new shotgun sequencing technique in 1995. In the following year, the 816 kb genome of M. pneumoniae was also sequenced. This provided a unique opportunity to conduct comparative genomics, for the first time comparing two complete genome sequences of species that were within the same genus and therefore closely related. All of the CDSs in M. genitalium were found to be within the M. pneumoniae genome sequence data, although the order of the CDSs was different, indicating chromosomal rearrangements between the two organisms. Additional CDSs in M. pneumoniae included new unique CDSs as well as some duplications of CDSs present as single copies in M. genitalium. This first comparative genomics study showed that the genome sequence data were able to reveal the depth of variation between species and enabled researchers to suggest how changes may have occurred during evolution. 

Following on from this, a comparative genomics project comparing two strains of the same species provided even greater insight into bacterial genomic variation. Helicobacter pylori became the first comparative genomics study to be published within a single species. This analysis revealed that each of the two H. pylori strains contained strain-specific CDSs, many of which were present together in regions of difference between the strains. The value of these comparative genomics results in understanding strain diversity and bacterial genome evolution, coupled with growth of sequencing technology and reduction of sequencing costs, encouraged investigators to sequence multiple species of the same genus and multiple strains of the same species in the years since. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c3aa9b144b68d2a208c3657ec765726aff4845f098b71ca4656450d76ab043ca.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/387a8d6384e493ef18ae1b365bfb401559dc494b4b956de0d8507a40f5da309a.jpg)



Figure 11.4 Regions of difference between bacterial genomes.



Comparative genomics, evaluating differences and similarities between two genome sequences (top and bottom), shows that there are some regions in one genome that are not in the other (blue), and vice versa (red).


## Bacterial genome sequencing required and fueled innovation

In 1997, the first genome sequences of the model bacterial organisms E. coli and Bacillus subtilis were completed, adding to the growing list of bacterial genome sequence data. The growth in size of sequence data from database entries of a few kilobases to a few megabases proved to be a challenge when it came to interrogating these data in available software and when it came to storage and retrieval of the data for analysis. The data therefore drove innovation into new ways in which the vast (in comparison to computer storage at the time) and growing amount of sequence data could be stored and the ways in which they could be analyzed. Without these innovations, investigations into the data would be very limited. These sequencing efforts into bacterial genomes were occurring at the time when the Human Genome Project was being pursued by a collection of sequencing centers around the world. Using the relatively smaller bacterial genomes, developers were able to test the ability of new software and data retrieval methods to enable them to ultimately analyze the larger human genome sequence. 

By the year 2000, bacterial genome sequencing and comparative genomics brought about another innovation, reverse vaccinology. Using the genome sequence data, analysis was done to identify all of the potential targets for a new Neisseria meningitidis vaccine. It was known that the targets for a vaccine needed to be expressed on the surface of the bacteria and that they needed to be unique to bacteria. Theoretically, all of the proteins expressed on the surface of bacteria are encoded in the genome sequence, it was just a matter of doing the correct analyses to identify them. Following extensive sequence analysis and years of laboratory research, new vaccines were developed using this reverse vaccinology approach. Reverse vaccinology will be discussed in more depth in Chapter 20. 

## The emergence of next-generation sequencing technologies greatly increased sequence data

Early sequencing efforts using Sanger and automated Sanger methods demonstrated that bacterial genome sequencing could be achieved and would reveal important information about the bacterial species being studied. However, limitations to the application of these sequencing methods to large numbers of bacterial genomes remained, including the time, effort, and costs involved. Highthroughput next-generation sequencing technologies dramatically reduced the time, effort, and cost per genome. 

Several high-throughput technologies emerged in the mid- to late-2000s, most of which were based on similar principles. Sequencing platforms, the technologies and equipment for sequencing, by Roche (developed by 454), Illumina (developed by Solexa), and Life Technologies (developed by Ion Torrent) all used modifications of the sequencing-by-synthesis method pioneered by Sanger sequencing. Next-generation sequencing takes an approach that is massively parallel, with many individual sequencing reactions happening and being recorded within the sequencing equipment all at the same time. For each of these three next-generation sequencing technologies, the DNA is fragmented, similarly to shotgun sequencing. However, for next-generation sequencing these fragments are not cloned into plasmids. This addressed the previous methodology’s issues with gaps in the final sequencing data due to nonviable clones. Instead, next-generation sequencing ligated specific sequencing adapters to the ends of each fragment. These sequencing platform-specific oligonucleotide adapters enabled the fragments to be captured, separated, amplified in vitro, and sequenced, taking the place of plasmids used in shotgun sequencing. The adapters attached to the fragments are captured onto the surfaces 

TAFigure 11.5 Next-generation sequencing principles. Most next-generation sequencing technologies use sequencing by synthesis, as established in the Sanger sequencing method, but with modifications. DNA is fragmented and sequencing technology-specific adapter sequences are ligated to the ends of the fragments. The adapters are used to attach the fragments to a solid surface (bead or flowcell), as primers for amplification of the fragments, and to initiate sequencing of the fragments. As nucleotide bases are incorporated into the DNA, the identity of each incorporated base is determined via fluorescence or changes in pH within the reaction vessel. 

of microscopic beads (Roche and Life Technologies) or flowcells (Illumina) to keep each fragment discrete during the sequencing process. On these surfaces, the fragment is amplified in vitro to enhance the strength of the sequencing signal, be it fluorescence (Roche and Illumina) or pH-based (Life Technologies) (Figure 11.5). With the elimination of the cloning steps and a streamlining of the workflow, next-generation sequencing provided a means of obtaining bacterial genome sequence data that was quicker, easier to perform, and less expensive. 

Although next-generation sequencing has been a major advance in the field of genomics, and is ideally suited to bacterial genome sequencing, there are some limitations of these technologies. Sanger sequencing has been able to reliably produce continuous stretches of sequence of 1,200 bases or more. Nextgeneration sequencing produces much shorter stretches of continuous sequence data. Although some technologies have increased the sequence information from a single sequencing-by-synthesis reaction (the read length), by 10 times their initial capacity, the longest reads from next-generation sequencing are still a third of what is possible with Sanger sequencing, in the range of 250–400 bases. As a trade-off, the amount of data produced from each genome is far greater in next-generation systems, with the data depth reflecting a significant increase in the number of times each base is sequenced, increasing the reliability of the data and also producing the needed increase in data to achieve enough overlaps of the shorter read lengths to assemble the sequences. Increased data depth also means that sequence variations within the sequenced sample can be detected. If a base has changed in just 10% of the bacterial population, this change may not be seen if that base has only been sequenced eight times. However, when it has been sequenced 100 times, the change in that fraction of the population is evident in the sequence data due to the depth of the data available on the identity of each base. 

## Next-generation sequencing has limitations

Despite the in vitro amplification steps eliminating the loss of clones and the resulting sequencing gaps, it is quite common for next-generation sequencing to be unable to resolve the data into whole-bacterial genomes. In part, this is due to the shorter read lengths of next-generation sequencing, which can only be partially overcome by the increased data depth. This is particularly true of those genome sequences that contain repetitive regions or that have regions of sequence similarity scattered in the genome. Common repeated features such as the copies of IS elements and prophages within the genome and the rRNA loci that are often present in more than one copy are also problematic regions for assembly. When sequenced as fragments, it is difficult to work out the location of the fragment on the chromosome, since the same DNA sequence is present in more than one location (Figure 11.6). This is akin to having a jigsaw puzzle where some of the pieces are identical in shape and color. Regions of the chromosome that have the same, or very similar, DNA sequences confound computational assembly systems that are looking for overlaps in sequence similarity in order to assemble the sequence data into longer and longer stretches of sequence. The sequences cannot be placed properly in the genome and are often seen as the same region rather than separate copies in different parts of the chromosome. When read lengths are shorter than repeated features in the genome, increasing the number of times that the genome is sequenced cannot overcome the inability to sequence fully across the repeated feature (see Figure 11.6). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e8c9eacdb066a2921a14f36ee998df672a07c68655eb97057ab3c6a817db35fe.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/bae0d21d3155f2885f2e97727de5f4b6cf5446ea7ec03143e755f5fe6973579e.jpg)



Figure 11.6 Repetitive regions complicate assembly. If a genome contains, for example, six repetitive regions that are identical to one another (A, B, C, D, E, and F), this can confound attempts to assemble sequencing fragments. The fragment shown could belong in any of the six regions of the genome.


## Bacterial genome-sequencing projects shift focus due to next-generation sequencing limitations

Rather than one circular bacterial chromosome, next-generation sequencing data are often in several contigs: segments of contiguous sequence data that have been assembled together. For instance, if a genome sequence has been assembled into 50 contigs, it is not known in what order these 50 contigs belong in the chromosome because there is insufficient overlapping sequence data to complete the assembly. Next-generation sequencing genome projects therefore often leave the data in contigs, rather than pursuing the added laboratory work to manually sequence more information to complete the assembly. These partially assembled genome sequences make it difficult, if not impossible, to assess chromosomal inversions, gene orientation across the chromosome, and other differences in the chromosome that rely on data being assembled into one contig. 

Likewise, duplications within the genome are a concern when attempting to assemble whole-genome data, even when looking at Sanger shotgun sequencing. Assembly relies on finding overlaps of identical stretches of sequence. If a region of the genome has been duplicated then there are two stretches of the genome that are identical to one another, or nearly so. When looking for similar reads, assembly systems will put these together, such that what is actually two copies in the genome looks as though it is only one copy. It should be that this one assembled region has twice as much sequence data as the rest of the genome, since it is in the DNA twice, so it is possible to spot duplications using data depth information, particularly if the region is large enough. Invariably, assemblies will therefore create one contig with the rRNA locus, although the sequence data has come from the two or more rRNA loci in the chromosome (Figure 11.7). To assemble across the rRNA loci, the duplication must be recognized in order to join the remaining other contigs to either side of the rRNA region. 

Because next-generation sequencing is rapid, simple, and inexpensive, and because limitations in next-generation sequencing create only partially 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ac8089063786ab08199c4bc784b468e2de9451ed92c74c4c6eb72ff354818935.jpg)



Figure 11.7 Incomplete assemblies and duplicated regions. A circular bacterial chromosome that has three identical rRNA loci will generate one contig representing all three regions, albeit with three times the coverage of the other contigs. The remainder of the genome can be assembled into three contigs, but no fewer, because the read length of the sequence data does not provide data across the whole of each rRNA locus. The genome could therefore be assembled in several different configurations, with the three non-rRNA contigs in different orientations and relative locations.


TAassembled bacterial genomes, there has been a shift in focus when it comes to analysis of sequence data. Rather than just sequencing one bacterial genome of interest, projects have undertaken to sequence hundreds of related genomes, with an aim to look at variations in the sequences of core genes and differences in the presence of accessory genes. Rather than sequencing one bacterial genome, as was typical in the mid-1990s and early-2000s, a decade later sequencing centers were pursuing projects with tens and sometimes hundreds of bacterial strains, all genome sequenced using the next-generation technologies. Next-generation genome sequences were often assembled to a point that reduced the number of contigs, but did not fully join together the bacterial genome. Nevertheless, valuable insight and information could be gained from these larger comparative genome projects. For newly identified species, draft genome sequences can be produced that may reveal some insight into the biology of the organism. Partially assembled next-generation sequencing data can be compared to an already assembled genome, making those bacterial genome sequences that are completely assembled a valuable resource. 

## Next-generation sequencing enables a massive expansion of comparative genomics

As mentioned earlier in the chapter, the first comparative genomics study investigated the differences and similarities between M. genitalium and M. pneumoniae. As comparative genomics progressed from two genome sequences to hundreds of genome sequences, it became clear that there is far more genetic diversity in the bacterial world than previously believed. Even strains of the same species that otherwise were typed as being identical were shown to contain variation at DNA level. While evolution was once believed to be a slow process relying on mutation of single bases, the bacterial genome sequences demonstrated that a great number of other factors than simple point mutations and SNPs are altering the genomes. These included the movement of mobile genetic elements like IS elements and transposons not only between different genomes, but also within genomes as well. Bacteriophage genomes integrated into bacterial chromosomes as prophages were excised, inserted in different locations, duplicated, and degraded through mutation to their associated CDSs. Large pathogenicity islands, horizontally transferred into some strains of a species, contributed to some of the major differences seen in genomic sequence data. 

## Next-generation sequencing and epidemiology

Bacteria of the same species, but which have different phenotypes and genotypes, can be differentiated from one another using various typing methods, which identify phenotypes such as the type of bacterial capsule. However, typing may not give a complete picture of the relationship between different isolates and therefore may give an inaccurate picture of the spread and epidemiology of the species. Methicillin-resistant Staphylococcus aureus (MRSA) isolates from around the world were genome sequenced, revealing relationships within and between lineages of the bacteria that were previously unknown. A global pattern of transmission of MRSA emerged, with isolates from different geographic locations having different genetic features and changes. This application of sequencing technology demonstrated the introduction of new isolates to new geographic areas, enabling targeted infection control measures and treatments to be put into place based on previous experience. 

## Bacterial genome-sequencing identification of the source of outbreaks

In 2010, a devastating earthquake hit Haiti and the international aid community responded by sending aid workers and supplies to the small island nation. In the aftermath of the earthquake, a cholera outbreak occurred. Haiti had not experienced cholera for nearly 100 years; therefore, the emergence of cases of cholera was a major concern. Bacterial genome sequencing provided an opportunity to identify the specific DNA features of the Vibrio cholera from Haiti and to potentially determine the origin of the outbreak. The sequence data, interestingly, did not show that the Haiti isolates were closely related to other Latin American cholera strains. Instead, there were several distinct sequence features in the genomic data that were most similar to Asian isolates. The location of the first outbreak cases, the location of UN aid workers, and the set-up of the sanitation in the area were also evaluated. This information, along with more targeted sequencing data, revealed that the V. cholera infecting earthquake survivors in Haiti had been brought from Nepal by UN aid workers from Nepal who had come in response to the environmental catastrophe. 

In the summer of 2011, thousands of cases of bloody diarrhea, hundreds of cases of hemolytic–uremic syndrome, and dozens of deaths were reported in Germany. Cases of similar disease were then reported around Europe. The E. coli isolated from patients was indistinguishable by standard typing methods from other E. coli that did not cause this severity of disease. To address the question of why these bacteria were causing an outbreak with so many fatalities, nextgeneration sequencing of the genome was conducted. This rapidly produced genomic data that were released for the scientific community to interrogate and crowdsource their analysis. In less than a week, the isolate was identified as an enteroaggregative E. coli that had acquired genes for Shiga toxin and antibiotic resistance. Using the genomic data, a molecular test was developed to identify the outbreak strain and provide the recommended treatment. 

In 2014, 3,000 genomes were sequenced from isolates of Streptococcus pneumoniae that were taken from a refugee camp in Thailand over a period of 4 years. This large study allowed unprecedented analysis of a large number of isolates coming from a common location, which showed how these pathogens had evolved over time. Changes to antigens present on the bacteria were seen over time, particularly several examples of switching events where recombination between bacteria switched the type or presence of capsule. Changes in antibiotic resistance in the isolates are also evident in the genomic data and were able to be mapped chronologically to the use of various antibiotics at the refugee camp. 

## Quick, easy sequencing means bacterial genomes can be given a second look

When bacterial genome sequencing began, it was the goal of sequencing projects to sequence new and unique samples, not to sequence the same samples again and again. Yet, as bacterial genome sequencing developed, it became evident that repeating some sequencing, resequencing, not only was practically possible, but also could uncover previously uninvestigated aspects of bacterial genomic biology. 

The creation of transposon libraries, as discussed in Chapter 10, can help identify the function of CDSs. A transposon library can be grown in the laboratory and then genome sequenced to reveal the areas of the genome where no transposons have been inserted. This resequencing of the genome, where the genome is sequenced again, highlights any sequence changes, in this case the presence of the inserted transposons around the chromosome. When two conditions are compared, such as growth of the bacteria in the laboratory and then in an animal model, it is possible to identify the regions of the genome disrupted by transposons that are required for growth in vivo. This method has become known as Tn-Seq, transposon sequencing, and has been used to identify essential genes and those needed in particular environments (Figure 11.8). 

Regions of the chromosome that interact with proteins can also be identified through resequencing in a process known as ChIP-Seq, where chromatin immunoprecipitation is done to reveal protein–DNA interaction and then the DNA regions are identified via sequencing. Proteins, such as regulatory proteins, interact with DNA and ChIP-Seq sequencing reveals where these interactions happen on the genome (Figure 11.9). The binding of DNA can be stabilized by cross-linking protein to DNA. Using an antibody that recognizes the protein, the fragment of DNA bound by the protein can be isolated and sequenced, identifying the protein binding site. Both Tn-Seq and ChIP-Seq use combined techniques to provide greater insight into bacterial genomics. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4f3cb636638d92826db4ea1587c8a84f3338439ae3db54cc76a178767461f6d5.jpg)



Figure 11.8 Tn-Seq can identify regions required in specific conditions, such as growth in vivo. A transposon library is made of the genome, which has previously been sequenced. The transposon library is subjected to the growth conditions, such as in vivo growth shown here. The bacteria that survive are genome sequenced by additional next-generation sequencing (NGS), resequencing the genome after the library has passed through in vivo conditions. Clones in the transposon library that have knocked out genes essential for growth in vivo will not be recovered and will not be present in the resequencing data (arrows).


Sequencing genomes that had already been sequenced previously can resolve sequencing errors in the original data and could also reveal mutations that had accumulated within the genome since the first genome sequencing. A new investigative method has been established, referred to as evolve and resequence, in which bacteria are experimentally evolved in vitro or in vivo and the genome sequences before and after can then be compared. The famous experiments by Richard Lenski, in which E. coli has been continuously cultured in a laboratory for three decades, are now being genome sequenced at regular intervals to reveal how the E. coli genome has changed over time. Samples taken from patients with persistent bacterial infections are being sequenced to show how the bacteria mutate and evolve within the host. This has identified key factors involved in longterm survival in vitro and in vivo. These genomic studies looking at long-term growth of E. coli and persistent chronic bacterial infections will be discussed in Chapter 15. 

## Bacterial genome sequencing can uncover bacteria never before studied

Plague is caused by the bacteria Yersinia pestis and has caused infectious outbreaks in humans since the Bronze Age. Using DNA extracted from archeological samples collected from grave sites known to be used for plague victims, the genome sequences of Y. pestis from the past have been determined and analyzed. These samples included those from victims of the Black Death plague in Europe who died between 1348 and 1350. This revealed how plague bacteria were transmitted from Asia and across Europe. This historical perspective that can be achieved using ancient DNA from pandemics would otherwise be impossible to investigate. This has been useful in understanding how plague might be controlled today in areas where Y. pestis infections remain a public health concern. The sequencing of historic plagues and outbreaks can also enhance our understanding of how new infectious diseases emerge. Uncovering the genomics of plague will be discussed further in Chapter 15. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/721734664cd0a57ba8e512d952e3d763d763407519588fe82bdb8a215c8de12c.jpg)



Figure 11.9 ChIP-Seq can identify protein binding sites in the genome. Proteins can be cross-linked to the DNA, preventing the protein from releasing the bound DNA. Fragmentation of the DNA and immunoprecipitation using an antibody against the protein separate out the bound DNA from the rest of the genome. Isolated fragments can be sequenced (next-generation sequencing, NGS) to reveal the protein binding sites.


Metagenomic sequencing has uncovered a wider array of bacterial species than were previously appreciated. The vast majority of bacteria on the planet cannot be cultured in the laboratory because the needed culture conditions and nutrient requirements are not known. Therefore, the identification of life on this planet is far from complete, although metagenomic sequencing is revealing more through sequencing of DNA from an environment all together, without separating species or culturing samples. One of the first attempts to sequence a mixed pool of environmentally collected DNA was in 2004. Samples of water from the Sargasso Sea were collected, and sequencing of the DNA contained within them found over a million new CDS sequences. These presumably have originated from never before cultured and identified bacterial species. 

Genome-sequencing data can be used on bacteria that we are unable to culture in the laboratory. Tropheryma whipplei could only be cultured in the laboratory in association with human cells in cell culture. No broth or agar media was known to be able to support growth of T. whipplei. When T. whipplei was genome sequenced, the data as to which metabolic pathways that the bacteria did and did not possess were used to engineer a medium that was shown to be capable of supporting growth, without the need for human cells. Culture-independent sequencing of DNA from samples has the potential to enable the identification of bacteria that cannot be grown in the lab, including identification of pathogens not previously known. Genome sequencing and analysis of metabolic pathways then make it possible to design new types of growth media, increasing the number of culturable bacteria. 

## Single-molecule sequencing is more sensitive and produces longer read lengths

Following on from experiments revealing the principles of genetics, the concept of genes and their place on DNA, and the structural determination of DNA, there came a desire to know the sequence of that DNA. This led to Sanger sequencing, which then led to the process being automated. When the desire to know the DNA sequence challenged the capacity of automated Sanger sequencing, highthroughput next-generation sequencing came about. The achievements you have read about in this chapter thus far have been made using these technologies. However, technology and the desire to generate more sequences did not stop there. The next challenges were to increase the sensitivity of the sequencing so that the need to amplify the DNA could be eliminated and to increase the read length. Both goals were achieved through single-molecule sequencing. 

In all genome-sequencing technologies that came before, the genomic DNA was amplified to ensure there was enough DNA and enough signal to be detected. In shotgun sequencing, the fragmented genome pieces are cloned into plasmids, enabling their amplification within E. coli. In next-generation technologies, the fragments of the genome that are generated are amplified in vitro on the surface used by the sequencing technology. Single-molecule sequencing overcame the need to boost the sequencing signal with amplification by scaling down the process to focus on determining the base sequence of one single strand of DNA. 

Two different technologies have emerged that are able to sequence a single molecule of DNA and as a result both produce much longer reads than previously achieved by Sanger sequencing or next-generation sequencing. The starting DNA material does not need to be heavily fragmented and the resulting data do not require as much assembly. 

TAFigure 11.10 Pacific Biosciences single-molecule sequencing. To achieve sufficien t fluorescence sequencing from a single molecule, this sequencing platform immobilizes the DNA polymerase used in the sequencing by synthesis reaction at the bottom of the sequencing well. Sensitive detection in this area of the well enables the circularized DNA to be sequenced. Circularization means that the same piece of DNA can be sequenced several times, thereby resolving sequencing errors by sequencing the same molecule several times. 

## Two single-molecule sequencing technologies have emerged, including physical reading of the DNA

The Pacific Biosciences single-molecule sequencing technology continues to use a sequencing-by-synthesis approach; however, unlike earlier technologies, this system immobilizes the DNA polymerase in a discrete location. The precise location where nucleotide incorporation and the resulting fluorescent signal is known, enabling the signal from one molecule of DNA to be detected (Figure 11.10). Single-stranded DNA (ssDNA) is threaded through the immobilized DNA polymerase, which is provided with labeled nucleotides for synthesis of the second strand. The area of anchored polymerase is monitored for incorporation of nucleotides and read as sequence (see Figure 11.10). The DNA fragment is circularized; therefore, the same fragment can be sequenced over and over again, to increase the accuracy of the sequencing data. 

Nanopore single-molecule sequencing technology does not use sequencing by synthesis. Instead, the sequence of bases in the DNA is physically read as the single-stranded molecule of DNA passes through a nanopore. A nanopore has a very small opening that is created so that it only allows through ssDNA. As the ssDNA passes through the nanopore, the characteristics of the DNA are monitored and in this way the sequence of the DNA is determined. Oxford Nanopore technology uses nanopores embedded in a membrane, through which the ssDNA passes and individual bases are detected. To slow the passage of the ssDNA through the nanopore, a motor protein sits on top, making resolution and detection of data achievable (Figure 11.11). 

Both single-molecule sequencing technologies have lower accuracy than previous methods. This means that there is a higher likelihood that single-molecule technologies will incorrectly identify a base than if Sanger or next-generation sequencing is used. These inaccuracies can be overcome by resequencing the single molecule of DNA and getting a consensus identification of each base. However, this adds to the time involved. The trade-off for the loss of accuracy is the generation of much longer sequences that are 10–100 times longer than nextgeneration sequencing. Single-molecule sequencing technologies are therefore especially useful to use as a scaffold against which to assemble more accurate next-generation sequencing data. The scaffold is a rough sequence known to have errors, but against which more robust sequencing data can be assembled into the correct order and then the original genome can be configured. 

## Key points

Bacterial genome sequencing became possible with advances in the Sanger sequencing-by-synthesis method that automated the process. 

Comparisons between sequence data identify differences at the DNA level that may influence the biology of the organism. 

Knowledge gained from the first bacterial genome sequences was motivational in the development of improved technologies and methods for rapid, inexpensive, accurate genome sequencing. 

Analysis of bacterial genome sequences can reveal information that can inform the development of vaccines and diagnostic tests and can be used in epidemiology. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/547fdad1b3cda911fe0e53dbc91aa4fc65afcafb0dee3a4191eefd04ae8956d4.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/573de15ae070f4031d27812446d81d1edd251e6b20523bc1a73be5f082e31dc5.jpg)



Figure 11.11 Nanopore singlemolecule sequencing. This sequencing platform uses physical detection of the bases of the DNA as the ssDNA passes through the nanopore, slowed in its passage by a motor protein.


Genome sequence data are generated as fragments that must be pieced back together and assembled into the order of the original chromosome. 

Rapid, inexpensive genome sequencing has resulted in an abundance of sequencing data, including repeated sequencing of the same bacterial species. 

Resequencing of the same strain can reveal information about bacterial evolution and mutation and can be coupled with other techniques to reveal functional information. 

Metagenomic sequencing can be used to obtain information on bacterial presence in environmental and biological niches by sequencing all DNA from a sample area. 

Single-molecule sequencing is able to generate DNA sequence data without amplifi cation. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Automated Sanger sequencing</td><td>Metagenomic sequencing</td><td>Reverse vaccinology</td></tr><tr><td>ChIP-Seq</td><td>Nanopore</td><td>Scaffold</td></tr><tr><td>Comparative genomics</td><td>Next-generation sequencing</td><td>Sequencing by synthesis</td></tr><tr><td>Contig</td><td>Read length</td><td>Sequencing platform</td></tr><tr><td>Data depth</td><td>Regions of difference</td><td>Shotgun sequencing</td></tr><tr><td>Evolve and resequence</td><td>Resequencing</td><td>Tn-Seq</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 What improvements have been made in Sanger sequencing since the technique was first established that have improved safety and ease of use for researchers? 

2	 What was the strategy that meant that although the E. coli genome-sequencing project was begun first, it was not the first bacterial genome sequence completed? What is the basic approach to this strategy? 

3	 What is comparative genomics and what can it reveal about the genome sequences that are being compared? 

4	 In next-generation sequencing, what is meant by the read length and how does this differ between sequencing platforms? Does data depth also differ? 

5	 How might read length and data depth impact upon the analysis of genome-sequencing data? 

6	 What kind of sequences can complicate assembly of genome sequence data and why? 

7	 How has the availability of next-generation sequencing caused a shift in the way genome sequence data are being used and the choice of bacteria to be sequenced? 

8	 Although genome sequencing is now inexpensive, it seems counterproductive to sequence the same bacterial strain again. What could justify resequencing a genome that has already been sequenced once? 

9	 What is the difference between genome sequencing and metagenomic sequencing? What might be learned from a metagenome? 

10	 Two different kinds of single-molecule sequencing have emerged. What is the main advantage of these methods over other sequencing technologies? 

11	 Of the sequencing methods described in this chapter, which do not use sequencing by synthesis? How do they work instead? 

12	 What is the difference between a contig and a scaffold? How are each formed? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

1 Describe how next-generation sequencing platforms such as 454, Illumina, and Ion Torrent built upon and developed what had previously been done by Sanger sequencing methods. Discuss common features between these next-generation sequencing technologies and also common features shared with Sanger sequencing. How do these relate to biological systems and processes? 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

2 Explore the ways in which next-generation sequencing has been used recently in bacterial epidemiology, either on a global scale or locally within a community or hospital. Assess the increased resolution possible using genomic data to demonstrate relationships between isolates and form timelines and theories of transmission events. 

3 Explore the ways in which next-generation sequencing has been used recently in bacterial epidemiology, either on a global scale or locally within a community or hospital. Assess the increased resolution possible using genomic data to demonstrate relationships between isolates and form timelines and theories of transmission events. 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/9cbe89136f84ea82ae62d2b2a5aaa96344245c6c243c5a23c8cade596b23b0eb.jpg)


## Further reading

## The first genome sequence of a free-living organism was bacterial



Fleischmann RD, Adams MD, White O, Clayton RA, Kirkness EF, Kerlavage AR. Whole-genome random sequencing and assembly of Haemophilus influenzae Rd. Science. 1995; 269(5223): 496–512. 





Loman NJ, Pallen MJ. Twenty years of bacterial genome sequencing. Nat Rev Microbiol. 2015; 13: 787–794. 



## Early genome sequencing of bacteria provided opportunities for new insight and innovation



Himmelreich R, Plagens H, Hilbert H, Reiner B, Hermann R. Comparative analysis of the genomes of the bacteria Mycoplasma pneumoniae and Mycoplasma genitalium. Nucleic Acids Res. 1997; 25(4): 701–712. 



## Next-generation sequencing and epidemiology



Harris SR, Feil EJ, Holden MTG, Quail MA, Nickerson EK, Chantratita N. Evolution of MRSA during hospital transmission and intercontinental spread. Science. 2010; 327(5964): 469–474. 





Żukowska L, Zygała-Pytlos D, Struś K, Zabost A, Kozińska M, Augustynowicz-Kopeć E, Dziadek J, Minias A. An overview of tuberculosis outbreaks reported in the years 2011–2020. BMC Infect Dis. 2023; 23(1): 253. 



## Quick, easy sequencing means bacterial genomes can be given a second look



Card KJ, Thomas MD, Graves JL Jr, Barrick JE, Lenski RE. Genomic evolution of antibiotic resistance is contingent on genetic background following a long- term experiment with Escherichia coli. Proc Natl Acad Sci USA. 2021; 118(5): e2016886118. 





Churchward CP, Calder A, Snyder LAS. Mutations in Neisseria gonorrhoeae grown in sub-lethal concentrations of monocaprin do not confer resistance. PLoS ONE. 2018; 13(4): e0195453. 





Good BH, McDonald MJ, Barrick JE, Lenski RE, Desai MM. The dynamics of molecular evolution over 60,000 generations. Nature. 2017; 551(7678): 45–50. 



## Bacterial genome sequencing can uncover bacteria never before studied



Feres M, Retamal-Valdes B, Gonçalves C, Cristina Figueiredo L, Teles F. Did Omics change periodontal therapy? Periodontol 2000. 2021; 85(1): 182–209. 





Quince C, Walker AW, Simpson JT, Loman NJ, Segata N. Shotgun metagenomics, from sampling to analysis. Nat Biotechnol. 2017; 35(9): 833–844. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3cf6f35a22f3366b8430e08ce87ffb614e2fb5b14c52678cf806ea887ed41130.jpg)


# Bioinformatics

Chapter 

## 12

Bioinformatics is a complex, multidisciplinary fi eld that focuses on the analysis and interpretation of biological data. In the context of bacterial genetics and genomics, bioinformatics refers to the investigation of nucleic acid sequence data and amino acid sequence data. Bioinformatics brings together computer science, mathematics, statistics, engineering, physics, chemistry, and biology. Primarily, bioinformatics is computer-based; however, the investigations pursued on the computer can then be brought into the laboratory for verification or further experimentation. In this chapter, the power of bioinformatics in interpreting bacterial data will be explored, including examples of how bioinformatics can be applied to various research questions. 

## A lot can be learned from looking at strings of A’s, T’s, G’s, and C’s

At its most basic, a bacterial genome sequence is a few thousand to a few million adenines (A’s), thymines (T’s), guanines (G’s), and cytosines (C’s). Taken as one continuous sequence, these four letters represent the chemical make-up and order of molecules present in the genomic DNA. Hidden in the nucleic acid order are all of the genes that encode the bacterial proteins, all of the sequences involved in regulation of expression of those proteins, and the sequences of all RNA molecules present within the bacterial cell. Using bioinformatics, the locations of the features within the genome can be revealed. 

There are no markers that set out definitively where genes occur in the genome based on the DNA sequence of A’s, T’s, G’s, and C’s alone. To find the genes among the bases, bioinformatics makes a best guess at gene location. These guesses are based on laboratory evidence regarding features such as the nucleic acid sequence of the initiation codons (ATG, GTG, TTG) and the termination codons (TGA, TAG, TAA); however, these sequences can be present in the genome without being initiation or termination codons. In addition, laboratory experiments have revealed the consensus sequences of promoter regions, particularly those recognized by common sigma factors. This can help bioinformaticians, those who do bioinformatics, in predicting the locations of promoters and matching them up to predicted locations of genes. These predictions can be further strengthened by identifying the potential ribosome binding sites between the predicted promoter and the predicted CDS (Figure 12.1). 

The DNA binding sites of some regulatory proteins have been determined in the laboratory, which can also be fed into bioinformatics analysis to predict possible binding site locations. This may reveal which CDSs are involved in the regulon controlled by the transcriptional regulatory protein. The various CDSs that are co-regulated by the same regulatory protein can give insight into the functions they conduct together or the conditions under which expression is beneficial. Research into RNAs within the bacterial cell has also enabled bioinformatics predictions of the locations of the ribosomal RNAs, the transfer RNAs, and the non-coding RNAs in the genomic sequence data. 


Figure 12.1 Bioinformatics can predict potential genes and their associated sequences. Using information on initiation and termination codons, it is possible to predict the location of potential genes, as CDSs. Starting with just the DNA sequence data (top), potential initiation and termination codons can be identified. From this a predicted CDS is identified (second from top). Additional support for the predicted CDS comes from identification of a predicted promoter sequence (third from top) and from a predicted ribosome binding site (RBS; bottom).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e0c8f19c7a86dc67781637c4051bd0a21c70584a1bee95e87f30e11e9df3678b.jpg)


## Bioinformatics is essential for interpreting sequence data

Once sequence data are created, the goal is to interpret the data and make them available in public databases in a format that is accessible to other researchers so that the biological meaning of the sequence data can be understood in the context of the bacterial organism. To achieve this, bioinformatics is essential. The output of sequencing methods must first be processed before the search for genes and RNAs can occur. The raw sequencing data are the results of the experimental method for determining the order of nucleotides in a molecule of DNA. All sequencing methods are prone to errors and are less robust in their assessment of the sequence of the DNA as the read length (see Chapter 11) approaches the limits of the technology. There are also instances where a particular sequencing reaction will fail and not produce good quality data. Therefore, a first step for analysis of sequence data is to address the quality of the data and to trim the data down to sequence information that is believed to be correct. If bad data are left in the sequence, this may result in bad predictions later on down the line of investigation; therefore, it is important that the trimming and assessment of data quality is done well (Figure 12.2). 

There are cases where the sequence of interest is shorter than the length limit of the technology and the sequence can be determined with one sequencing reaction. In these cases, generally an automated Sanger approach is taken, and, to increase the robustness of the sequence data achieved, two sequencing reactions will be used, one for each strand to sequence each strand of the DNA. This provides a check of each base determination using two different sequencing reactions that are sequencing the reverse complement sequence of one another 


Figure 12.2 Raw sequencing data need to be trimmed. Raw sequencing data contain errors due to the limits of the sequencing technology and the chance that some sequencing reactions do not work well. The quality of the interpretations made later depends on the quality of the data; therefore, poorquality sequences are removed before the sequencing data are analyzed. The top read (a) has a poor-quality sequence at the end; therefore, it is trimmed, removing the poor-quality sequence and producing a trimmed read that is included in later analyses. The bottom read (b) is poor quality throughout; therefore, the whole read is deleted and not included in further analyses.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/185bf73da02804d1760949e22b31a268887ee1a532dba5566f220b4dde76bc02.jpg)


TAFigure 12.3 Double-strand sequencing for small areas of interest increases accuracy. 

For a small region of interest that can be sequenced within the length limits of the sequencing methodology, it is possible to collect the needed sequence data with a single reaction. However, sequencing the DNA in both directions (sequencing reaction 1 and sequencing reaction 2) to sequence each of the strands of DNA will produce more robust sequence data (double-stranded data), having used two reactions that run in opposite directions to one another. 

(Figure 12.3), being the sequence on the opposite strand where it is both in reverse and the complementary bases. In these cases, after trimming, a quick comparison of the two sequences and resolution of any differences between them is all that is needed. 

For most sequencing efforts, more than one sequencing reaction, or doublestranded sequencing, is needed to achieve the identification of all of the bases of the relevant DNA. This may be because the region of interest for Sanger sequencing is longer than the read length that can be achieved. It may also be that the goal is the generation of a complete genome sequence. Either way, some assembly of the nucleic acid sequence data fragments into longer pieces of sequence is required. This will involve sequencing data that overlap with other sequencing data from the same sample, such that the overlaps can build upon each other and increase the length of known sequence information (Figure 12.4). The resulting assembled sequence information is a contig. 

## Annotation predicts features in sequence data and notes their locations

An annotation is the labeling of features. Annotations are used in books, computer programs, and sequence data. In the context of DNA, the annotation describes the sequence, usually including the bacterial species and strain, as well as information as to the nature of the sequence, be it a short segment, plasmid, or a whole genome. An annotation will include the base numbers of particular features in the sequence. Some features, like CDSs, will be specific to one strand of the DNA, information that is also included in the annotation. The names of identified genes and RNAs and notations as to the attributes of the features in the sequence data will be annotated. These can include the amino acid sequence of the predicted protein product of a CDS, the predictions of subcellular locations of potential proteins, and other key pieces of information of relevance to the features within the sequence. Annotation is not just for genomes. Short segments of DNA and plasmids are also annotated to point out the features in the DNA or those believed to be in the DNA based on analysis (Figure 12.5). 

A bacterial sequence annotation seeks to provide information on the CDSs and genetic features in the DNA. CDS annotations will include both genes with experimentally defined functions and sequences that look like they may be genes. Annotation of a feature such as a CDS can be as simple as noting its position within a stretch of DNA, but can also provide more information. The predicted protein sequence is often provided for CDSs and is based on the DNA sequence using a codon table to generate the amino acid sequence. If the sequence data suggest that there may be a signal peptide as part of a protein, then this can be noted in the annotation. The predicted amino acid sequence enables prediction of the molecular weight, isoelectric point, cellular location, and domains within the encoded protein. For CDSs that are known genes with experimentally derived functions, then the gene name can and should be included in the annotation. If the function or predicted function is enzymatic, an enzyme classification number can be included in the annotation. This is a numerical identifier for an enzyme based on its activity, identified as being similar in function regardless of feature names or sequence similarity. Annotations should include reference to experimental work, particularly where a feature is a gene with functions described in the literature. Some annotations also include GO (gene ontology) function, a set of terms for describing gene products, and COG (clusters of orthologous groups) designation, 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ea4a798ee16f27fa8f70c7f18b3df05a91a749947dcdfe55abe696fc92ed9f16.jpg)



Figure 12.4 Assembly of sequence data relies on overlaps in the sequence nformation from each reaction. Eachi ndividual sequencing reaction generatesi string of bases that are known to followa ne after the other, regardless of whethero hey are on the forward or reverse strand.t owever, these may not cover the wholeH f the sequence desired. Therefore,o everal overlapping sequencing reactionss re needed. These generate data wherea he overlaps allow assembly of the datat nto longer stretches of sequence. Oncei ssembled, the contiguous sequencesa rom different sequencing reactions aref eferred to as contigs. r


## Sequencing length 329

5–319 coding sequence 

5–319 gene expL (an example gene) 

5–319 amino acid sequence MRGLKNRG• • • 

Figure 12.5 Gene annotation. This annotation is for an example DNA sequence of 329 bases, where the coding sequence starts at the fifth base and ends at base 319. This is a known gene, expL, with a predicted amino acid sequence (truncated here). 

a database of similar protein sequences and their assigned functions. If the CDS described is a paralogue or orthologue of other annotated CDSs, this information may be valuable to include. It is possible that the sequence data may include pseudogenes, which are partial CDSs or those with internal stop codons. Like CDSs, these partial features can be included in the annotation and may be useful when comparing sequences. 

Features in addition to CDSs can and should be included in an annotation. The identification of tRNAs and rRNAs is the most straightforward. Due to the conserved nature of these RNA sequences, the annotation of these features is quite robust. IS elements, transposons, and prophages are mobile genetic elements to include in annotations. Some of these are conserved between strains and species; therefore, the sequence similarities make them quite easy to identify and annotate. The sequences that include ncRNAs can be harder to annotate. Prediction programs for these may over-predict or under-predict the number and locations of ncRNAs in bacterial genome sequence data. The addition of experimental data on RNA expression, such as RNA-Seq, can enhance the annotation of ncRNAs and the source of such experimental data should be included in the annotation. Other sequence features within sequence data that can be included in annotations include repeats and the origin of replication. 

## The process of creating an annotation starts with the DNA sequence data

Annotation starts with the sequence information, generally as a FASTA format file. These data will be from the assembly of the sequence information into contigs. FASTA formatting of these data is common and is a generally accepted input for most sequence analysis tools. Information about the identity of the sequence is set out in the first line of the text in the FASTA file, set apart from the sequence information with a “>” symbol. This “>” is followed by some free text that should describe the data. This line ends with a hard return followed by the sequence data. The sequence data are generally just the A’s, T’s, G’s, and C’s; however, there can be ambiguous bases in the sequence data, such as Ns for any nucleotide, if there are issues in the data (Figure 12.6). 

Sequence data can be written as plain text, and in many respects the FASTA file format is similar to plain text, but the first line contains important information about the sequence. This tends to be general information, such as the bacterial genus, species, and strain and perhaps some identifying features. In genomesequencing projects, the FASTA files have information in the header that includes the number of the contig. Several contigs can be together in one file, which is sometimes referred to as a multi-FASTA format file. In these files, there is more than one “>” symbol, with each one differentiating the separate contigs containing sequence information (Figure 12.7). 

>Example FASTA format sequence 

ATTGGCCACGCTAATGCCCGTGTGGATTGCCATC 

Figure 12.6 FASTA file format. In the first line of a FASTA file format, the “>” symbol is followed by a line of text that describes the sequence. In the second line, the sequencing data start and continue on until the end of the sequence. 

>Example multi-FASTA format sequence 1 

ATTGGCCACGCTAATGCCCGTGTGGATTGCCATC 

>Example multi-FASTA format sequence 2 

TCGGGAACTGTACG 

>Example multi-FASTA format sequence 3 

GCGGATGCGAAGGATGCCCACTGTTGACCGTTATTAAA 

Figure 12.7 Multi-FASTA file format. Multi-FASTA is similar to the FASTA file format; however, there are multiple pieces of separate sequence information. Each sequence has a first line that starts with the “>” symbol and a description of the sequence, followed by the sequence in the next line. The end of one sequence is indicated by a hard return and a new line beginning with the $ { \mathbf { \ " } } >  { \mathbf { \ " } }$ symbol. Multi-FASTA files can contain any number of separate sequences. 

TANothing in the FASTA format points out the features within the DNA sequence. Although the header line may mention a key gene or genes within the sequence, it is not common for these to specify the base positions of genes, CDSs, or other genetic features. This is where annotation is needed and other formats of sequence data files are used. 

## Multiple lines of investigation into the sequence data features support the annotation

Adding either predicted or experimentally determined ribosome binding sites and transcriptional terminator locations can enhance CDS annotations, particularly for CDSs based solely on sequence-based predictions. It might be assumed when there are multiple potential initiation codons that the first should be selected, indicating the largest possible coding sequence, but this may not necessarily be the best choice. Identification of a ribosome binding site and transcriptional terminator around a potential coding sequence will better define the CDS location than just using the potential initiation and termination codons (Figure 12.8). 

The inclusion of evidence tags in an annotation can provide an important trail back to the data used to formulate the final annotation. Evidence tags give researchers using the annotation the background that the annotators used to assign the particular locations, function, and other information in the annotation to a region of nucleic acid sequence. The basis of the decisions made when writing an annotation is not always clear, but can be included within the annotation itself. Experimental data can be cited. Tools that contributed to predictions can be cited. Empowered with this information, end users can use the evidence behind the annotation to decide for themselves if it is reliable (Figure 12.9). 

## Annotations tend to start with potential genes

The first step in the annotation of sequence data tends to be the identification of potential genes as CDSs. This makes use of the relatively easy identification of termination codons in each of the six potential reading frames, defining the ORFs, and then the identification of an initiation codon close to the start of each ORF, defining the CDS. Finding CDSs in this way can generate false positives, with sequences that look like CDSs but are not. Generally, these are short, being less than 100 bases. There could be a wrong start codon predicted, creating a false prediction of a CDS. In addition, evolution can create gene fragments, where what was a gene has been altered by frameshifts or in-frame termination codons to create a pseudogene. At its most basic, to submit a sequence to a public database where the data are accessible to other researchers, it must have the locations of CDSs annotated. Sequence data that support a journal article must be submitted to a public database; therefore, the sequence must have at least the most basic of annotations. Other features, including the predicted functions of the CDS, are not required, but are often added. 

It is preferable for an annotation to indicate the function or potential function of the identified CDSs. To achieve this, the nucleic acid and predicted amino acid sequence of each CDS is compared to sequence databases to identify homology. If there is a hit, where the CDS sequence is similar to one or more sequences in 

TGCCGTTACTTGATGGGTTTAAGGAGGTGAATG AGGAGG 

Figure 12.8 Adding other features helps in determining CDS annotation. This sequence contains two potential initiation codons, underlined. Adding in the ribosome binding site, highlighted in yellow, it becomes clear that the second initiation codon is a better choice for the start of the coding sequence, since the ribosome binding site must come before the initiation codon. 

TGCCGTTAGGAGGTTGATGGTGTTTAAGGTGCGTGTTTAAGGTGCAT 

Figure 12.9 An annotation with an evidence tag to justify a GTG start. In a sequence with two potential initiation codons, underlined, the inclusion of experimental evidence can clarify the choice. Here the region revealed through N-terminal protein sequencing, highlighted in yellow, supports annotation of the GTG annotation codon over the more standard ATG codon. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/bcef085fdd147e59279f5ee8648f09711f498803b61aaad8bfb3326cf76759ec.jpg)



Figure 12.10 Protein domains. This integral membrane protein has three transmembrane α helices. Structurally, the α helices form in the protein and generate the transmembrane parts of the protein. These domains can be identified in the gene sequence and could help identify a CDS with an otherwise unknown function as a membrane protein.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/82d7c872552d7ecf9f54562a4f4b445097d0139b93bdd1393aabad4fd71be47a.jpg)



Figure 12.11 Domains within hypothetical proteins can improve annotations. A coding sequence translated into the predicted amino acid sequence and searched for protein domains reveals that there is similarity to DNA binding domains in a portion of the predicted protein, shaded blue. The coding sequence can be annotated as encoding a potential DNA binding protein.


the databases, this homology is used in the annotation. Homology can reveal the identity of a known gene in the bacterial species, providing a wealth of annotation information. Homology searches may identify an orthologue in another bacterial species, a specific term for homologues of a common origin found in different species. The presence of orthologues suggests that the CDS is conserved between the two species and therefore may share a conserved function. Paralogues may also be identified, which are homologues contained within the same genome. These are likely the result of gene duplication events and each paralogous CDS may have the same function or may have diverged in its function. Likewise, there may be no homology with other sequences in the databases, or the homologues are of unknown function. This results in annotation of the CDS as a hypothetical gene encoding a hypothetical protein, which is either unique to the sequence being investigated or conserved among bacteria. 

## Homology and conserved protein domains can help identify the potential function of a CDS

DNA sequence homology between a CDS and a gene of known function is not as good as direct experimentation upon the CDS, but can give an indication of the potential function of the gene. This use of homology is relied upon extensively when annotating bacterial genome sequence data because demonstrating gene function in the laboratory for every potential gene is laborious and time consuming. Because CDS annotations rely upon a varying degree of sequence homology, it is possible that the annotated function is incorrect, but it is a starting point for further investigations. There are, however, a number of CDSs that do not correspond to gene sequences of known function. These either have no homology to other sequences or only have homology to other CDSs that have no known function. These are often annotated as encoding hypothetical proteins; the CDS sequence looks like it could be a gene, but there is no supporting experimental evidence. If hypothetical proteins have homologues in several different species, they can be referred to as conserved hypothetical proteins. 

The functional units of proteins are domains, which have independently folding tertiary structures. Each domain has a distinct structure and function and most proteins have one or several domains (Figure 12.10). With the rise of DNA sequencing, protein domains are now often identified based on sequence data and not protein structure. Unlike structure-based identification of domains, which relies on the similarity of three-dimensional structures, sequence-based identification of domains can be automated due to the nature of the data. The identification of conserved domains within coding regions can help identify potential functions of a CDS, even when homology using the whole protein sequence cannot. The protein domain sequence is based on homology between protein fragments, rather than the whole protein. For example, a transmembrane domain suggests that a CDS is a membrane protein. The α helix or β barrel part of the protein identified in the sequence data suggests that the CDS has a transmembrane domain and is potentially encoding a membrane protein. 

When it comes to annotation, a predicted gene sequence might have an unknown function, but might carry a domain that is known to bind to DNA or be involved in transmembrane transport. The presence of a domain within a CDS can therefore aid in the annotation of the CDS, even when the whole of the CDS does not have an overall homology to other sequences. A CDS that might otherwise have been annotated as a hypothetical protein could be annotated as a DNA binding protein or transport protein, based on the domains identified (Figure 12.11). 

About 20% of protein domains are identified as domains of unknown function. There are about 2,700 domains of unknown function in bacteria. These are identified as parts of predicted proteins that are common between predicted proteins of different species, but for which a function has not been identified. Some domains of unknown function are not only conserved, but also essential, being in CDSs identified as essential via techniques such as signature-tagged mutagenesis (see Chapter 10). When a protein structure for a hypothetical protein 

TAis determined, this may show that identified domains of unknown function are actually divergent versions of known domains. It is possible for proteins to be very different at the DNA and protein sequence levels but are very similar structurally. 

## Automated annotations rapidly produce an annotation that needs manual curation

Many annotations, particularly those associated with large-scale bacterial genome sequencing projects, are generated through automated processes with little or no manual curation of the resulting annotation. This is, in part, due to the requirement for a basic annotation to submit sequences to the databases, which is required for publication and dissemination of research findings. In addition, a preliminary annotation can help researchers on the large-scale project to achieve their analytical aims. 

Any sequence annotation can have errors and all annotations should be looked at with a critical eye, whether generated through an automated system or months of meticulous manual annotation. Most automated annotation systems combine a variety of computational programs to find the different features that can be present in DNA. Some use more than one program to find the same features and then select the best, based on agreement between the predictions made. However, it is always best to manually curate an annotation to achieve the best results because there can be more than one ATG, GTG, and/or TTG toward the beginning of an ORF, because annotations in databases used can be incorrect, and because evidence trails supporting choices made during other annotations are not always recorded, which can all result in incorrect annotations. 

The automated annotation of the tRNA and rRNA loci is often robust due to the conserved nature of these RNAs. The predictions for these features can be relied upon and form a solid set of data with regard to the number of copies of the rRNA loci and the types of amino acids and codons used by the bacterial strain being assessed. 

## Some features in sequence data and annotation data can confuse new annotations

An annotation relies on the rules for a CDS being followed, but as biological organisms, bacteria do not always follow the rules. For instance, what was one gene can be split into two genes through mutation (Figure 12.12). This is, essentially, one gene with an internal termination codon that then looks like two genes from the sequencing data and, following the mutation, may actually be functional as two separate genes. Alternatively, the two fragments may now be non-functional. 

Mutation can also fuse what was two genes into one. In this case, there are two genes that lose the termination codon between them and then become one gene, which again may or may not be functional (Figure 12.13). Some such genes encode two functional domains and bacteria are able to switch between them being either in one gene and therefore both domains in one protein or two genes and therefore one domain for each of the two proteins. Using only the sequencing data, it can be difficult to identify such switching because the sequencing process captures the DNA at one specific time point. Dynamic changes to the genome can be revealed through comparative sequence analysis and laboratory experimentation. 

What is perceived as a mutation that has turned one gene into two or two genes into one could actually be an error in the sequencing data. However, even if potential sequencing errors that could generate such a situation are eliminated, the annotation in these situations can be tricky. Either of the annotations, as one gene or two, may be correct or both could be if the species switches between one gene and two genes. In such situations, a detailed annotation of the potentials is warranted. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2727c2a83cba3d421ae4f3d976aa25a2d9da73fbc34239193001124b11d9f82d.jpg)



Figure 12.12 One gene becomes two. The introduction of a termination codon within a gene can sometimes result in the sequence forming two genes. One gene runs from the original initiation codon to the new termination codon (stop with *). The second gene uses an ATG, GTG, or TTG initiation codon that was otherwise within the original gene and ends with the original termination codon. The two genes generated will be in-frame with each other.



Figure 12.13 Two genes become one. The loss of a termination codon from a gene can sometimes result in the sequence of two genes forming one gene. The single gene that is formed uses the initiation codon from the original first gene and the termination codon from the original second gene. The initiation codon of the second gene becomes a standard codon within the single gene. The two original genes must be in-frame with one another to generate one gene via the loss of the termination codon between them (stop with *).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/6b8d82db9567c75eee28106ac171bbc8f8ca3f94c732c2c1eb492c1f5cc6e291.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c8a87651ffa31d69ce7ce1aecc3337195d533eef1c5a040c58512f7d3ce80836.jpg)



Figure 12.14 Selenocysteine and pyrrolysine codons and sequence annotation. A coding sequence (top line) containing a selenocysteine codon (U) and a pyrrolysine codon (O) could easily be annotated incorrectly. Identification of initiation codons and termination codons to define the coding sequences in the region incorrectly identifies two coding sequences, both much shorter than the original and neither containing the amino acids selenocysteine or pyrrolysine. The first uses the correct initiation codon, but takes the selenocysteine codon as a termination codon. The second uses an internal methionine codon (M) as an initiation codon and takes the pyrrolysine codon as a termination codon. Neither uses the true termination codon, which is after the pyrrolysine codon.


As discussed in Chapter 7, there are genes that make use of the SECIS and PYLIS sequences to change a termination codon into a selenocysteine or pyrrolysine, respectively. Annotations often overlook these due to the nature of the progression of the annotation, which starts with ORF definition. Since the selenocysteine and pyrrolysine codons are stop codons, altered to encode these amino acids via the SECIS and PYLIS sequences, the ORF will be incorrectly defined at the start of the annotation process (Figure 12.14). 

## Naming genes is not straightforward, with some genes having more than one name

During the course of research into the functions of genes, it has been very easy for those that are orthologues to end up with different gene names in different species or even different gene names to be used by different laboratories to refer to genes in the same species. In some annotations, gene names are absent and only functional data for CDSs are included; however, others attempt to place gene names with sequences where possible. This can be problematic when there is more than one name for the gene. In a good annotation, where a gene is known in the literature by more than one name, the synonym will be listed in the annotation. 

Complicating annotation of gene names are instances of the same name being used for different genes that have different functions. During the course of research, a research project will name a gene being investigated and use that name in reporting their findings in the literature. It may be that this name is already in use in this species or that the name is used in another species. When the whole of the genome is assessed for homologues and annotated, CDSs are assigned the same name using information from different sources, which can result in genomes having more than one gene with the same gene name. 

## Annotation errors, including spelling mistakes, can spread from one annotation to many others

Annotations rely on data from other annotations in the databases. Homology searches identify similar sequences in other annotated data and these other annotations contribute to new annotations. The result is that each annotation has the potential to be propagated across many other bacterial sequences. Errors in one annotation can expand to be errors in many, with the incorrect information spreading. This is most obvious in the propagation of spelling errors within annotations. While it may seem trivial to worry about spelling errors when some annotations are simply wrong in their identification of sequences and 

TAtheir function, spelling errors present a problem for analysis. For example, if the function of a CDS is not spelled correctly, this makes simple text searches for genes of that particular function impossible. It is possible for internet search engines to identify potential spelling errors and suggest to the user that they have misspelled something. Incorporation of such programming into the tools used in genetics and genomics would be useful for the identification of annotation spelling errors. 

## Gene locus identifiers are handy for labeling features in annotations, but reveal nothing about function

The original annotation of Escherichia coli strain K-12 assigned gene names to all of the annotated CDSs. Genes of known function with previously assigned names were annotated as such, but those that were not previously named were given names starting with y. This system was used in the early days of bacterial genomics to identify features and relative locations in the genome. These y gene names, however, tell us nothing about the functions of the CDSs. 

CDS identifiers used in genome annotations are not strictly gene names. Gene names are based on the function of a gene and should not be applied to CDSs. Therefore, the y names should not be used in any annotation outside E. coli strain K-12. In such an instance where homology with one of these CDSs is noted, it is acceptable for the annotation to note the homology, but the y name should not be used as a gene name in other annotations. In E. coli, when a function is identified experimentally, the y gene designation should be replaced with a name related to the gene’s function. 

Later annotations of bacterial genomes used locus identification numbers. These are combinations of letters, to specify the bacterial genome, and numbers, to indicate the relative location on the chromosome. Locus identification numbers are simply markers for CDSs and unambiguously refer to a single feature in the genome (Figure 12.15). In most annotations, features will have both the locus IDs and the gene names, where applicable. As with the E. coli y names, the locus identification numbers should not be transferred across to another annotation’s gene name. The identifiers from other genome sequence annotations can go into the notes in an annotation to indicate homology. 

During the course of annotation, identified CDSs are numbered sequentially along with a specific tag to identify the genome sequence itself (see Figure 12.15). These locus identification numbers are not gene names, but can clearly identify a particular CDS from a particular genome sequence. 

## There are three major public databases for sequence data

Sequence data, either nucleic acid or amino acid, are available via public databases. Sequences that are published in the research literature are required to be deposited into one of these databases so that they are freely available to other researchers. There are three major public databases for sequence data, which together form the International Nucleotide Sequence Database Collaboration: the National Center for Biotechnology Information (NCBI) GenBank; the European Bioinformatics Institute European Nucleotide Archive (EBI ENA); and the DNA 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f06c24a13b62dbf7c189d01b1dbc79037cde91128a3ee5cea4360ebbd1f81dfa.jpg)



Figure 12.15 Locus identification numbers indicate relative locations of annotated CDSs. Annotation assigns a locus identification number to each identified coding sequence in numerical order along the sequence. To these locus identification numbers, additional annotation information can be added, such as gene names or identification as encoding a hypothetical protein (hypo). The locus identification numbers allow the sequence to be unambiguously referred to, whereas there may be multiple sequences annotated as abcB in the databases.



GenBank


<table><tr><td>LOCUS</td><td>CN000776</td><td>1623845 bp DNA circular CON 12-MAR-2015</td><td>FEATURES</td><td>Location/Qualifiers</td><td>ORIGIN</td><td></td></tr><tr><td rowspan="2">DEFINITION</td><td colspan="2">Helicobacter canadensis HIT 98-5491 chromosome, whole genome shotgun sequence.</td><td rowspan="5">source</td><td>1..1623845/organism=&quot;Helicobacter canadensis HIT 98-5491&quot;/mol_type=&quot;genomic DNA&quot;/strain=&quot;HIT 98-5491&quot;</td><td>1 ttgcatcctgtttattaca actcaaaaga gaaatcacac citttgaatt tgacaattat</td><td></td></tr><tr><td colspan="2">CN000776 ACSF01000000</td><td>/strain=&quot;HIT 98-5491&quot;</td><td>61 attactcac ttgagttta tgaaaatat tcttgatg atgatacat ttttaatgcc</td><td></td></tr><tr><td>VERSION</td><td colspan="2">CN000776.2</td><td>/db_xref=&quot;taxon:$13273&quot;</td><td>121 cccaataata tttatgcag ttggtaaaaa acaaaatatt cttagtaaatt tgctcaactt</td><td></td></tr><tr><td rowspan="2">DBLINK</td><td colspan="2">BioProject: PRNJA030719</td><td>/none=&quot;strain co-identity: HIT 98-5491 = NCTC 13241&quot;</td><td>181 ttggaatc aaaatgitta taagctgga atattatttg aagtttttaa tccataataa</td><td></td></tr><tr><td colspan="2">BioSample: SA000000577</td><td>/1..1293</td><td>241 aggaagaaa ataaaacac tatttaaattg atccaatattg</td><td></td></tr><tr><td>KEYWORDS</td><td colspan="2">WS.</td><td>gene</td><td>1..1293</td><td>301 ttaacctta attcttttat tgtgggaac tctaagtatt tgcttttaa tgtcgaaaa</td><td></td></tr><tr><td>SOURCE</td><td colspan="2">Helicobacter canadensis HIT 98-5491</td><td></td><td>/gene=&quot;dnaA&quot;</td><td>361 gctggctc aaaatcaag cacatttat aatccttag taatttatgg caatactgga</td><td></td></tr><tr><td rowspan="2">ORGANISH</td><td colspan="2">Helicobacter canadensis HIT 98-5491</td><td rowspan="2">CD5</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td>421 taggcaaaa cgacttact castgccatt ggaacacaa atgctaatgt tggaaaatcc</td><td></td></tr><tr><td colspan="2">Bacteria: Proteobacteria; Epsilonproteobacteria; Campylobacterales; Helicobacteraceae; Helicobacter.</td><td>/1..1293</td><td></td><td></td></tr><tr><td>REFERENCE</td><td colspan="2">1 (bases 1 to 1623845)</td><td></td><td>/gene=&quot;dnaA&quot;</td><td></td><td></td></tr><tr><td>AUTHORS</td><td colspan="2">Loman,N.J., Snyder,L.A., Linton,J.D., Langdon,R., Lawson,A.J., Weinstock,G.H., Wren,B.W. and Pallen,H.J.</td><td></td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td>1..1293</td><td></td></tr><tr><td>TITLE</td><td colspan="2">Genome sequence of the emerging pathogen Helicobacter canadensis</td><td></td><td>/codon_start=1</td><td>1..1293</td><td></td></tr><tr><td>JOURNAL</td><td colspan="2">J. Bacteriol. 191 (17), 5566-5567 (2009)</td><td></td><td>/transl_table=11</td><td>1..1293</td><td></td></tr><tr><td>PUBBED</td><td colspan="2">19542273</td><td></td><td>/product=&quot;Chromosomal replication initiator protein dnaA&quot;</td><td>1..1293</td><td></td></tr><tr><td>REFERENCE</td><td colspan="2">2 (bases 1 to 1623845)</td><td></td><td>/protein_id=&quot;ESG0276.1&quot;</td><td>1..1293</td><td></td></tr><tr><td>AUTHORS</td><td colspan="2">Loman,N.J., Snyder,L.A.S., Linton,J.D., Weinstock,G.H., Lawson,A.J., Wren,B.W. and Pallen,H.J.</td><td></td><td>/translation=&quot;MPVQLQKREITPEFFDVYITQLSFNEKYKSRDDRIFNAPMNII</td><td>1..1293</td><td></td></tr><tr><td>CONSTRTH</td><td colspan="2">Helicobacter canadensis HIT 98-5491 Sequence Consortium</td><td></td><td>/ASWIKTKYSKIAQLFEIQGQYKPEIIEVFPMKKKENKNDKIQNATHNLSPT</td><td>1..1293</td><td></td></tr><tr><td>TITLE</td><td colspan="2">Direct Submission</td><td></td><td>/FNSIVGNNSFAFWAKAVAQIQSTYMPLVLYONTILGKTHLLNAIGNTHWNKKS</td><td>1..1293</td><td></td></tr><tr><td>JOURNAL</td><td colspan="2">Submitted (01-JUL-2009) Centre for Systems Biology, University of Birmingham, c/o Biosciences, Edgbaston, Birmingham, West Midlands B15 2TT, United Kingdom</td><td></td><td>/VYVITSEGVUNDYLHDNNIVDFREKYKACDYLLIDQQVLSGKNQIEQEFHMYTN ELKKNKQIVTLSDRPKDNGLEFRKLRTSGLLADIQPQELTEKINNACELD GHLHSPKIDFDIAANIMDREIGVLVKLHFSINTNTRQIEITDFVRDILKEYKIES KENIWDRDIENVAYNIXKPSERSRSRSKNLVARTKRIVYLARTLTPMDILSLADY FDMKHSTVSKAWSKIQEIZHNNPNFKTIEELKNKIIK&quot;</td><td>1..1293</td><td></td></tr><tr><td colspan="6">ENA</td><td></td></tr><tr><td>ID</td><td colspan="2">CN000776; SV 2; circular; genomic DNA; CON; PRO; 1623845 BP.</td><td>XX</td><td>Key</td><td>Location/Qualifiers</td><td>&gt;ENA|CN000776|CN000776.2 Helicobacter canadensis HIT 98-5491 chromosome, whole genome shotgun sequence.</td></tr><tr><td>XX</td><td colspan="2">CN000776;</td><td>PH</td><td>1..1623845</td><td>TTGCATCCTGTTTTATTACAACCTAAAAGAGAAATTACACCTTTGAATTTGACAATTAT</td><td>TTGCATCCTGTTTTATTACAACCTAAAAGAGAAATTACACCTTTGAATTTGACAATTAT</td></tr><tr><td>XX</td><td colspan="2">PR Project:PRNJA030719;</td><td>FT</td><td>/organism=&quot;helicobacter canadensis HIT 98-5491&quot;</td><td>ATTACTCAACTTAGTTTAATGAAAATATTCTCGTGATGATAGAATCATTTTTAATGCC</td><td>ATTACTCAACTTAGTTTAATGAAAATATTCTCGTGATGATAGAATCATTTTTAATGCC</td></tr><tr><td>DT</td><td colspan="2">10-7UL-2009 (Rel. 101, Created)</td><td>FT</td><td>/mol_type=&quot;genomic DNA&quot;</td><td>CCAATAATATATTATGCAAGTTGGATAAAAACAAAATTATTCTAGTAAATTGCTCAACTT</td><td>CCAATAATATATTATGCAAGTTGGATAAAAACAAAATTATTCTAGTAAATTGCTCAACTT</td></tr><tr><td>DT</td><td colspan="2">16-AUG-2009 (Rel. 101, Last updated, Version 3)</td><td>FT</td><td>/note=&quot;strain co-identity: HIT 98-5491 = NCTC 13241&quot;</td><td>TTTGAAATCAAAATGGTTATAAGCCTGAAATTATTATTGAAGTTTTTAATCCTAATAAA</td><td>TTTGAAATCAAAATGGTTATAAGCCTGAAATTATTATTGAAGTTTTTAATCCTAATAAA</td></tr><tr><td>XX</td><td colspan="2">Helicobacter canadensis HIT 98-5491 chromosome, whole genome shotgun</td><td>FT</td><td>/db_xref=&quot;taxon:$13273&quot;</td><td>AAGAAGAAGAATAGAACATATTATAGAAAATTATCAAATGCCACTAATCTCAATCCTTCT</td><td>AAGAAGAAGAATAGAACATATTATAGAAAATTATCAAATGCCACTAATCTCAATCCTTCT</td></tr><tr><td>DE</td><td colspan="2">sequence.</td><td>gene</td><td>1..1293</td><td>TTAGCCTTAATTCCTTTATTGTGGAAACTCTAATAGTTTTGCTTTTAATGTCGAAA</td><td>TTAGCCTTAATTCCTTTATTGTGGAAACTCTAATAGTTTTGCTTTTAATGTCGAAA</td></tr><tr><td>XX</td><td colspan="2">.</td><td>FT</td><td>/gene=&quot;dnaA&quot;</td><td>GCTGTGGCTCAAAATCAAAGCACAATTATTAATCCTTTAGTAATTTATGCAATACTGGA</td><td>GCTGTGGCTCAAAATCAAAGCACAATTATTAATCCTTTAGTAATTTATGCAATACTGGA</td></tr><tr><td>XX</td><td colspan="2">Helicobacter canadensis HIT 98-5491</td><td>FT</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td>TTAGGCAAACGCACTTACTCAATGCATTGGAACACAAATGCTAATGTTGGAAAATCC</td><td></td></tr><tr><td>OC</td><td colspan="2">Bacteria: Proteobacteria; Epilionproteobacteria; Campylobacterales;</td><td>Gene</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td></td><td></td></tr><tr><td>XX</td><td colspan="2">Helicobacteraceae; Helicobacter.</td><td>FD</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td></td><td></td></tr><tr><td>RH</td><td colspan="2">[1]</td><td>FT</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td></td><td></td></tr><tr><td>RP</td><td colspan="2">1-1623845</td><td>FT</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td></td><td></td></tr><tr><td>RX</td><td colspan="2">DOI; 10-1128/7B.00729-09.</td><td>FD</td><td>/procod_start=1</td><td>/transl_table=11</td><td></td></tr><tr><td>RX</td><td colspan="2">PUBBED; 19542273.</td><td>FT</td><td>/procod_start=1</td><td>/gene=&quot;dnaA&quot;</td><td></td></tr><tr><td>RA</td><td colspan="2">Loman N.J., Snyder L.A., Linton J.D., Langdon R., Lawson A.J., Weinstock G.H., Wren B.H., Pallen H.J.</td><td>FT</td><td>/procod_start=1</td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td></td></tr><tr><td>RT</td><td colspan="2">&quot;Genome sequence of the emerging pathogen Helicobacter canadensis&quot;;</td><td>FT</td><td>/db_xref=&quot;EnsemblGenomes-Gn-HCAN_0001&quot;</td><td></td><td></td></tr><tr><td>RL</td><td colspan="2">J. Bacteriol. 191(17):5566-5567(2009).</td><td>FT</td><td>/db_xref=&quot;EnsemblGenomes-Tr.EESG0276&quot;</td><td></td><td></td></tr><tr><td>XX</td><td colspan="2">.</td><td>FT</td><td>/db_xref=&quot;GO:ACS2V67&quot;</td><td></td><td></td></tr><tr><td>RH</td><td colspan="2">[2]</td><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N1957&quot;</td><td></td><td></td></tr><tr><td>RP</td><td colspan="2">1-1623845</td><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N3593&quot;</td><td></td><td></td></tr><tr><td>RG</td><td colspan="2">Helicobacter canadensis HIT 98-5491 Sequence Consortium</td><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N0921&quot;</td><td></td><td></td></tr><tr><td>RA</td><td colspan="2">Loman N.J., Snyder L.A.S., Linton J.D., Weinstock G.H., Lawson A.J., Weinstock G.H., Wren B.H., Pallen H.J.</td><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N13159&quot;</td><td></td><td></td></tr><tr><td rowspan="9">RA</td><td rowspan="9" colspan="2">L Estate of Systems Biology, University of Birmingham, c/o Biosciences, Edgbaston, Birmingham, West Midlands B15 2TT, United Kingdom</td><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N3317&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N8312&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N0591&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N4633&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N2417&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/db_xref=&quot;InterPro::IPR00N8454&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/db_xref=&quot;UniProtkBT1FHBL:C52V67&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/protein_id=&quot;ESG0276.1&quot;</td><td></td><td></td></tr><tr><td>FT</td><td>/translation=&quot;MPVVQLQKREITPEFFDVYITQLSFNEKYSRDDRIFNAPMNII</td><td></td><td></td></tr><tr><td rowspan="7">RL</td><td rowspan="7" colspan="2">Centre for Systems Biology, University of Birmingham, c/o Biosciences, Edgbaston, Birmingham, West Midlands B15 2TT, United Kingdom</td><td>FT</td><td>ASHIKTKYSKIAQLFENQWDYKPIIEIVFNMKKKENKNDKIQNATHNLSPTFN</td><td></td><td></td></tr><tr><td>FT</td><td>SFIVGRNSHFAFWNAVAVQNSTYNVPLYGYNTOLGHKLNLNGYNATNNGKSVYV</td><td></td><td></td></tr><tr><td>FT</td><td>TFSEQVLDVLLHRMRNTIDRFREVKRADVYLLIDQQVLSGKNQIEQEFHMTNELAK</td><td></td><td></td></tr><tr><td>FT</td><td>NNKQIVLTSDRPKDNGLEERKLRTSGLLADIQPQEPLETKINNANCELDGHLIS</td><td></td><td></td></tr><tr><td>FT</td><td>PKIDTFIAANINONRIEIGVLVKLNFSINTNTRQIEITDFPROLDKEYEKSENKNMI</td><td></td><td></td></tr><tr><td>FT</td><td>DRIENNAVYNIXKPSERSRSRSNVTAYKISVYLARTLTPMSHLSLADYFDMKHS</td><td></td><td></td></tr><tr><td>FT</td><td>VSKAWKSQIEINNPNFKTIEELKNKIIK&quot;</td><td></td><td></td></tr><tr><td colspan="6">DDBJ</td><td></td></tr><tr><td>LOCUS</td><td>CN000776</td><td>1623845 bp DNA circular CON 12-MAR-2015</td><td>FEATURES</td><td>Location/Qualifiers</td><td>&gt;CN000776|CN000776.2 Helicobacter canadensis HIT 98-5491 chromosome, whole genome shotgun sequence.</td><td></td></tr><tr><td rowspan="2">DEFINITION</td><td colspan="2">Helicobacter canadensis HIT 98-5491 chromosome, whole genome shotgun sequence.</td><td>SOURCE</td><td>1..1623845</td><td>ttgcatcctgtttattacaactcaaaaggaatacacctttgaatttcgaataatat</td><td></td></tr><tr><td colspan="2">CN000776 ACSF01000000</td><td></td><td>/organism=&quot;helicobacter canadensis HIT 98-5491&quot;</td><td>atactcaactatagtttaatgaaaatattctctgtgatgatagaatcatttaatcc</td><td></td></tr><tr><td>ACCESSION</td><td colspan="2">CN000776.2</td><td></td><td>/mol_type=&quot;genomic DNA&quot;</td><td>ccaataatattattgcaagtggtaaaaaacaaatattcttagtaaaattgctcaactt</td><td></td></tr><tr><td>VERSION</td><td colspan="2">BIProject: PRNJA030719</td><td></td><td>/strain=&quot;HIT 98-5491&quot;</td><td>tttggaatcacaataatggttataagccctgaastattattgagtttttaatcctataaa</td><td></td></tr><tr><td>DBLINK</td><td colspan="2">BioSample: SA000000577</td><td></td><td>/db_xref=&quot;acasm132730&quot;</td><td>eaggagaaatcaaaaccaatctataaaatcaagccaccctctccctctt</td><td></td></tr><tr><td>KEYWORDS</td><td colspan="2">WS.</td><td>gene</td><td>/none-strain Co-Identity: HIT 98-5491 = NCTC 13241&quot;</td><td>ttaacctttataatctttatgtggaaactcataagtttgtctttaatgtcgaaa</td><td></td></tr><tr><td>SOURCE</td><td colspan="2">Helicobacter canadensis HIT 98-5491</td><td></td><td>/gene=&quot;dnaA&quot;</td><td>gctgtggctcaaaatcaagcacattataatctcttttagtaatttatggcaatactgga</td><td></td></tr><tr><td rowspan="2">ORGANISH</td><td colspan="2">Helicobacter canadensis HIT 98-5491</td><td></td><td>/locus_tag=&quot;HCAN_0001&quot;</td><td>ttaggcaaacgcacttactcaatgccattggaaacacaaatgctaatgttggaaaatcc</td><td></td></tr><tr><td colspan="2">Bacteria: Proteobacteria; Epilionproteobacteria; Campylobacterales; Helicobacteraceae; Helicobacter.</td><td>CD5</td><td>/codon_start=1</td><td></td><td></td></tr><tr><td>REFERENCE</td><td colspan="2">1 (bases 1 to 1623845)</td><td></td><td>/procod=&quot;Chromosomal replication initiator protein dnaA&quot;</td><td>1..1293</td><td></td></tr><tr><td>AUTHORS</td><td colspan="2">Loman N.J., Snyder L.A., Linton J.D., Langdon R., Lawson A.J., Weinstock,G.H., Wren B.H., Pallen H.J.</td><td></td><td>/protein_id=&quot;ESG0276.1&quot;</td><td>1..1293</td><td></td></tr><tr><td>TITLE</td><td colspan="2">Genome sequence of the emerging pathogen Helicobacter canadensis</td><td></td><td>/translation=&quot;MPVVQLQKREITPEFFDVYITQLSFNEKYSRDDRIFNAPMNII</td><td></td><td></td></tr><tr><td rowspan="7">JOURNAL</td><td rowspan="7" colspan="2">J. Bacteriol. 191 (17), 5566-5567 (2009)</td><td></td><td>/ASWIKTKYSKIAQLFENQWDYKPIIEIVFNMKKKENKNDKIQNATHNLSPT</td><td></td><td></td></tr><tr><td></td><td>/TSFIVDRNSHFAFWNAVAVQNSTYNVPLYGYNTOLGHKLNLNGYNATNNGKSVYV</td><td></td><td></td></tr><tr><td></td><td>/VETSEQVLDVLLHRMRNTIDRFREVKRADVYLLIDQQVLSGKNQIEQEFHMTNELAK</td><td></td><td></td></tr><tr><td></td><td>ELKKNKQIVTLSDRPKDNGLEERKLRTSGLLADIQPQEPLETKINNANCELDGHLIS</td><td></td><td></td></tr><tr><td></td><td>EMILKSHIVDLFAANINONRIEIGVLVKLNFSINTNTRQIEITDFPROLDKEYEKSENKNMI</td><td></td><td></td></tr><tr><td></td><td>DRIENNAVYNIXKPSERSRSRSNVTAYKISVYLARTLTPMSHLSLADYFDMKHSTVSKAWKSQIEINNPNFKTIEELKNKIIK&quot;</td><td></td><td></td></tr><tr><td></td><td>FDMKHSTVSKAWKSQIEINNPNFKTIEELKNKIIK&quot;</td><td></td><td></td></tr></table>


Figure 12.16 Differences in the file formats for sequence databases GenBank, ENA, and DDBJ. Although all three entries show excerpts for the same sequence data, the genome sequence data for Helicobacter canadensis strain MIT 98-5491, the presentation of those data is slightly different between the three public sequence databases. (Images are from National Library of Medicine [NLM], European Molecular Biology Laboratory-European Bioinformatics Institute [EMBL-EBI], and DDBJ web pages).


Data Bank of Japan (DDBJ). Each of these centers provides a repository for sequence data and searchable databases for DNA and RNA data, as well as protein sequence data and other information. The data contained at each of the three centers are synchronized daily to ensure that they carry the same information. 

While the data in GenBank, ENA, and DDBJ are the same, each database presents the data in its own format. One of the features of the synchronization is to transfer the databank entry from one database’s format to the format of the database taking in the data (Figure 12.16). 

## Comparative genomics finds that there are commonly shared genes and unique genes

In comparative genomics, the genomic features of different organisms are analyzed against each other. This can include the similarity between and the presence of the sequences of the CDSs, ncRNAs, and other features. Slight changes in regulatory sequences between two organisms can reveal differences in regulatory responses. Comparative genomics can also include analysis of the order of the CDSs and features in the genome, which is referred to as synteny. The positions of features such as genes, IS elements, transposons, and prophages may be quite different between two genomes that are otherwise syntenic, with the same order of features in the rest of the genome (Figure 12.17). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fa749fee14c627c7d960b42d45387692e26082cf4de030353bca67ca12b71e10.jpg)



Figure 12.17 Synteny between genomes. In two syntenic regions from two different genome sequences, the first has locus identification numbers starting with expl, while the second has locus identification numbers starting with synt. Although they are from different genomes, the order of coding regions is the same between the two sequences, demonstrating synteny.


Similarities, differences, and evolutionary relationships between bacteria can be revealed via comparative genomics. Alignment of sequence data facilitates the identification of similarities between sequences and highlights regions of difference. From such analyses, the core genome can be identified. The core genome describes the genes, CDSs, and other features that are present in all strains within a taxonomic group. Core genomes can be described for a bacterial species or the term can refer to the genes in common within a genus or higher. 

The opposite of the core genome is the accessory genome, referring to the genes that are present only in a single strain or only in some strains. Often it is the accessory genome that differentiates a virulent bacterial strain from an avirulent one. The acquisition of genes through horizontal transfer, such as antibiotic resistance genes, contributes to the accessory genome. Mobile elements like prophages and genetic islands are often part of the accessory genome, being present in some strains within a species, but not all. When all of the potential accessory genes and all of the core genes are considered together, this is the pan-genome, being all of the genes known within a taxonomic group (Figure 12.18). There are, for example, about 89,000 genes in the E. coli pan-genome. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/abd3aac9312ae3a01ad3db6b975e82ad9e7a007777144181524143dcf699e733.jpg)



Figure 12.18 The core genome, accessory genome, and pan-genome. When comparing three genomes, shown here as different colored circles, there will be some genes that are shared, shown in the overlaps, and some that are unique to each genome. Here, there are 1,701 genes that are shared among all three bacterial genomes, making the core genome. In genome 2 (blue), there are 24 genes that are not in either of the other genomes, making the accessory genome. When all of the genes from all three genomes are taken together (gray-shaded circle), this is the pan-genome.


# TTGACATTACCGTACTAAACCGGTATAAT GCAGGAGGTTGA

# TTACCGTACTAAACCGGTATAAAG

GACATTACCGTACTAAACCGGTATAAAGCAA 

AAACCGGTATAAAGCAGGAGGTTA G 

GTACTAAACCGGTATAAAGCAGGAGA G 

## Figure 12.19 Mapping of short unassembled sequence read data to a reference genome can reveal changes in the genetic sequence. The top line is the reference genome sequence.

Below are aligned sequencing reads. Analysis reveals that one base has changed. The T highlighted in the reference genome is an A in the sequencing reads. This will change what might have been an ATG initiation codon into an AAG. 

## Comparative genomics can be done without assembly or annotation of sequencing data

With the advent of rapid and inexpensive genome sequencing, more sequence data are being produced than can be completely analyzed. It has therefore become essential to be able to extract from these data interesting bits of information about the bacteria. To this end, comparative analyses between genomes are done without assembly and annotation. 

To start, the sequencing read data are collected from the sequencing platform, trimmed to remove poor-quality sequences, and quality checked. These data, without assembly, are then aligned against a fully annotated reference genome sequence; this is referred to as mapping. Similarities and differences between the complete reference genome and the unassembled sequences mapped against it are noted. This method can be used to readily identify variants like single base changes (SNPs), short indels, and short sequence changes, such as substitutions that add or delete repeats (Figure 12.19). 

Mapping of the sequence reads against a reference genome can reveal smallscale genetics differences, but it is harder to identify larger regions of difference using this technique. Large differences will not align with the reference genome; therefore, to reveal these, it is necessary to look at the unaligned sequencing data to see genetic features that are not in the reference genome. 

## Horizontally transferred gene sequences tend to carry a signature that can identify them

Horizontal gene transfer is a key characteristic of bacteria, enabling the exchange of genetic material between strains and species. Horizontally acquired genes and DNA can also be called foreign genes and foreign DNA. DNA signatures of horizontally transferred sequences may be different from the rest of the genome in features like %G+C and codon usage (Chapter 3), as well as perhaps in amino acid usage, where using an amino acid in a protein sequence is rare for a particular species. Using bioinformatics, DNA signatures of the chromosome are analyzed to identify regions that are potentially horizontally transferred. A few bacterial species are naturally competent for transformation, like Neisseria meningitidis and Neisseria gonorrhoeae. For these species, there is extensive bioinformatics and experimental evidence of horizontal gene transfer in genome sequence data. Evolution in such species is heavily influenced by the ability to acquire DNA. 

Recently acquired sequences are more likely to be different from the rest of the genome (Figure 12.20). Over time, sequences ameliorate, which means they change to match the genome with regard to %G+C and codon usage. It is therefore easier to identify recently horizontally acquired sequences than it is to identify those that have been within the bacterial genome for some time. There are some regions of genomes that may appear to be foreign when they are not. These regions are native to the genome, but due to the nature of the features in a region, it may look horizontally transferred based on its %G+C and codon usage. 

Horizontally acquired regions can also be identified using phylogeny. Identification through phylogeny relies on orthologues being identified between sequences. Those that have no orthologues could be foreign (Figure 12.21). Alternatively, the identified genes may be strain-specific because they were generated via duplication and change or deletion rather than horizontal gene acquisition. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/520f5944c7da18935d99520571f901335b41d7b7565082975f98c863a3797a75.jpg)



Figure 12.20 %G+C can be an indicator of horizontal gene transfer. Region 1 has a clear change in the %G+C for part of the sequence, which corresponds to some horizontally transferred DNA (HT). In region 2, the horizontally transferred DNA has been present in the genome for some time and has ameliorated to more closely match the %G+C of the rest of the region. Region 3 includes the rRNA locus, which has a %G+C signature that is different from the rest of the genome, by nature of the function of the sequence.


With the focus on genomes and genomic sequence analysis, it could be easy to overlook the role that plasmids play as sources of horizontally transferred genes; plasmids can, in whole or in part, have originated from other bacteria. As extrachromosomal DNA, plasmids are capable of self-replicating and of carrying with them the regulatory features needed to express the genes carried on the plasmid. Therefore, plasmids are efficient transmitters of horizontally transferred genes. Bacteriophages are also effective transmitters of horizontally transmitted genetic material (see Chapter 3). In addition to the prophage sequences themselves being horizontally acquired, bacteriophages may bring foreign genes with them into the genome, contributing to horizontal gene transfer between bacteria. 

## Genome sequence analysis can find unexpected features in the sequence data

Prior to whole-genome sequencing, many assumptions were made about the nature of genetic material within bacterial cells and our understanding of it. Long held beliefs such as bacteria having only circular chromosomes were overturned with the sequencing of linear chromosomes from Borrelia burgdorferi and other bacteria, confirming previous evidence. Flagellar gene systems were found within intracellular bacteria such as Buchnera aphidicola that do not express flagella yet use some of the flagellar proteins to form structures that transport proteins across the bacterial cell surface. Bacterial species were found to contain horizontally acquired eukaryotic DNA and vice versa. With important implications in our understanding of bacterial pathogens, virulence genes have been found in nonpathogens. These and other genomic analysis-based results have brought to light ecological and evolutionary contexts for gene presence in bacteria. Findings such as these have required a re-examination of the potential phenotypic influence that the presence of a gene or set of genes within a genome may have upon the characteristics of the microorganism. 

Genome sequence data have enabled the identification of signatures for uptake signal sequences enhancing horizontal gene transfer that have not previously been identified. For example, in the Apl subclade of Pasteurellaceae including Actinobacillus pleuropneumoniae, Mannheimia haemolytica, and 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/271f64800ad1444a4f0ff3e2873567198d7d4fc39c50b6f42881ea9ed543ebc7.jpg)



Figure 12.21 Phylogeny can reveal horizontally acquired sequences.


This phylogenetic tree (top) shows two species, labeled A and B, with several strains representing each, all numbered. When a single gene is considered (bottom), it is revealed that the gene from A4 clusters with the genes from species B rather than with the other species A genes. 

Haemophilus ducreyi, horizontal gene transfer is enhanced between one another when the ACAAGCGGT sequence is present in the DNA. This sequence signature was identified through analysis of the sequence data for short sequences present in several copies around the chromosome at a frequency well above what might be expected by chance. It is different in both sequence and specificity from the AAGTGCGGT uptake signal sequence in the Hin subclade, which includes Haemophilus influenzae. Likewise, analysis of the genome of Helicobacter pylori revealed that there is no uptake signal sequence in this species, the assumption being that the acidic niche of the bacteria acts as a restriction to horizontal acquisition adequately. 

As the understanding of bacterial genomes and genomic features has progressed, it has been possible to identify within the genome sequence data features that were never before recognized. Perhaps the most apparent of these is the identification of small non-coding RNAs in regions of the chromosome previously believed to be non-functional junk. In addition, genomic analysis has become better at finding repeat regions that might have regulatory functions, might be hotspots for recombination, or otherwise might be of interest, such as the CRISPR repeat regions that will be discussed in Chapter 13. With the inclusion of more sequence data, it has become easier to identify prophages and prophage fragments within bacterial genomes, particularly those that share homology with prophages in other genome sequence data, even from unrelated species. Other integrated features such as IS elements, transposons, and fragments of these features in the genome, as well as other regions that are potentially related to these elements, can now be readily identified. 

## Comparative genomics on closely related strains can reveal biologically important information

A key experiment in bacterial genetics is to knock out a gene and identify the change in phenotype. This requires laboratory investigation and it may be that the phenotype involved is not readily apparent. It is possible to compare the phenotypes of very closely related strains to achieve similar, although not perfect, results. Genome sequencing makes it possible to examine closely related strains that differ by only a few genes, but which have phenotypic differences such as the disease outcome for the host or the ability to tolerate antibiotics or environmental stress. Comparative analysis of the genome sequence data will identify the regions of difference, SNPs, indels, and other changes between the closely related strains. These are likely to be involved in the differences in phenotype and can inform directed laboratory experiments to investigate the functions and phenotypic implications of the genes. 

Differences within strains can also be within systems that have evolved to differ. Some bacterial species use phase variation to switch ON and OFF certain genes within the genome. While the vast majority of genes are still regulated through standard regulatory systems, some are switched through stochastic phase variation mechanisms, a programmed randomness. The phase variable feature is associated with the phase variable gene; in this way it is not random because only those genes with the phase variable feature can randomly switch ON and OFF. Of the set of phase variable genes, their expression ON or OFF is a random process, which is why it is referred to as stochastic. Phase variation enables a portion of the bacterial population to express different combinations of phase variable ON and OFF genes, enabling the population as a whole to rapidly take advantage of the right combination of gene expression at any one time. The phase variable switch can be different between species, and species may employ more than one genetic feature as a phase variable switch. Generally, these include changes in the lengths of homopolymeric tracts or simple sequence repeats, inversion of short sequences, or changes in the methylation state of the DNA. All of these features can be readily identified from genome sequence data using bioinformatics, making it possible to identify never before known phase variable genes 

TA(Figure 12.22). Phase variation can impact the transcription, translation, or protein sequence of a gene. 

Bacteria also undergo antigenic variation, where the amino acid sequence or structure of a surface component of the bacteria is altered. Generally, this is to overcome the antigenicity of the surface feature and its recognition by the host immune system. By dynamically changing the antigens on the surface of the bacteria, the microorganisms are able to survive longer in the host through evading the immune system. Some key sequence features of antigenic variation have been identified and can be found through examination of genome sequence data. These include the presence of an expressed version of a gene along with shorter fragments of the gene sequence within the chromosome. Recombination with the silent cassettes generates mosaic genes that encode different antigens (Figure 12.23a). Recombination between paralogous genes within the genome that encode surface antigens can generate mosaic gene sequences, thus contributing to antigenic variation as well (Figure 12.23b). Other antigenic variation mechanisms use repeats within the gene, much as for phase variation, although rather than switching ON or OFF the expression, they change the protein lengths and structure, thus creating antigenic variation (Figure 12.22c). 

## Comparative genomics between non-related species gives insight into bacterial evolution

The availability of a vast quantity of genomic data enables the exploration of the diversity and similarity between non-related species, both within phyla and between phyla. Using bioinformatics to compare the sequence data, the genes that are conserved and present within all bacteria can be identified. These are common features that represent important key mechanisms for bacterial life such as DNA replication, transcription, and translation. Also conserved are genes involved in cell division, ATP-dependent transport, and stress responses. Through analysis of similarities in sequences, it is possible to identify and explore the implications of genes present in all bacteria and of genes present in all representatives of a particular branch of the phylogenetic tree. Given the number of bacterial species being revealed through non-culture-based metagenomic sequencing, it is interesting to consider the number of genes that are missing from our understanding of the non-culturable bacteria. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/7aa8f443e9ae5d3ed5c931d6411480ade9c8561e7404fe6116150f83a3827aef.jpg)



Figure 12.22 Phase variation mechanisms switch expression of associated genes. In transcriptional phase variation, changes in a repeat associated with the promoter region (a) alter the transcription of the gene. In translational phase variation, changes in a repeat within the first part of the coding region (b) alter translation of the gene due to the resulting frame-shift. In C-terminal phase variation, changes in a repeat toward the end of the coding region (c) alter the C-terminal sequence of the encoded protein. In inversion phase variation, a portion of the DNA, shown with parenthesis, inverts at its location (d) often resulting in a flip in the orientation of the promoter region or genes. In methylation phase variation, changes in the methylation state of the DNA can alter the binding of proteins, such as an activator or RNA polymerase (e).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/886d54ccfa6d032e41bc3f1c027f8c532646a7a2d44c38ac16c038adad31afc0.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a2737bb440d079f5d4fec6d2f4fd9126792feb8c504aa0e2999fbf2da56a1374.jpg)



Figure 12.23 Antigenic variation through changes in sequences. (a) Antigenic variation can occur through recombination between the sequence of the expressed gene and the sequences of silent cassettes present elsewhere in the genome. (b) Antigenic variation can also be generated through recombination between paralogous genes, generating mosaic gene sequences that are different from the originals.


## Strain identifi cation using sequencing data is a powerful tool for tracking bacterial transmission

Next-generation sequencing and SNP analysis of the genomic data has enabled rapid identifi cation of diff erences between sequence data from diff erent bacterial samples. Th is allows the identifi cation of bacteria that have come from a common source with resolution and certainty of association between isolates never achieved before with phenotypic or short sequence methods used for strain typing. As the bioinformatics involved in this type of analysis becomes more streamlined, with less user intervention in the generation of interpretable results, it becomes easier to use sequencing as a typing method because the output data are refi ned into a readily interpretable result. Th is enables fi ne detail identifi cation of bacteria involved in outbreaks and transmission events, diff erentiating them from cases of infection occurring at the same time by random chance infection with unrelated strains. Th e origins of several outbreaks have been identifi ed using next-generation sequencing methods analyzed by bioinformatics. Th e rapid, nearly real-time nature of the technology and analysis has meant that the origins of outbreaks can be identifi ed and measures put in place to stop the current and future spread of infection. 

It is important to successfully stop infections in a hospital setting or in an organism of agricultural importance. It is essential from a treatment and prevention standpoint to know if all or most of the infections come from the same strain (Figure 12.24). An example is the economic problem of bovine tuberculosis in the UK, where there has been a history of culls of European badgers (Meles meles), which are believed to harbor the Mycobacterium bovis bacteria and pass them on to cattle. Culling of badgers in outbreak areas has failed to reduce the cases of bovine tuberculosis. Indeed, culling of badgers seems to contribute to the spread of M. bovis to those badgers remaining in the area. In New Zealand, it is the brushtail possum (Trichosurus vulpecula) that is the wildlife reservoir blamed for spreading the disease to cattle. Genome sequencing of M. bovis from cattle and wildlife has been demonstrated to be far superior than traditional typing methods, providing greater resolution, sometimes revealing that the genetic signatures of cattle strains and local wildlife are quite diff erent. Evidence is building, through use of genomics, which suggests that bovine tuberculosis is a complex situation in which wildlife play a role as reservoirs of the bacteria, but where spread between cattle is the major contributor to bovine disease. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ada034d631586233713842ece0c0265a8a81231c0fe97ea2c28ddd0b99cdf65b.jpg)



Patient 1 A AT G C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f4ec87717c03a74b5aa5644af647ca3f6aac2b496162c9a7495dc207aec9c3ab.jpg)



Patient 2 A A A G C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/9ed7b4ef6be07dde33c9c8bc74e765c7a170a0cf66ba73027364d5ab19e341d8.jpg)



Patient 3 A A A G C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/16eaf96404b3609e49dafb0fa7f35c13161e368606056fbbc66cee1d4bcc2d8c.jpg)



Patient 4 C AT G C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a87b24c959192521e6bc22621b780f91bd3d02deaa732943efbacd891b44fa46.jpg)



Hospital A A A G C


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e3d4091a7cb86e9d277de6542c1005416d1111cf23c976faa6bcf50fe660bb27.jpg)



Community A A A G C



Figure 12.24 Sequencing and bioinformatics can identify bacterial transmissions. Sequence data show that patient 1 has an AATGC sequence, patient 4 has a CATGC sequence, and patients 2 and 3 have AAAGC sequences. Comparison of the sequences from patients 2 and 3 suggests that they acquired the infection from the same source or that one patient infected the other. Further sampling and sequencing fi nds that the same sequence signature, AAAGC, is present in an environmental sample from the hospital and also from a person in the community. This information may help contain the infection, which may have come from the community into the hospital and spread to the patients (same sequence as patient 2 and patient 3) or may have left the hospital for the community via a discharged patient or been carried by a visitor or hospital worker. Alternatively, the two patients may have been infected in the community before entering the hospital and then been the cause of the hospital environment sample. (Illustrations courtesy of Freepik.com.)


TABioinformatics analysis of sequence data from patients with chronic and persistent bacterial infections has enabled researchers to see the changes within the bacteria genome as they occur. In particular, ongoing infections in patients with cystic fi brosis, such as Pseudomonas aeruginosa, Burkholderia dolosa, and Burkholderia multivorans, have been genome sequenced, revealing changes in key genes contributing to within-host adaptation. Convergent evolution of genes in the genomes of these species between different patients suggests that similar evolutionary changes can occur in different bacterial lineages. Studies such as these investigations of genomic changes within patients have shown that SNPs can arise rapidly and therefore SNPs seen in outbreaks need to be considered in the context of the species and their rate of SNP accumulation. Outbreak sequence data that may look to be different enough to be from different originating bacteria may actually be from a similar source, if the species dynamically changes its sequences in a short period of time. 

## Function predictions can be made based on sequence similarity

Sequencing is able to resolve the A’s and T’s, and G’s and C’s, but it is bioinformatics that works out what it all means or what it might mean. Much of this is accomplished through the investigation into the similarity between one sequence and those other sequences in the public databases, such as GenBank. Algorithms such as BLAST (basic local alignment search tool) compare the query sequence to either the whole of the database or a portion of it, as selected by the user. Similar sequences are reported as BLAST hits, with each being given a score indicating the statistical significance of the similarity between the sequences, the E value. When assessing BLAST results it is important to look at both the percent identity between the query sequence and the subject sequence found in the database and also at the percent of the query that matches the subject (Figure 12.25). It is possible for a short sequence or a portion of a sequence to have 100% identity with another sequence, yet due to the short nature of the identity, this may reveal nothing about the query sequence. Indeed, it is possible to type in a random 15-base DNA sequence and have a BLAST hit of 100% to something in the database. 

There are several different types of BLAST searches that have been developed over the years. There are BLAST searches that use a nucleotide query to investigate the nucleotide databases and those that search protein databases with a protein sequence. There are also BLAST searches that will translate the nucleotide sequence first, generating the predicted amino acid sequence that is then used in a search of the protein databases. Opposite to this is a BLAST that uses a protein search query to search the nucleotide database, by first generating a translation of all of the possible amino acid sequences from the nucleotide database. There are also a number of specialist BLAST searches available for assisting in specific tasks to try to identify similarity between nucleotide and amino acid sequences. 

BLAST results can suggest the function of the sequence used as the query and its evolutionary similarity to other sequences in the database. Identification of similar sequences assists in the annotation of unknown sequences, such as bacterial genome sequence data. However, it can also lead to erroneous assumptions as to function, due to either errors in annotation of sequences in the databases or assignment of functions based on limited similarity. Even when two sequences are very similar to one another and the function of one has been experimentally shown, it is possible that differences in a single amino acid may be enough to give the proteins slightly different functions. BLAST and other bioinformatics tools will be explored in more detail in Chapters 16 and 17. 

<table><tr><td>Job Title</td><td>gb|AAG59583.1|</td></tr><tr><td>RID</td><td>PFDXKKK5014 Search expires on 08-30 19:32 pm Download All</td></tr><tr><td>Program</td><td>BLASTP ? Citation</td></tr><tr><td>Database</td><td>nr See details</td></tr><tr><td>Query ID</td><td>AAG59583.1</td></tr><tr><td>Description</td><td>orf, hypothetical protein [Escherichia coli O157:H7 str. EDL933]</td></tr><tr><td>Molecule type</td><td>amino acid</td></tr><tr><td>Query Length</td><td>228</td></tr><tr><td>Other reports</td><td>Distance tree of results Multiple alignment MSA viewer ?</td></tr></table>

<table><tr><td colspan="2">Filter Results</td></tr><tr><td>Organism only top 20 will appear</td><td>exclude</td></tr><tr><td colspan="2">Type common name, binomial, taxid or group name</td></tr><tr><td colspan="2">+ Add organism</td></tr><tr><td>Percent Identity</td><td>E value</td></tr><tr><td></td><td>to</td></tr><tr><td></td><td>Filter Reset</td></tr></table>

<table><tr><td colspan="8">Sequences producing significant alignments</td></tr><tr><td colspan="8">Download Manage Columns Show 100</td></tr><tr><td colspan="8">Select all 100 sequences selected GenPept Graphics Distance tree of results Multiple alignment</td></tr><tr><td></td><td>Description</td><td>Max Score</td><td>Total Score</td><td>Query Cover</td><td>E value</td><td>Par Ident</td><td>Accession</td></tr><tr><td>tRNA/rRNA methyltransferase [Escherichia coli]</td><td></td><td>462</td><td>462</td><td>100%</td><td>1e-164</td><td>99.12%</td><td>WP_001223147.1</td></tr><tr><td>tRNA/rRNA methyltransferase [Escherichia coli]</td><td></td><td>462</td><td>462</td><td>100%</td><td>2e-164</td><td>100.00%</td><td>WP_001223169.1</td></tr><tr><td>tRNA/rRNA methyltransferase [Escherichia coli]</td><td></td><td>461</td><td>461</td><td>100%</td><td>4e-164</td><td>98.68%</td><td>WP_001223192.1</td></tr></table>

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e115fa543176c3c7c4921d98d0c3e8a0235c630b5aa684c546f7bd10bb055e85.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f96b74432c6d701eba23aac5deda0260315b2213f077a8554e01c3e7dd01b1c6.jpg)


<table><tr><td>Organism</td><td>Blast Name</td><td>Score</td><td>Number of Hits</td><td>Description</td></tr><tr><td>cellular organisms</td><td></td><td></td><td>1409</td><td></td></tr><tr><td>Bacteria</td><td>bacteria</td><td></td><td>1408</td><td></td></tr><tr><td>Enterobacteriales</td><td>enterobacteria</td><td></td><td>1407</td><td></td></tr><tr><td>Enterobacteriaceae</td><td>enterobacteria</td><td></td><td>10</td><td></td></tr><tr><td>Escherichia coli</td><td>enterobacteria</td><td></td><td>1</td><td></td></tr><tr><td>Escherichia coli O157:H7 str. Sakai</td><td>enterobacteria</td><td>462</td><td>193</td><td>Escherichia coli hits</td></tr><tr><td>Escherichia coli O157:H7 str. EC4115</td><td>enterobacteria</td><td>462</td><td>1</td><td>Escherichia coli O157:H7 str. Sakai hits</td></tr><tr><td>Escherichia coli O157:H7 str. TW14359</td><td>enterobacteria</td><td>462</td><td>1</td><td>Escherichia coli O157:H7 str. TW14359 hits</td></tr></table>


Figure 12.25 Example BLAST output, here using the sequence of LasT from E. coli 157:H7 strain EDL933. The query sequence is entered into the BLAST search, where it is used to interrogate all of the sequences in the database it has been assigned to search. The results are shown across several tabs. Under “Descriptions”, the amount of similarity and the length of that similarity results in an E value. The “Graphic Summary” and “Alignments” show the similarity between the query sequence and sequences in the database, called the subject. “Taxonomy” shows the relatedness of the subjects to the query. (Images from the National Library of Medicine [NLM] web pages.)


## Key points

Bioinformaticians investigate the features within sequence data using computational programs. 

The quality of sequencing data is variable, and poor sequences need to be trimmed before they are investigated. 

Identified features in sequence data, such as potential genes, are noted in an annotation. 

An annotation becomes more robust as different pieces of evidence support the proposed function of the region of sequence. 

Most annotations focus on the identification of potential genes, called coding sequences, and the assignment of potential functions to these coding sequences. 

It is possible to generate an annotation automatically; however, some manual curation of the automated annotation is usually needed. 

Comparative genome sequencing analysis between two or more bacterial genome sequences identifies the shared features and different features. 

Bioinformatics analysis can provide useful information, based on computational analysis, which can be the basis of experimental laboratory investigations. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Accessory genome</td><td>Core genome</td><td>Pan-genome</td></tr><tr><td>Annotation</td><td>Domain</td><td>Paralogue</td></tr><tr><td>Antigenic variation</td><td>FASTA</td><td>Phase variation</td></tr><tr><td>Assembly</td><td>Hypothetical protein</td><td>Pseudogene</td></tr><tr><td>BLAST</td><td>Multi-FASTA</td><td>Regulon</td></tr><tr><td>Convergent evolution</td><td>Orthologue</td><td>Synteny</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 What features define a predicted CDS and what additional features can help support the evidence that the CDS may be a potential gene? 

2	 Should all sequencing data generated be included in analysis? Explain why or why not. 

3	 What is sequence annotation, what does it entail, and who is responsible for doing annotation? 

4	 What features other than CDSs might be included in a sequence annotation? 

5	 Write out an example of a sequence in FASTA format. 

6	 Expand the FASTA formatted sequence in question 5 to be a multi-FASTA. 

7	 What is the difference between an orthologue and a paralogue and what can each type of homologue tell us about the evolution of bacteria? 

8	 What are some of the features than can cause problems when attempting to annotate sequence data? 

9	 What is meant by the core genome, accessory genome, and pan-genome of a bacterial species and what type of genetic features can be found in each? 

10	 Briefly, what are the different mechanisms of phase variation and how can they switch gene expression in bacteria? 

11	 What is antigenic variation, how do bacteria use it to avoid the immune system, and what are some of the mechanisms bacteria use for antigenic variation? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

Discuss what defines a CDS as being annotated as a hypothetical protein and at what point it becomes a conserved hypothetical protein. How might the identification of domains within annotated hypothetical proteins assist in identification of functions? Explore a research paper in which the function of a CDS was unknown at the start of the study and explore the steps involved in the study to determine a function. 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

12	 How is BLAST used to identify sequences within a database, such as one of the International Nucleotide Sequence Database Collaboration databases that match a sequence of interest? 

2 Large sets of genome sequence data are often generated and comparatively analyzed by mapping the data against an annotated reference genome sequence. Select a recent research paper that has taken this approach and discuss the research question that the authors addressed with their investigation, how they generated the sequence data, the methods used for mapping and analysis, and the results obtained. 

3 In this chapter, a few features are discussed that were revealed from the sequencing of bacterial genomes that were not expected in the species. Either explore these in more depth or investigate other research findings where novel discoveries have been made through analysis of genome sequence data. What is now known about the species from the sequence data that was not known previously from laboratory investigations alone and how has this led to new laboratory-based research? 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/96e0ab7281ec7675519d0600087f20331073ad0ab2ceca00b0c9a3aa76a15518.jpg)


## Further reading

## Automated annotations rapidly produce an annotation that needs manual curation

Richardson EJ, Watson M. The automatic annotation of bacterial genomes. Brief Bioinform. 2013; 14(1): 1–12. 

## Comparative genomics finds that there are commonly shared genes and unique genes



Edwards DJ, Holt KE. Beginner’s guide to comparative bacterial genome analysis using next-generation sequence data. Microb Inform Exp. 2013; 3: 2. 





Sun S, Xiao J, Zhang H, Zhang Z. Pangenome evidence for higher codon usage bias and stronger translational selection in core genes of Escherichia coli. Front Microbiol. 2016; 7: 1180. 



## Genome sequence analysis can find unexpected features in the sequence data



Anderson MT, Steven Seifert H. Opportunity and means: Horizontal gene transfer from the human host to a bacterial pathogen. mBio. 2011; 2(1): e00005–11. 





Fraser CM, Casjens S, Huang WM, Sutton GG, Clayton R, Lethigra R. Genomic sequence of Lyme disease spirochaete, Borrelia burgdorferi. Nature. 1997; 390(6660): 580–586. 





Maezawa K, Shigenobu S, Taniguchi H, Kubo T, Aizawa S, Morioka M. Hundreds of flagellar basal bodies cover the cell surface of the endosymbiotic bacterium Buchnera aphidicola sp. Strain APS. J Bacteriol. 2006; 188(18): 6539–6543. 





Salzberg SL, White O, Peterson J, Eisen JA. Microbial genes in the human genome: Lateral gene transfer or gene loss? Science. 2001; 292(5523): 1903–1906. 





TASieber KB, Gajer P, Dunning Hotopp JC. Modeling the integration of bacterial rRNA fragments into the human cancer genome. BMC Genomics. 2016; 17: 134. 



## Comparative genomics on closely related strains can reveal biologically important information



Snyder LAS, Loman NJ, Linton JD, Langdon RR, Weinstock GM, Wren BW, Pallen MJ. Simple sequence repeats in Helicobacter canadensis and their role in phase variable expression and C-terminal sequence switching. BMC Genomics. 2010; 11: 67. 





Zelewska MA, Pulijala M, Spencer-Smith R, Mahmood HA, Norman B, Churchward CP, Calder A, Snyder LAS. Phase variable DNA repeats in Neisseria gonorrhoeae infl uence transcription, translation, and protein sequence variation. Microb Genomes. 2016; 2(8): e000078. 



## AStrain identification using sequencing data is a powerful tool for tracking bacterial transmission



Robinson ER, Walker TM, Pallen MJ. Genomics and outbreak investigation: From sequence to consequence. Genome Med. 2013; 5: 36. 





Simar SR, Hanson BM, Arias CA. Techniques in bacterial strain typing: past, present, and future. Curr Opin Infect Dis. 2021; 34(4): 339–345. 





Tümmler B. Molecular epidemiology in current times. Environ Microbiol. 2020; 22(12): 4909–4918. 



## Function predictions can be made based on sequence similarity



Altschul SF, Gish W, Miller W, Myers EW, Lipman DJ. Basic local alignment search tool. J Mol Biol. 1990; 215: 403–410. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/621782f7f8e2b6500477974880438c224d4855e8e8b64e13aec28cb2b09bd011.jpg)


## A A C GT  G Part V

## Bacterial Response, Adaptation, and Evolution

In order to survive in a changing world, all organisms must themselves be able to change, to respond to the ways in which their environment changes, to adapt to those changes, and to evolve to take best advantage of the resources available to them. Bacteria have been responding, adapting, and evolving for millions of years as our planet has changed and as new niches have developed. Over time, eukaryotic organisms developed, presenting bacteria with host organisms upon which they could be symbionts, pathogens, or saprophytes, that is, living on dead organic matter. In this section, the concepts of bacterial response, adaptation, and evolution will be explored in greater depth. These three concepts are very much overlapping, and some aspects will be covered in more than one chapter, such as quorum sensing, which is addressed in Chapters 13 and 14. This section will explore how bacteria respond to their environment, contributing to their phenotype and how this contributes to their abilities to adapt. The evolution of these responses and adaptations will then be discussed in the final chapter of the section. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2970dabf30b23d45d3f2db37f6d5adb9e5cbc568fd7019a2cc8eaa0b8a905ec8.jpg)


# Bacterial Response

Chapter 

13 

Although bacteria are single-celled organisms that are less complex in some ways than eukaryotic cells, they are not inert cells. Bacterial cells are dynamic, undergoing physical changes in their composition and make-up of cellular components and proteins in response to their surroundings. For some bacteria, this involves responding to being in the soil, ocean, or other environments. Other bacteria adapt to being within host organisms, including making use of mechanisms to modulate host immune responses used by either animals or plants to control the presence of bacteria. Bacterial responses to their environment enable the bacterial cells to enhance their survival, to persist in the environment, and to potentially transmit to a new environment (Figure 13.1). 

Th is chapter will explore the mechanisms used by bacteria, both as individual cells and as populations, to respond to their environments. Signals received from the environment can include diff erences or fl uctuations in temperature or pH, the presence of various nutrients or chemicals, and a whole host of other environmental cues. Based on these signals, the bacteria will respond, perhaps by forming a biofi lm or expressing fl agella and becoming motile or expressing genes to be able to take advantage of the presence of nutrients now available. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2513934b174b5c698fa6a178dab8ae340dea949d5dc64d87e06b87674c28a266.jpg)



Figure 13.1 Bacteria respond to their environment. The same bacterial cell can fi nd itself in several diff erent environments. As shown here, the bacterial cell in the center could colonize a human, requiring a response to the temperature, nutrients, immune response, and environment of that niche. Likewise, these bacteria could end up (clockwise from the top right) in the soil, in a plant, in a lizard, in a chicken, in the ocean, in a fi sh, or in an insect. Each would be at a diff erent temperature, would have diff erent nutrients available to the bacteria, would contain diff erent competitor organisms, and would provide other diff erent stress challenges for the bacteria.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0ae522ce77f38d0e574b68d56214331964801924f45d74906135e8e191814936.jpg)



Figure 13.2 Regulatory network map of Escherichia coli. (Adapted from Amores GR et al. Sci Rep. 2017; 7(1): 16768. Published under CC BY 4.0.)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c2a847e0238cc1de449e8ac455ebda9e3a7530726939a8fba0139f7578044468.jpg)



Figure 13.3 Helix–turn–helix DNA protein binding domain structure. The major protein structure in DNA-binding proteins is the helix–turn–helix domain, made up of an α helix, a short stretch of amino acids, and another α helix. One α helix is able to bind to the DNA within the major groove, while the other α helix positions the structure.


## Studying responses often happens in pure bacterial cultures

Most of our experimental studies of bacterial responses to different conditions use pure laboratory cultures. Pure cultures enable the bacteria to be studied in a controlled manner, in which researchers can specifically design the experiments and examine the outcome of the results. This is not how the bacteria would exist in nature. Bacteria could grow alongside other bacterial species, mixed with various bacteriophages, eukaryotic microorganisms, biological surfaces, and an influx and efflux of various biological and inorganic material. However, through laboratory experimentation, it is possible to articulate the various regulatory networks that exist within bacteria that enable them to respond to changes in their local environment. 

In a pure bacterial culture, it is possible to manipulate the bacterial environment and control the experiment so that the outcome can be carefully monitored and understood. The regulatory pathways in the bacterial response to the change in the environment can be elucidated and resolved. Using such methods, genetic pathways and regulatory networks have been mapped for many bacterial regulatory systems. What started as a simple understanding of the lac operon has developed into more complex maps with interconnecting repressors, activators, and regulatory RNAs that orchestrate the bacterial response to change (Figure 13.2). 

## Two-component regulatory systems enable bacteria to respond to their environment

As discussed in Chapter 5, two-component regulatory systems have a histidine kinase and a response regulator. The histidine kinase autophosphorylates then transfers the phosphate to the receiver domain of the response regulator, the protein domain that receives the phosphate. Phosphorylation of the response regulator activates its output domain, the protein domain that regulates gene expression when activated. Some histidine kinases both phosphorylate and dephosphorylate their response regulator, activating and inactivating its regulatory activity. Response regulators can also become activated via a phosphorelay system, described in Chapter 5. Response regulators generally have an N-terminal response regulator receiver domain and a C-terminal effector domain that binds DNA when active. The response regulator receiver domain undergoes a distinct conformational change when phosphorylated and tends to favor the formation of dimers. DNA-binding protein regulators tend to be dimers. In general, DNA-binding protein domain structures include helix–turn–helix structures where two α helices are joined by a short stretch of amino acids, with one sitting in the major groove and the other positioning the protein (Figure 13.3). Dimers of helix–turn–helix domain-containing proteins are therefore more robust in their association and specificity in binding to DNA, making them ideal regulatory proteins. There are many variations on the helix–turn–helix structure, which stabilize and enhance the DNA–protein interaction. 

Receiver domains can also be present in proteins without DNA-binding activity in effector domains. The C-terminus can then have enzymatic activity that is activated and inactivated by the phosphorylation of the N-terminal receiver domain. The response regulator RNA-binding domain can prevent transcriptional termination at rho-dependent terminators. Response regulator enzymatic domains can include methylesterase, diguanylate cyclase, protein phosphatase, and phosphodiesterase. Some response regulators are regulated by anti-activator proteins, which alter the ability of response regulators to activate, regardless of phosphorylation. Anti-activators of response regulators stop the DNA-binding domain from binding to the promoter or stop it interacting with RNA polymerase. Due to the high degrees of homology between response regulators, they can be erroneously annotated as responding to environmental signals and controlling 

TAFigure 13.4 Two-component regulatory systems are involved in more than just gene regulation. As discussed in Chapter 5, response regulators of two-component regulators can have DNA-binding domains (DNAB) that are responsible for gene regulation (blue) in response to environmental signals. Additionally, response regulators can have other functions. Rather than DNA-binding domains, some of these proteins can have enzymatic domains, effectors (green), that are activated upon phosphorylation from the histidine kinase in the membrane (purple). Other response regulators have RNA-binding domains (RNAB) that are involved in transcriptional regulation (yellow) by modulating rho-dependent transcriptional termination. 

genes due to functions of other proteins when their actual active function is different (Figure 13.4). 

Mycobacterium tuberculosis is an intracellular pathogen that has 11 different two-component regulatory systems. The long-term survival of M. tuberculosis within the host requires the ability to respond to changing and adverse conditions. Some M. tuberculosis two-component systems regulate virulence, including regulation of production of cell wall lipases, phosphate uptake, aerobic respiration, and factors needed for intracellular infection and survival. They are able to scavenge nutrients within human host cells and avoid detection by the immune system. Fine tuning of the different regulatory networks within M. tuberculosis through the use of 11 different sensor kinases orchestrating their associated response regulators enables these bacteria to persist within the human body. 

## Bacteria decrease host glucose levels to impair the host immune response

As explored in earlier chapters, changes in the environment can be as simple as the differences in glucose levels, with the lac operon enabling the bacteria to make use of other available sugars when glucose levels are low (see Chapter 5). Bacteria can thrive in niches with high glucose levels. Indeed, diabetic patients with high glucose levels can have higher bacterial loads than those where their glucose levels are regulated. Bacteria can also respond to being within a host by lowering the hosts’ glucose levels, thereby impairing the hosts’ immune system. 

When bacteria infect a host, there are consequences for the host. The host reacts to bacterial infection, in general, by increasing antimicrobial activities and decreasing the availability of essential nutrients to the bacteria, including the host itself decreasing the availability of glucose. In this way, the host works to try to prevent the proliferation of the bacteria. At the same time, the bacteria work to circumvent these processes, so that they can persist and survive, including using means to acquire nutrients and avoid antimicrobial actions. A reduction in host glucose levels, both by the host and by some bacterial species, causes an impaired host immune response, which exacerbates and prolongs the infection. 

Bordetella pertussis infections, for example, are associated with low blood sugar. This is due to the bacteria targeting the beta cells in the host pancreas, inducing increased release of insulin relative to glucose. Controlled by a twocomponent regulatory system, B. pertussis secretes pertussis toxin, PTX, which is made of the A-protomer with the S1 subunit and the B-oligomer with the S2–S5 subunits. The B-oligomer binds to cell surfaces, causing various effects to host cells, including A-protomer-dependent binding to G-protein-coupled receptors (GPCRs) expressed on beta cells to stimulate insulin secretion. This increase in insulin reduces blood glucose levels, which is advantageous to the persistence of the bacteria (Figure 13.5). PTX is a complex toxin with various functions, causing a wide variety of biological activities in the human host. 

## Bacteria modulate the immune response using the Type 3 Secretion System

Within the host, it is important for the bacteria to be able to evade the host immune system in order to survive. To do this, some bacteria use their Type 3 Secretion 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/41cc53e8f25a3f3c36563d2dcec61d64781f397da9c7ac316a29373a0a7f9627.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f49c917c32b457238f417417e9b04ef241f6c3983f54b25de1329056945831a9.jpg)



Figure 13.5 Bordetella pertussis pertussis toxin, PTX, induces the release of insulin. The PTX toxin has many effects within the host, one of which is its effect on the pancreas beta cells (β), where the PTX toxin stimulates the release of insulin. The increase in insulin reduces blood glucose levels, suppressing the immune response.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1e8d7b8481b264e1e0d292517ddb40fa2ab4b8e7d24bbdc93a668f2d6f2e38af.jpg)



Figure 13.6 Salmonella use T3SS effectors to become engulfed by intestinal epithelial cells and resist lysosomal fusion. (A) The T3SS expressed on the surface of the Salmonella (B) inject effector proteins into the host intestinal epithelial cell, (C) causing the surface to surround the bacterial cell. (D) The bacterial cell is taken into the host cell within an SCV. (E) The T3SS releases other effectors within the SCV, altering its properties and preventing the lysosomes of the host cell from fusing with the SCV. (F) In some cases, vacuole division occurs at the same time as cell division of the Salmonella, increasing the number of SCVs within the host cell.


System (T3SS) to modulate the immune system (see Chapter 9). The T3SS at the surface of the bacteria is able to inject bacterial effector proteins into the host cells to change the way the immune system responds to the bacteria. This benefits the local bacterial population, including those that are not actually expressing the T3SS and its effector proteins. 

Salmonella uses its T3SSs, as presented in Chapter 9, to inject effector proteins into host intestinal epithelial cells, those lining the intestine. These effector proteins cause the host cell membranes to extend outward and engulf the Salmonella cells. The bacterial cells are then taken within the intestinal epithelial cells, where the bacteria are within a vacuole of host cell membrane, called the Salmonella-containing vacuole (SCV). The Salmonella T3SSs then inject other effector proteins into the vacuole, altering its structure and preventing the vacuole from fusing with the host cell lysosomes. The lysosomes contain lytic enzymes that are used to lyse bacteria; however, the Salmonella effector proteins block the fusion of the lysosomes with the vacuole, protecting the bacteria from lysis. The Salmonella can then safely undergo cell division within its vacuole in the host cell (Figure 13.6). Other studies have shown that it is possible for the vacuole itself to divide along with the Salmonella cell, increasing the number of vacuoles within the host cell and therefore increasing the number of lysosomes that would be needed to eradicate the engulfed bacteria, if they were able to fuse with the SCVs. 

## Some bacteria cheat and let others do all the work with their Type 3 Secretion Systems

The benefit of T3SS immune system modulation is enjoyed by the whole of the local bacterial population, not just those that are expressing the T3SS. The immune system in that area is suppressed, the bacteria in that area are safe from being killed by immune cells, and all of the bacteria enjoy the benefit. This means that there are bacteria in this local area that can “cheat.” This situation has been exploited by what has been called “cheater” mutants that lack the T3SS: either they completely lack the genes for the system or they are not expressing the proteins for the system. Therefore, these cells do not have the metabolic expense of making the T3SS and the effector proteins that are being injected into the host cells. They are reaping the benefits of the T3SS-mediated immune modulation by other cells without having the energy cost (Figure 13.7). Cheaters arise in the population by chance mutation. However, they can thrive only when they are in the minority. They are reliant on the rest of the bacterial population to modulate the immune system, so they can survive. 

It has been shown that Pseudomonas aeruginosa T3SS cheaters thrive in a mouse model of infection when co-infecting with the T3SS expressing P. aeruginosa. Non-virulent Escherichia coli can colonize the lungs of mice when 

TAthese bacteria co-infect with T3SS P. aeruginosa, which suppress the mouse immune response and enable the non-virulent E. coli to colonize. Similarly, Yersinia pestis is able to cause infection only when it is expressing its plasmidencoded T3SS, unless it is able to make use of the positive effects of another bacterial infection that is expressing T3SS-mediated immune suppression. 

In contrast, Salmonella enterica typhimurium induces inflammation with its T3SS to eliminate competitor microbes. Salmonella typhimurium cheaters also exist and can establish infection in mice when they are co-infected into a mouse model with T3SS-positive strains. In this case, these T3SS cheaters gain by growing faster than the T3SS expressing wild-type and by not being targeted by antibodies against the T3SS proteins and its effectors. In this way, the Salmonella T3SS cheaters avoid T3SS activation of the innate immune response. 

## A response might only be appropriate when the population is large

One bacterium expressing a toxin might not make a lot of difference. A large population of bacteria expressing a toxin is going to make a big impression. It is therefore important that there is a system in place for the bacteria to be able to tally the size of their population in a given location and tailor gene expression according to population size. This is referred to as quorum sensing, which was briefly discussed in Chapter 5. Quorum sensing phenotypes include biofilm maturation, competence for natural transformation, virulence, production of secondary metabolites such as antibiotics, motility, and sporulation, the process of forming bacterial spores resistant to environmental stress, and perhaps most spectacularly, bioluminescence (Figure 13.8). 

Bioluminescence is most commonly seen in aquatic organisms and is a key case of why scientific experimentation and exploration into all fields is critical to gaining an understanding that can lead to insights into human health. It could not have been predicted at the time that research into why the bobtail squid glows at night would lead to insights into why catheters and other medical devices can become colonized with life-threatening infections. Both are cases where bacteria are responding and expressing certain genes only in cases where their populations are large. Both are very closely related quorum-sensing systems, yet the connection between them could not have been predicted when the research began. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/378ea8be3b80d09f0266e6a99c521dac2db49ea56592ab495ee55c0ab45bec55.jpg)



Figure 13.7 Cheaters take advantage of other bacteria expressing T3SS. In the area of the host shown here, the host immune system has been suppressed by the effectors being secreted through the T3SS on the orange bacterial cells, allowing the bacteria present to grow. The purple cells are also growing, although they are not expressing T3SS. They are enjoying the benefit of their neighbors having modulated the immune system, without having to expend any energy themselves.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1519b8f879857d0371e7f136cc9aa5ab448488e805cfdc74ae22f2591c5912b6.jpg)



Figure 13.8 Quorum sensing. Quorum sensing is responsible for a variety of bacterial responses at the population level. Along with bioluminescence, there are an increasing number of traits that are attributed to quorum sensing. These phenotypes are advantageous when expressed as a large population, but can be energetically wasteful when expressed as lower numbers of cells.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b8076ef87a4a7877231df41e9784d3e7b5c0bd9db3b8792d6bd538340aa2ccf5.jpg)



Figure 13.9 Bioluminescence of the bobtail squid by A. fischeri. The squid has within its body a hospitable niche where the bacteria can grow and divide, reaching a large population size. When the bacterial quorum sensing system detects that there are enough bacteria present, the genes for bioluminescence are switched on, producing the characteristic glow of the bobtail squid. (From: wildestanimal/Shutterstock.com, with permission.)


## Quorum sensing makes a beautiful bioluminescent glow in the ocean and in the lab

Some sea creatures, such as the bobtail squid, produce a beautiful bioluminescent glow. These squid have special organs called photophores or light organs in their bodies that become colonized by bioluminescent bacteria such as Aliivibrio fischeri (formerly Vibrio fisheri). The squid have evolved to have this organ as a hospitable environment for the bacteria so that the sea creature can then harness the light production of the bacteria, which prevents the squid from casting a shadow at night that might give away its presence to predators. These two organisms therefore live in symbiosis, a long-term interaction between two different species. The A. fischeri bacteria do not produce their bioluminescent glow all of the time. Making light is metabolically expensive and there is little to no benefit of doing so when there are only a few bacterial cells, since there will be little to no light produced. Indeed, during the day when the light is not needed, the squid purges its light organs of most of the bacteria, thereby turning off bioluminescence. When quorum is reached, when there is a large population of bacteria present in the photophore organ, then the A. fischeri bacteria glow (Figure 13.9). 

## Quorum sensing is a process to tally the bacterial cells

Quorum sensing allows bacteria to tally the number of bacterial cells in the vicinity and discover how many other bacterial cells of the same species there are, assessing the presence and concentration of bacterial cells. This process has, essentially, three main parts. In the first, the bacteria make and secrete an autoinducer, which is a molecule that the bacteria can recognize. The types of autoinducers used vary by species and some bacterial species produce more than one type of autoinducer. The second part is to detect the changes in the external concentration of autoinducer. As more bacteria are present, there should be more autoinducer detected in the environment. In some species, autoinducers from other species can be detected, even when they themselves do not make and secrete autoinducers. In the third and final part, the bacteria regulate their gene expression based on the detection of the autoinducer. The regulatory proteins and genes regulated in response to quorum sensing differ by species and the requirements for the expression of genes as the bacterial population grows. Once the amount of autoinducer reaches a certain level, this indicates that the bacterial population has reached the threshold for gene expression regulation (Figure 13.10). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a3ba0c038d3a7f13ba9ac7974b29116c2c0c31f63aa1e099f0c3f92b937c956d.jpg)



Figure 13.10 Quorum sensing has three parts. (1) The cells make autoinducer (AI). (2) The cells sense AI. (3) The cells respond to a threshold amount of AI that indicates there are enough other bacterial cells around to turn on advantageous genes, such as those for bioluminescence.


TAAutoinducers are abbreviated as AIs and most in Gram-negative bacteria tend to be molecules like acyl-homoserine lactones, synthesized by LuxI (Figure 13.11). These types of AI-1 molecules are often able to diffuse freely across the bacterial membrane, allowing them to leave the cell, accumulate in the environment, and diffuse into other bacterial cells. Some larger variants of AI are actively exported from cells by efflux pumps. There are specific receptors for Gram-negative AIs that are in either the inner membrane or cytoplasm, which recognize the AI structure. When the Gram-negative AIs bind to these receptors, they are able to trigger regulation of gene expression of the Gram-negative quorum sensing regulon. This regulon is the set of quorum sensing regulated genes that are orchestrated together as one system, with some genes being activated and some being repressed. In addition, the quorum sensing regulon often includes the genes encoding proteins for biosynthesis of the signaling molecule. 

In Gram-positive species, the quorum sensing autoinducers are peptides of various lengths and modifications, autoinducing peptides abbreviated as AIPs (Figure 13.12). When there is high cell density of Gram-positive bacteria, the AIP binds to a two-component histidine kinase, which autophosphorylates and then phosphorylates and activates the response regulator. This response regulator activates transcription of the quorum sensing regulon. Some Gram-positive AIPs can enter back into cells as well as being present in the environment and in this way the AIP can directly interact with the regulation of gene expression, as well as through the two-component system. 

Quorum sensing can involve not just monitoring the growth of the bacteria’s own population, but also assessment of how many other bacteria there are around of other species. Interspecies quorum sensing involves a different autoinducer, AI-2, which is made by LuxS. Although there can be some chemical isomers and variations on the base structure, generally AI-2 is S-2-methyl-2,3,3,4-tetrahydroxy tetrahydrofuranborate (Figure 13.13). The cross-species communication possible through AI-2-mediated quorum sensing enables multi-species biofilms to develop and mature; however, other gene systems can be controlled by AI-2 signals as well. Indeed, AI-2 was first discovered through research into bioluminescence in Vibrio harveyi. It was observed that supernatants from cultures of other bacterial species were able to induce bioluminescence in V. harveyi. 

## Biofilms mature due to quorum sensing signals

Biofilms are dense bacterial populations that form on surfaces in a matrix that the bacteria generate of extracellular polysaccharides, DNA, and proteins. Perhaps one of the most important realizations to come from the discovery of quorum sensing was that the development of biofilms is orchestrated by the signals sent between bacteria via autoinducers within the growing population. The maturation and development of the bacterial biofilm relies heavily on quorum sensing signals and its disruption can be influenced by disrupting quorum sensing. In several species, experimental studies have demonstrated that without functional quorum sensing systems, bacterial populations cannot form effective biofilms. Due to their placement within the biofilm, some cells will experience limited oxygen and nutrients; therefore, careful regulation of genes is necessary for the survival of the population. 

One of the issues with biofilms is that they are notoriously difficult to eradicate, being tolerant to antibiotics. Bacteria have evolved biofilms to enable their survival, and this also happens to confer tolerance to the antibiotics that humans have started using against them. This means that although there is no genetic basis for resistance, there are physiological properties of the biofilm that are protective of the population as a whole that prevent killing of all of the bacteria by the antibiotic. Due to their properties, biofilms just happen to confer antibiotic tolerance. Regardless, it is believed that the density of the biofilm itself contributes to the observed tolerance of biofilms to antibiotics, as does perhaps the complexity of the extracellular matrix. However, antibiotics can be seen to penetrate through the biofilm, so this cannot be the whole of the reason that biofilms are tolerant to antibiotics. It is likely that the density of the biofilm and the extracellular matrix provide protection against the host immune response, rather than antibiotics. Additionally, the bacterial cells within the biofilm itself are in the stationary phase of growth or are very slow growing, which also makes them tolerant to antibiotic killing, referred to as a persister phenotype. This subset of cells within the biofilm is in a stationary phase-like state and is phenotypically distinct from the other bacterial cells in the biofilm population, resulting in antibiotic tolerance. Interestingly, bacterial cells that are released from biofilms tend to have higher tolerance than bacterial cells that have not been in the biofilm. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/7b21cd4f2e3cacb63232e98df8a6c6c7f70d3106dd5efc6b73e343cae2f47f7c.jpg)



Figure 13.11 Acyl-homoserine lactone from A. fischeri. Gram-negative AI-1 autoinducer molecules can vary in their structure, particularly the length of the side chain and substitution on the acyl chain.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e692cd8b20e49e91be053359fc2a473bbb033059139787cee798adc80ca263da.jpg)



Figure 13.12 Gram-positive autoinducer molecules are usually short peptides. Unlike Gram-negative bacteria, which make organic molecules based on acyl-homoserine lactones, the AIP autoinducers used by Gram-positive bacteria are short peptide molecules. They can be of various sizes and amino acid sequences, which may be further modified, and are recognized by twocomponent histidine kinases on the surface of the bacteria.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f590a6b70b7be767082a36befc8f37e25b0feab100e615ea498141e7a85757b1.jpg)



Figure 13.13 AI-2, the molecules of communication between bacterial species. AI-2 is made by LuxS. Different bacterial species can receive AI-2 from one another, thereby communicating as one microbiome community.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/75ae498bfea06ffe2b5f907486c9210ba07a558fce34dd4389a6297a631e48d5.jpg)



Biofilm stage 1: attachment



Figure 13.14 The first stage of biofilm formation: attachment to a surface. Free-living bacteria make contact with a surface and attach, using surface adhesins, as well as other surface structures such as pili or flagella to establish and maintain contact with the surface. Once in contact with the surface, cell division happens here, rather than as free-living organisms.


Persisters were first recognized in the 1940s, when it was observed that there was a small portion of some bacterial populations that could survive penicillin. These population variants were called persisters and were believed to be phenotypically different from the rest of the population, perhaps withstanding penicillin by the cell going dormant and not growing. Persisters are not mutants, but they are transiently and reversibly different phenotypically. They arise by stochastic events and enable the population of bacteria to adapt to fluctuating environments. In E. coli, the gene hipA encodes a toxin that inhibits translation. The HipA toxin therefore contributes to the formation of persisters by inhibiting cell growth, through inhibiting translation and putting the cells into a dormant state. About 0.1%–1% of cells in biofilms are persisters. 

## Quorum sensing has cheaters

As described for T3SS, there are also cheaters for quorum sensing systems. These are bacteria that do not participate fully in the quorum sensing system, yet which benefit from it. There are costs to individual cells cooperating in a population level activity, such as creating a biofilm or producing light through bioluminescence, but as a whole quorum sensing-induced gene expression benefits the bacterial population. The biofilm population is protected from the immune system and has a stable niche within the host. The bioluminescent population has a beneficial relationship with the host organism and a niche within the photophore where it is supplied with nutrients. 

However, there have been mutants discovered within quorum sensing communities that benefi t from these sorts of activities even though they do not participate. Such cheaters in P. aeruginosa lack quorum sensing and therefore do not receive signals and do not turn on the quorum sensing regulon genes, but they benefit from the production of beneficial factors by the rest of the bacterial community. It is believed that these P. aeruginosa cheaters would have a growth advantage in the host, particularly in the lungs of cystic fibrosis patients and on the mucosa, when colonizing alongside quorum sensing wild-type P. aeruginosa. 

Quorum sensing plays an important role in the switch between life within the human host and within the aquatic environment for Vibrio cholerae. The genes regulated by this process enable the bacteria to cope with the stresses of changing from an infectious state to that within the environment, using quorum sensing to identify the number of other V. cholerae in the vicinity. Despite the importance of quorum sensing in the natural transitions of this species, there are cheaters in this system, which make use of the secreted extracellular proteases released by quorum-sensing bacteria. 

## Going from free living to biofilm involves changes in gene expression

Bacterial biofilms develop in three stages, starting from free-living bacteria, which then attach to a surface. This attachment can make use of specific adhesins on the bacterial cell surface, as well as pili or flagella to adhere to the surface. Surfaces to which these bacteria attach can be biological or inorganic (Figure 13.14). Biofilms are a particular human health issue in medical devices, where they can form on catheters and indwelling artificial prosthetics. They can also form on living tissues, including in the intestines and on teeth as dental plaque, as well as on aquatic surfaces, such as rock, plants, and on the hulls of ships. Cell division then occurs here, on the surface. 

TAIn the second stage of biofilm formation, the cells grow into microcolonies that are attached to the surface. Exopolymeric substances hold the bacterial cells together, firmly attaching them to the surface and protecting the biofilm from host defenses and the environment (Figure 13.15). The extracellular matrix includes proteins, polysaccharides, and DNA. In addition to secretion of these, as the bacterial cells within the biofilm die and lyse, the cellular components such as DNA are released and contribute to the extracellular matrix. This matrix makes a slime on medical devices from Staphylococcus epidermidis and makes P. aeruginosa from the lungs of cystic fibrosis patients appear mucoid. Due to the three-dimensional structure of the biofilm, bacterial cells in different locations experience differences in gradients of nutrients, pH, oxygen, and quorum sensing signals. Some biofilms will form structures that extend out from the surface of the biofilm, away from the attachment surface, further varying the conditions to the different cells in the biofilm population. 

In the third and final stage of the biofilm, some of the cells detach from the colony into the surrounding medium. Often this occurs due to limitations in the availability of nutrients for the biofilm, as well as restrictions on the growth of the biofilm (Figure 13.16). Detachment can happen in one of two ways. Some of the cells can return to a motile, free-living form and be released from the biofilm through the breakdown of the exopolymeric matrix. These motile cells are then capable of going on to form new biofilms, starting from the first stage with attachment to a new surface. Alternatively, sections of the biofilm, still surrounded by the matrix, can break away from the established biofilm and seed new areas of the surface, allowing the biofilm to spread. 

## Biofilm dispersal is regulated by different elements between different bacterial species

In Staphylococcus aureus, the agr system is responsible for quorum sensing and biofilm dispersal. The genes of this system are present as one operon on the genome as agrB, agrD, agrC, and agrA, with a divergently transcribed RNAIII locus (Figure 13.17). The product of agrD is the precursor of AIP. This peptide is processed and secreted by the membrane protein AgrB. The autoinducer peptide is sensed by the two-component system AgrCA, where the sensor kinase is the membrane protein AgrC. The autophosphorylation of AgrC upon receipt of the AIP signal results in the transfer of the phosphate to the response regulator AgrA, which activates the transcription of the agr operon, increasing production of the AIP and the system to detect it, as well as activating virulence factors both directly and via RNAIII activation. RNAIII also represses the S. aureus regulatory protein Rot, which represses virulence factors, such as toxins. At low cell density, the agr system, working with RNAIII and Rot, permits biofilm formation, allowing biofilms to establish and reach high cell density before expressing virulence factors. As cell density increases, AIP levels increase, and biofilm dispersal is triggered in cells where virulence factor gene expression has been turned on. 

In Acinetobacter, nutrient abundance triggers cell release from the biofilm. When there is low carbon, the biofilm is more compact. Cyclic-di-GMP (c-di-GMP) levels induce transition from the biofilm state to a planktonic lifestyle in response to nutrients, low levels of nitric oxide, or low levels of oxygen. Nitric oxide is an important biofilm dispersal signal in several bacterial pathogens, including E. coli, S. aureus, and V. cholerae. Some cells are released from biofilms due to the actions of other bacterial species. For example, cis-2-decenoic acid is a short-chain fatty acid signaling molecule made by P. aeruginosa that disperses biofilms made by E. coli, S. aureus, Bacillus subtilis, and Klebsiella pneumoniae, thereby being involved in interspecies competition for niches and resources. 

The cells that are released from biofilms are distinct from free-living planktonic cells and from biofilm cells. For example, in P. aeruginosa the small regulatory RNAs RsmY and RsmZ are down regulated in dispersed cells and secretion genes are up regulated. RsmY and RsmZ bind to the regulatory protein 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d5b0e6f5182f4ee0bd93e852b6c0e41cf11453a6d87c1f2369d89be9cecaf014.jpg)



Figure 13.15 The second stage of biofilm formation: the development of the biofilm. The bacteria grow and divide, the colony spreading across the surface. The cells secrete proteins, polysaccharides, and DNA into the extracellular space, forming a matrix in and around the biofilm. The structure of the biofilm that develops has bacterial cells in very different locations within the biofilm that differ in their availability of nutrients and oxygen depending on whether they are close to the supporting surface or the outside of the biofilm.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/724d41ca375ca88aeeeb9b32e09363635440901f81e03577252698af260f044f.jpg)



Biofilm stage 3: detachment



Figure 13.16 The third stage of biofilm formation: detachment of cells from the biofilm. As the biofilm grows and develops, the size of the biofilm population can become unsustainable based on the nutrients available; therefore, some of the cells switch back to being able to return to a free-living lifestyle. Parts of the extrapolymeric matrix break down, enabling these motile bacteria to be released, where they can go on to colonize new areas. Additionally, parts of the biofilm, surrounded by matrix, can break free and seed new biofilms elsewhere.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fc6bdc9795177b71e0c54ae17ad7cf0b0720a109ea65c88bb66b40fd15b919a7.jpg)



Figure 13.17 Biofilm regulating agr quorum sensing system of S. aureus. The AIP of S. aureus that controls biofilm dispersal and virulence factor expression is encoded by agrD. The precursor peptide is processed and secreted by AgrB and detected by the two-component system AgrCA, which activates expression of the agr operon and RNAIII. This activates biofilm dispersal and virulence factors and inhibits the repressor protein Rot.


RsmA, which results in expression of genes associated with P. aeruginosa chronic disease, whereas, when RsmY and RsmZ are not present, RsmA positively regulates genes for acute disease. The RsmF regulatory protein also interacts with RsmY and RsmZ and regulates genes that switch between acute and chronic disease. It is likely the differences in affinity of the proteins RsmA and RsmF for the RNAs RsmY and RsmZ fine tune which genes are expressed in each of the P. aeruginosa disease states. Therefore, reduced levels of RsmY and RsmZ in cells dispersed from the biofilm would result in RsmA and RsmF positively regulating acute disease gene expression. In addition to differences in ncRNA expression, the antibiotic susceptibility of cells released from biofilms is known to be different from their free-living counterparts and more akin to the cells seen within the biofilm itself, adding further credence to the belief that it is not the structure of the biofilm that is aiding the bacteria in survival. 

## c-di-GMP plays a key role in biofilm regulation in P. aeruginosa

P. aeruginosa has three key receptors that sense levels of bis-(3′–5′)-cyclic diguanosine monophosphate (c-di-GMP): WspA, YfiB, and RocS1. To make c-di-GMP, P. aeruginosa has diguanylate cyclases, which make the c-di-GMP from two GTPs, and P. aeruginosa has at least five well-characterized diguanylate cyclases: WspR, YfiN, SadC, RocA, and SiaD. In addition, c-di-GMP is broken down by phosphodiesterases into pGpG (5′-phosphoguanylyl-(3′-5′) guanosine); P. aeruginosa has at least five of these that have been well characterized: BifA, DipA, RocR, MucR, and NbdA. In addition to the role quorum sensing plays in maturation of a biofilm, other systems are involved in biofilm formation. For example, in P. aeruginosa, the protein WspA senses growth on surfaces, which then triggers autophosphorylation of WspE. WspE phosphorylates WspR to activate this 

TAdiguanylate cyclase enzyme to make c-di-GMP. YfiB senses the cell membrane stress and activates YfiN to make c-di-GMP. The c-di-GMP levels regulate biofilm functions, such as synthesis of exopolysaccharides, adhesive pili and adhesins, secretion of extracellular DNA, and control of cell death and motility. 

High levels of c-di-GMP induce the biosynthesis of adhesins and exopolysaccharides. P. aeruginosa makes three secreted polysaccharides, Pel, Psl, and alginate. Motility is inhibited and therefore the formation of a biofilm is encouraged. Low levels of c-di-GMP induce quorum sensing systems and other regulators within the cells, causing down regulation of adhesins and exopolysaccharides, therefore enhancing motility and contributing to biofilm dispersal. Other environmental cues can induce biofilm dispersion, including starvation and low oxygen. Biofilms can also break up or shed cells that can colonize new areas. 

Working in concert with the c-di-GMP controlled systems to control biofilms and virulence in P. aeruginosa is regulation by the quorum sensing systems. An estimated 10%–12% of the P. aeruginosa genome is controlled by quorum sensing, using several different quorum sensing AI-1 molecules. LasI makes N-(3-oxododecanoyl)-L-homoserine lactone $( _ { 3 } { \mathrm { O C } } _ { 1 2 } – \mathrm { A H L } )$ ; OdDHL), which is detected by LasR. Once activated, LasR then activates elastase and endotoxin A. The enzyme RhlI makes the autoinducer N-butyryl-L-homoserine lactone $\left( \mathrm { C _ { 4 } } { \cdot } \mathrm { A H L } ; \ \mathrm { B H L } \right)$ , which is detected by the sensor RhlR. RhlR in turn activates the production of lectins (LecA and LecB), rhamnolipid, elastase, pyocyanin, chitinase, and pyoverdine. The proteins PqsA, PqsB, PqsC, PqsD, and PqsH make the autoinducer 2-heptyl-3-hydroxy-4-quinolone (PQS), which is detected by PqsR, in addition to directly interacting with other proteins in the bacterial cell. PQS is also incorporated into the cell membrane and there induces the production of outer membrane vesicles (OMVs) that contain active PQS capable of signaling cells. These OMVs are blebs of membrane that contain outer membrane protein and may also contain some cellular material, such as DNA fragments, in small parts of the membrane that have separated away from the bacterial cell. 

## Bacteria have their own immune system to protect them from bacteriophages

There has been a great deal in the popular media about the CRISPR systems and their potential capacity to edit the human genome, but for the purposes of bacterial genetics and genomics, we are fundamentally interested first in their origin, as a bacterial immune system. The clustered regularly interspersed short palindromic repeats (CRISPRs) and the CRISPR-associated genes (Cas) together help protect the bacterial cell from bacteriophages through the processing of RNAs and interaction of these RNAs and proteins. Bacteria have evolved this CRISPR–Cas system, which uses sequence memory, to protect the bacteria against bacteriophage infection and also against plasmids and conjugative elements. 

Within the bacterial genome there are CRISPR regions, with short direct repeats and spacer sequences between them. Preceding these elements is an AT-rich region. Associated with these repeats are the CRISPR-associated genes (Cas). To generate immunity to bacteriophages for the bacteria, the Cas protein complex incorporates bacteriophage sequences into the CRISPR locus. The bacteriophage sequences are put between the repeats of the CRISPR system in the genome as the spacers. Each spacer is added sequentially, thus the spacers are essentially a history of the bacteriophages encountered by the bacteria. When the Cas complex is activated, it destroys the recognized bacteriophage DNA that enters the cell (Figure 13.18). 

The CRISPR array (crRNA array) of repeats is transcribed from the genome and processed into individual CRISPR RNAs (crRNAs) (Figure 13.19). These crRNAs with spacer sequences and partial repeats are available to hybridize to complementary nucleic acids coming into the bacterial cell. If there is a complementary sequence in an invading bacteriophage or other invading DNA, then the spacer hybridizes to the DNA and this binding triggers degradation of the bacteriophage DNA bound by the Cas protein complex. The Cas1 dsDNA endonuclease and Cas2 dsDNA/ssRNA endonuclease are able to integrate new spacer sequences into the crRNA array, enabling the bacteria to recognize new bacteriophage sequences. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/86e1cc3610237641f1e9c36de61708bc011111342b1568e3e7ecdfe6ccbabae5.jpg)



Figure 13.18 The CRISPR–Cas system protects the bacteria from invading bacteriophages through recognition of the bacteriophage sequence. The segments of the CRISPR sequences and Cas proteins form CRISPR–Cas complexes within the bacterial cell. When a recognized bacteriophage invades the bacterial cell, the complementary sequence is hybridized by the CRISPR sequence within the CRISPR–Cas complex and targets the bacteriophage DNA for degradation. This protects the bacterial cell from the bacteriophage attack.


Some of the Cas proteins appear to have secondary or alternative functions, as well as their roles in immunity against bacteriophages. In Legionella pneumophila, CRISPR–Cas gene cas2 is involved in the acquisition of new spacers from bacteriophages, yet cas2 is also required for survival in amebae hosts. In Francisella novicida, CRISPR–Cas gene cas9 is a dsDNA nuclease that is required to repress production of bacterial lipoprotein BLP that induces an innate immune inflammatory response; therefore, cas9 is involved in immune evasion. Deletion 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/5594545d5c2bbd006b3a73da9405a7e2a4aeaa101a45a27eb3f875826e9b46ed.jpg)



Figure 13.19 The CRISPR array is processed into crRNAs that form CRISPR–Cas complexes.


The CRISPR array of repeats in the bacterial genome is transcribed into the pre-crRNA, a strand of RNA that has repeats and spacer sequences. This is cut at the repeats, such that each resulting piece has one spacer containing a sequence unique to a bacteriophage that previously invaded the bacterial cell. These crRNAs complex together with a Cas protein, ready to defend the bacterial cell from future bacteriophage invasion. 

TAof cas9 in Neisseria meningitidis affects adhesion to and invasion of host cells. Deletion of cas9 in Campylobacter jejuni reduces virulence. CRISPR–Cas systems have been demonstrated to inhibit biofilm formation and swarming motility in P. aeruginosa. 

## Key points

Bacterial cells are dynamic, changing in response to changes around them. 

Regulatory networks enable bacteria to respond by switching gene expression on and off in complex and overlapping ways. 

Two-component regulatory systems are the major means for bacteria to sense their environment and enact gene expression changes, including sensing the number of other bacteria in the vicinity as well as changes in nutrients and stresses. 

Two-component systems can also trigger activation of enzymes and transcriptional termination regulation, as well as gene regulation, through the use of response regulators with different effector domains. 

Bacteria can use T3SS to modulate the host immune system, allowing them to colonize and survive within the host; other bacteria can take advantage of this and cheat without having to make a T3SS themselves. 

Some bacterial behaviors are only advantageous when the bacterial population in the area is large; therefore, a quorum sensing system is used to tally the bacteria present. 

Quorum sensing is responsible for the spectacular displays in nature where sea creatures are able to glow with bioluminescence, making use of light production by bacteria that they host within special photophore organs within their bodies. 

Gram-negative bacteria commonly use acyl-homoserine lactone-based autoinducers, AI-1, for quorum sensing, while Gram-positive bacteria use short peptides, AIP, and interspecies quorum sensing uses AI-2. 

Quorum sensing regulates biofilm gene expression, switching on genes for the maturation of the biofilm community when there are sufficient bacteria present and having a role in dispersal. 

CRISPR–Cas systems have evolved as a sequence-based system to protect bacteria from invasion by bacteriophages; CRISPR–Cas complexes of crRNA segments and Cas proteins within the bacterial cell hybridize with bacteriophage DNA and target it for degradation to protect the bacterial cell. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Autoinducer</td><td>Microbiome</td><td>Receiver domain</td></tr><tr><td>Cas</td><td>Outer membrane vesicles</td><td>Saprophyte</td></tr><tr><td>Cheater</td><td>Output domain</td><td>Symbiosis</td></tr><tr><td>CRISPR</td><td>Persister</td><td>Tolerance</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 Using one example bacterial species, describe the different environmental changes encountered by this species to which it must respond. 

2	 Briefly, how do the pure bacterial cultures used in laboratory experiments differ from how the bacteria live in nature? 

3	 Building on knowledge of two-component regulatory systems from Chapter 5, draw an example system, including the different domains of the response regulator, how they function, and the structures involved. 

4	 Describe or illustrate how Salmonella can use T3SS effector proteins to evade the host immune system. 

5	 Briefly describe how “cheaters” are able to survive within the host without possessing functional genes needed for survival like those for the T3SS. 

6	 Describe, perhaps with illustrations, how bioluminescence occurs within aquatic organisms and contrast that with how it can be experimentally induced in a laboratory. 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

1 Two-component regulatory systems are often thought of in terms of regulation of gene expression via a DNA-binding protein that is phosphorylated and then binds to promoter regions in DNA. However, response regulators can have other functions as well. Explore and discuss the role of two-component regulatory systems in one bacterial species, where the response regulators are involved in cellular functions other than transcriptional regulation. 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

7	 Give an example of a gene or set of genes that it is important for a bacterial species to express only when a bacterial population has reached a critical threshold size. Explain why this gene or genes should not be expressed in a smaller population. 

8	 How many different types of autoinducers, in general, have been described? Which types of bacteria, for the most part, make each of these autoinducers and sense them? 

9	 What bacterial system is important for the development and maturation of biofilms? How could targeted inhibition of this system be benefi cial? 

10	 What is the difference between antibiotic resistance and the antibiotic tolerance exhibited by persister cells in biofilms? 

11	 When a bacterial cell is infected by a bacteriophage, what system protects the cell and how does it do this? 

12	 What can we learn about the history of the bacterial cell by the spacer sequences between the repeats in the CRISPR array? 

2 List some bacterial responses that are regulated by quorum sensing. Associate each with a bacterial species that uses quorum sensing to regulate this response, the quorum sensing genes involved, and the genes regulated. Indicate why this is beneficial to the bacterial population for that species. 

3 Regulation of biofilm dispersal is important for bacterial cells, but also is the subject of research into the control of infectious diseases. Using examples of current research as a guide, explore and discuss why it is believed that understanding and perhaps modulating biofilm dispersal signals may be important in controlling biofilm infections. 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4eb014cfcb62811db3c5948ae68ab05191d52b774260939053bda557999c10b9.jpg)


## Further reading

## Two-component regulatory systems enable bacteria to respond to their environment



Francis VI, Stevenson EC, Porter SL. Two-component systems required for virulence in Pseudomonas aeruginosa. FEMS Microbiol Lett. 2017 364(11). doi: 10.1093/femsle/fnx104. 



## Bacteria decrease host glucose levels to impair the host immune response



Freyberg Z, Harvill ET. Pathogen manipulation of host metabolism: A common strategy for immune evasion. PLoS Pathog. 2017 13(12): e1006669. doi: 10.1371/journal. ppat.1006669. 



## Some bacteria cheat and let others do all the work with their T3SSs



Czechowska K, McKeithen-Mead S, Al Moussawi K, Kazmierczak BI. Cheating by type 3 secretion system-negative Pseudomonas aeruginosa during pulmonary infection. Proc Natl Acad Sci USA. 2014; 111(21): 7801–7806. 





Price PA, Jin J, Goldman WE. Pulmonary infection by Yersinia pestis rapidly establishes a permissive environment of microbial proliferation. Proc Natl Acad Sci USA. 2012; 109(8): 3083–3088. 



## A response might only be appropriate when the population is large



Rutherford ST, Bassler Bonnie L. Bacterial quorum sensing: Its role in virulence and possibilities for its control. Cold Spring Harb Perspect Med. 2012; 2(11): a012427. 





Striednig B, Hilbi H. Bacterial quorum sensing and phenotypic heterogeneity: How the collective shapes the individual. Trends Microbiol. 2022; 30(4): 379–389. 



## Quorum sensing makes a beautiful bioluminescent glow in the ocean and in the lab



Verma SC, Miyashiro T. Quorum sensing in the squid-vibrio symbiosis. Int J Mol Sci. 2013; 14(8): 16386–16401. 



## Quorum sensing is a process to tally the bacterial cells



Thoendel M, Kavanaugh JS, Flack CE, Horswill AR. Peptide signaling in the Staphylococci. Chem Rev. 2011; 111(1): 117–151. 





Warrier A, Satyamoorthy K, Murali TS. Quorum-sensing regulation of virulence factors in bacterial biofilm. Future Microbiol. 2021; 16: 1003–1021. 



## Biofilm dispersal is regulated by different elements between different bacterial species



Davies DG, Marques CN. A fatty acid messenger is responsible for inducing dispersion in microbial biofilms. J Bacteriol. 2009; 191: 1393–1403. 





Fedtke I, Gotz F, Peschel A. Bacterial evasion of innate host defences – the Staphylococcus aureus lesson. Int J Med Microbiol. 2004; 294: 189–194. 



## c-di-GMP plays a key role in biofilm regulation in P. aeruginosa



Chua SL, Liu Y, Li Y, Ting HJ, Kohli GS, Cai Z. Reduced intracellular c-di-GMP content increases expression of quorum sensingregulated genes in Pseudomonas aeruginosa. Front Cell Infect Microbiol. 2017; 7: 451. 



## Bacteria have their own immune system to protect them from bacteriophages



Egido JE, Costa AR, Aparicio-Maldonado C, Haas PJ, Brouns SJJ. Mechanisms and clinical importance of bacteriophage resistance. FEMS Microbiol Rev. 2022; 46(1): fuab048. 





Makarova KS, Haft DH, Barrangou R, Brouns SJ, Carpentier E, Horvath P. Evolution and classification of the CRISPR-Cas systems. Nat Rev Microbiol. 2011; 9(6): 467–477. 





Watson BNJ, Steens JA, Staals RHJ, Westra ER, van Houte S. Coevolution between bacterial CRISPR-Cas systems and their bacteriophages. Cell Host Microbe. 2021; 29(5): 715–725. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/99d18ab4aa95cc19f453831186c35990ac5ccff5092257929831198dad4ae62a.jpg)


# Bacterial Adaptation

Chapter 

14 

The world around us is constantly changing and, in order to survive, living organisms have to be able to change as well. The availability of nutrients fluctuates and, as explored in Chapter 5, bacteria can adapt by altering the regulation of genes such as the lac operon in response to the presence of nutrients like glucose and lactose. There are many other nutrients needed by bacterial cells and they must adapt to the presence or absence of these nutrients, as well as the presence of competitors in the environment that need the same nutrients. 

Bacteria must also adapt to the complexity of their environmental niche, which may change in pH, temperature, or other physiological conditions. The adaptation to change is more than just response to the environment, it is also the ability to respond to specific and particular environments that are part of the organism’s lifestyle. These are the niches in which the species will most frequently find itself and within which it has evolved to thrive. The transitions between niches necessitate responses; therefore, adaptation and response go hand-in-hand, and adaptation to various niches is a part of evolution. Therefore, the whole of Part V is very much interrelated. In this chapter, some of what was explored in responses to Chapter 13 will be revisited in the context of adaptation and some of what will be explored in the context of evolution in Chapter 15 will be foreshadowed. Niche adaptation, cell cycle regulation, phase variation, antigenic variation, and other mechanisms that enable bacterial cells to adapt to and survive their surroundings will be explored. 

## Within a niche, bacteria have to adapt to their peers and other bacteria

Bacteria live in complex communities beside other microorganisms, sharing niches and competing for nutrients in dynamically changing environments. As a result, bacteria have to respond and adapt to the presence of these other bacteria, bacteriophages, fungi, and parasites. Depending on the niche, there may also be host cells present, including immune response cells in some cases, and potentially beneficial or harmful biomolecules in the environment. Some of the other organisms in the niche are their peers, daughter cells of the same bacterial population. Many are competitors for the same nutrients, which may ebb and flow from the environment due to physical conditions, as well as use by biological organisms. All of this variation in the microenvironment of the bacterial niche requires adaptation for survival, through either regulated responses or variations within the bacterial population such that some cells are able to thrive even when others of the same population are lost. 

Bacteria that have similar nutrient requirements will be in competition with one another when those nutrients are in limited supply. As the populations of the bacteria grow, the nutrients become depleted and competition increases. For example, within a host niche, one of the limiting nutrients that is essential for bacterial growth is iron; however, free iron in this niche is rare. To acquire iron in the host, many bacteria use iron-scavenging siderophore molecules, which are iron-binding molecules made by the bacteria and secreted into the environment. Some bacteria can make use of siderophores that are made by other bacteria, reducing the energy cost of the siderophore biosynthesis and robbing their c ompetitors of iron. Additionally, different siderophores have different affinities fo r iron that may make some species, or even some strains within species, more e ffective competitors (Figure 14.1). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1ec19fec0513b344bb85f0c6cce4c88f432a1a07dc8cea4881a55be22842fa4e.jpg)



Figure 14.1 Iron acquisition within a host niche. Free iron (Fe) in the niche is rare and it can be difficult for bacterial cells to acquire enough to survive. Therefore, some bacteria make siderophores, molecules that are able to bind iron and scavenge it from the host environment (red and orange spots). Different siderophores may have higher affinities for iron, giving some bacteria an advantage over others (orange spots). Some bacteria, “cheaters,” may make use of the siderophores made by other bacterial cells, saving themselves the energy of making their own siderophores.


Bacteria can also adapt to the presence of other bacteria in their niche by trying to kill them. This reduces competition for nutrients and releases the nutrients within the dead bacterial cells. Bacteria, including lactic acid bacteria such as Lactobacillus, produce bacteriocins. These are antimicrobial peptides of 30–60 amino acids in length and are encoded by the bacteriocin operon. I mmunity to the bacteriocin is conferred by an adjacent gene on the operon, p rotecting the bacteria that make the bacteriocin from their own antimicrobial p eptides. Bacteriocins act on the cytoplasmic membrane, generally of Gramn egative bacteria, disrupting the proton motive force essential for bacterial c ellular processes, including transport of nutrients across the membrane. It is p ossible for bacteria to evolve resistance to bacteriocins, generally through efflux or degradation of the antimicrobial peptide; however, bacteriocins are a highly effective means for bacterial cells to reduce or eliminate competitor bacterial cells. 

## GlcNAc has a role as a signaling molecule as well as being part of the bacterial cell wall

The bacterial cell wall, peptidoglycan, is made up of the sugars N-acetylglucosamine (GlcNAc) and N-acetylmuramic acid (MurNAc). During bacterial cell growth and division, GlcNAc is released from the cell due to the necessary remodeling of peptidoglycan that has to happen in order for the cell to expand and for the process of division to occur. The release of GlcNAc into the environment is therefore a signal that bacterial cells are dividing and can trigger neighboring bacterial cells to adapt to the presence of growing and dividing cells in their proximity. Quorum sensing was previously discussed in Chapters 5 and 13, whereby a signaling molecule is made, released, and sensed as an indicator of population size. In the case of GlcNAc, this is a molecule that is released as part of the process of bacterial cell growth and division. GlcNAc is used as a signaling molecule for bacteria to adapt to signals of growth from each other and other organisms. 

For example, the presence of GlcNAc stimulates antibiotic production in soil bacteria. Although we use antibiotics today to combat infectious diseases, these antimicrobial agents originally evolved as mechanisms to enable bacterial cells to kill neighboring bacterial cells that were their competitors. The signal that there are other bacteria around, the presence of released GlcNAc, therefore turns on the production of antibiotics. Likewise, the GlcNAc released from growing Gram-positive bacteria induces the production of toxins and virulence factors by Pseudomonas aeruginosa. Some bacteria take the GlcNAc signal as a sign to leave the niche and find a new place to colonize; Escherichia coli decreases the production of its type 1 fimbrial adhesins thereby increasing transmission to new hosts in response to the presence of GlcNAc. The presence of GlcNAc also reduces the production of Curli fibers and fimbrial adhesins, important for adhesion and biofilm formation, enhancing dissemination of the bacteria away from the competitors. 

## Competitor bacteria can be killed with specialized Type 6 Secretion Systems

As seen in Chapter 9, some bacteria use Type 6 Secretion Systems to target competitor bacterial cells; killing them reduces competition for nutrients and releases nutrients from the dead bacterial cells. A Type 6 Secretion System is a multiprotein surface structure made by some Gram-negative bacterial species that is able to directly inject toxins into host cells and bacterial competitors. In some ways this is similar to Type 3 Secretion Systems that inject effector proteins into host cells; however, the Type 6 Secretion System can also be used against other bacterial cells and competitor fungal cells, as well as against host cells. 

TAType 6 Secretion Systems inject toxins into competitor bacteria that degrade bacterial cell walls, disrupt bacterial cell membranes phospholipids, form pores in bacterial membranes, and degrade nucleic acids. As well as the effector proteins that are secreted by the system, bacterial cells with Type 6 Secretion Systems produce an immunity protein that protect the bacteria from its own toxins. Most Type 6 Secretion System effectors target Gram-negative competitor bacteria, which can include related bacterial species. 

For example, many of the bacterial species in the Order Bacteroidales colonize the human gut at the same time and compete for space and resources. By diversifying their metabolisms they can make use of different nutrients within the niche. However, Bacteroidales can also use Type 6 Secretion Systems and secrete toxins to eliminate the competition. 

## Caulobacter differentiate between motile and sessile cells

Caulobacter are a genus of bacterial cells that have a distinct cell cycle, which generates both motile swarmer cells that have flagella and stalked sessile cells that adhere to surfaces and are non-motile. Cells differentiate from being motile cells to sessile cells, with each cell type providing an adaptive advantage to the bacterial population in the aquatic environment in which Caulobacter are generally found. When a sessile cell divides, a sessile daughter cell remains attached to the surface and a motile daughter cell is released to the environment (Figure 14.2). The stalked sessile cells are optimized for adhesion to surfaces, nutrient uptake, DNA replication, and cell division, while the motile swarmer cells are optimized for motility via flagella and are able to disperse the bacteria, enabling them to colonize new niches. The swarmer cell can either grow the population in the local area when nutrients are abundant or go to new areas when nutrients become depleted. The swarmer cells also have adhesive pili associated with the flagella; as the swarmer cell transitions to becoming a sessile cell in its site of colonization, the flagella is lost and these pili attach to a surface and retract, bringing the cell close to the surface so that the stalk can form (see Figure 14.2). 

The cell cycle of Caulobacter is controlled by coordinated expression of the regulatory proteins CtrA, DnaA, GcrA, and CcrM. These are master regulator proteins that control regulons involved in the differentiation of the Caulobacter cells. The overlapping of the expression of the different master regulator proteins determines the expression of flagella, the adhesion of the sessile stalked cell to the surface, and the process of DNA replication and cell division (see Figure 14.2). Division generates one sessile stalked daughter cell and one swarmer cell. The stalked daughter cell remains sessile and it is here that CcrM, a DNA methyltransferase, acts. Swarmer cells are motile initially, but then become sessile cells as part of the cell cycle, due to the influence of the master regulator proteins (see Figure 14.2). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/50f60b5ee27401c9cc8c46219cf78b8e78bca9c0c2a672d04a1651cbd75d0053.jpg)



Figure 14.2 The cell cycle of Caulobacter is controlled by master regulatory proteins. The motile swarmer cell expresses the master regulator CtrA and starts to express DnaA. The cell loses its flagella, as shown in the second cell in the sequence. As DnaA is joined by GcrA, the motile cell becomes a stalked sessile cell and DNA replication begins. Levels of GcrA diminish as CtrA returns and cell division begins, with a flagellated daughter cell forming. The stalked cell remains, able to divide again to produce more flagellated daughter cells. The motile daughter cell is able to move to new areas before becoming sessile and starting a new cycle.



Figure 14.3 Caulobacter cell cycle master regulator gene expression. The master regulatory protein genes of Caulobacter activate and inhibit the expression of each other, providing feedback loops that orchestrate their expression and influence the timing of their presence within the swarmer and stalked cells of Caulobacter. The ☆☆ indicates the methylation site targeted by CcrM in the dnaA promoter. The arrows indicate interactions where the protein activates expression. The red blunt-ended lines indicate interactions where the protein inhibits expression.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d89d1c6a69c4d8196db12c88dd08611ac04e18e8c4f56d9ba44a90e5a12becef.jpg)


The control of the genes that regulate the expression and degradation of DnaA, GcrA, CtrA, and CcrM is regulated in an interconnected manner (Figure 14.3). In general, proteolysis ensures that the activity of proteins will stop at the right time, through degradation of proteins and therefore their inactivation. Proteins are synthesized by the cell and are cleared away by proteolysis, orchestrating the expression of gene products. In the Caulobacter cell cycle, DNA replication only occurs after CtrA is cleared from the cell and DnaA accumulates. In the gene expression cascade, the dnaA gene is transcribed and translated into DnaA, which initiates replication and regulates genes, including activating expression of gcrA. Accumulation of DnaA will also inhibit dnaA expression. As GcrA is expressed it regulates genes, including the expression of ctrA. CtrA represses the initiation of replication and regulates genes, including ccrM and ctrA itself. CcrM inhibits the expression both of itself and of ctrA and also methylates the promoter of dnaA. In this way, there are feedback loops within the expression of these key proteins involved in the Caulobacter cell cycle that orchestrate the development of the swarmer and sessile cell phenotypes and ensure efficient and tight regulatory control of the cell cycle stages. 

## Staphylococcus aureus secretes several proteins to inhibit host defenses as part of adapting its niche to its needs

Sometimes niche adaptation involves bacteria adapting a niche to their own needs. In the case of Staphylococcus aureus, the bacteria secrete a number of different proteins that change the host, making it more hospitable for the bacterial cells. S. aureus-secreted virulence factors inhibit opsonization, a host cell process of coating of the bacteria with antibodies or complement proteins to target the bacteria for phagocytosis. Immune cells, such as macrophages, are 

TAable to recognize opsonized bacterial cells, engulf them, and neutralize the threat to the host from the pathogens. Specifically, S. aureus protein A, which is present on the surface of these bacterial cells, binds to the Fc region of host antibodies and therefore inhibits appropriate antibody opsonization and phagocytosis of the bacteria (Figure 14.4). 

Complement activation is also inhibited by secreted S. aureus virulence proteins. The S. aureus collagen adhesion protein, Cna, inhibits complement component C1q, preventing its interaction with complement component C1r. In addition, staphylococcal clumping factor A, ClfA, targets complement component C3b for degradation by host complement control protein factor I. Taken together, S. aureus has evolved a set of proteins that are able to inhibit the host innate immune response and reduce complement-mediated killing and bacterial cell opsonization by complement. This enables the bacterial cells to control their host niche and make it more hospitable. 

S. aureus-secreted proteins also inhibit the immune response through lysis of neutrophils, thereby directly attacking the cells of the immune system. Specifically, staphopain protease ScpA inhibits the activation of neutrophils, while the SspB staphopain protease appears to target neutrophils for phagocytosis. In addition, the S. aureus aureolysin Aur is able to neutralize the host antimicrobial peptide LL-37 and complement component C3, providing further protection for S. aureus from host defenses. This wide range of factors listed, and others, all contribute to making the niche more hospitable for S. aureus, in a sense adapting the host niche to the bacteria, rather than the bacteria adapting to fit the niche. 

## Intracellular bacteria adapt to life inside the cells of the host

Many bacteria live within eukaryotic host organisms. Often these bacteria are living within the organism, but not within the organism’s individual cells. However, there are some bacteria that actually enter into the eukaryotic cells themselves, as intracellular bacteria. As mentioned in Chapter 3, these often have lower %G+C than extracellular bacteria. Some bacteria are facultative intracellular bacteria, which means they can live outside host cells the way the vast majority of bacteria live or they can live within host cells. Switching between intracellular and extracellular states requires adaptation, including switching between different mechanisms of nutrient acquisition, survival against host defenses, and stress responses to different niches. Some very specialized bacteria are obligate intracellular bacteria, which can survive only within host cells. Obligate intracellular bacteria often lack some metabolic and biosynthetic pathways and instead rely on the host cell for nutrients and ATP. These bacteria are so reliant upon other cells for their survival that they have to be grown in host cells to culture them in the laboratory, making experiments involving obligate intracellular bacteria such as Mycobacterium leprae, Coxiella burnetii, and Rickettsia spp. a bit more complicated. These cells still do adapt; however, the stimuli are now changes within the intracellular niche. 

Being intracellular means that these bacteria cannot be detected by host antibodies. Antibodies are proteins that are secreted by host immune cells, specifically targeting foreign antigens, such as the surface proteins and surface structures of bacteria. Antibodies circulate in the host and will bind to bacterial antigens they recognize, targeting the bacterial cells for elimination. Antibodies cannot enter host cells; therefore, they cannot find bacteria within host cells to target them for clearance by the immune system. Bacteria can hide from the antibodies by going inside the host cells, which is a distinct advantage for intracellular bacteria. 

Host cells are not without means of protecting themselves, however. The intracellular bacteria must protect themselves from host cell lysosomal enzymes and they must be able to scavenge nutrients away from the host cell in order to survive being inside the cell while hiding from the antibodies and the immune response. Legionella pneumophila, as an example, prefer to live within macrophages. Macrophage cells are professional immune cells that engulf and destroy bacteria, yet L. pneumophila induce their own uptake into macrophages and, once inside, the bacteria block the fusion of the lysosome (containing the lysosomal enzymes), with the phagosome (containing the L. pneumophila to escape destruction). Other species avert degradation by lysosomal enzymes by other means. Rather than blocking the fusion of the lysosome and phagosome, Rickettsia rickettsii destroys the phagosomal membrane and escapes into the cytoplasm, thereby avoiding fusion with the lysosome and digestion by the host cell. Listeria monocytogenes also escapes the phagosome into the cytoplasm before fusion of the phagosome with the lysosome and from here is able to spread to nearby host cells (Figure 14.5). Each of these processes is regulated by an adaptive response, which senses the uptake of the bacterial cell by the host cell and the presence of the bacterial cell in the phagosome, triggering the bacterial intracellular survival strategies. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f776f4d3dbc4555e2b9fb4b56a066a27ed2a88e724bcf4c236d37fb24a91e8f1.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fc30c7ed57fe1a1ba09002ac81927c0bf17897795f6178ead58dcf9ec02425c2.jpg)



Figure 14.4 S. aureus opsonization and protein A. (a) The host immune system makes antibodies against bacterial surface antigens. These antibodies have an antigen binding site at one end and an Fc region at the other end. Opsonization coats the bacteria with antibodies so the Fc region can facilitate phagocytosis and elimination of the bacteria. (b) S. aureus protein A on the surface of the bacteria binds the Fc region of host antibodies, preventing the antigen binding site of the antibody from properly binding to the bacteria and opsonizing the bacterial cells.



Figure 14.5 Survival strategies of intracellular bacteria. Intracellular bacteria use various strategies to avoid being killed within the host cell. Legionella pneumophila blocks fusion of the lysosome with the phagosome it inhabits. Rickettsia rickettsii and Listeria monocytogenes escape the phagosome into the cytoplasm before the lysosome fuses with the phagosome. L. monocytogenes is then able to spread to adjacent host cells.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b0dbb210e66a2c1913cd606311ea60f106d3c83103dde4e4e55dbbf6490a435e.jpg)


## Mycobacterium tuberculosis adapts both itself and its host

The only known niche for Mycobacterium tuberculosis is the human host. The life cycle of these bacteria is a delicate balance because they must evade the host immune system to survive. Part of their time is spent in a non-replicative state where they are resistant to the immune system and antibiotics that act on actively dividing bacterial cells. This stage of the life cycle can last for decades. To transmit to a new host, the M. tuberculosis must replicate, with the bacterial cells being transferred via aerosol. Once in the lung alveoli, the bacteria are phagocytosed by alveolar macrophages and dendritic cells. Within the phagocytic cells, the M. tuberculosis replicate, migrate to the host lymph nodes, and spread to infect additional macrophages. When the host adaptive immune response begins, the M. tuberculosis cells enter the non-replicative stage of their life cycle, establishing the characteristic chronic tuberculosis infection. 

M. tuberculosis have been shown to reside mostly within macrophage phagosomes, although they can be found in other cells and in the cytoplasm. There is also some heterogeneity in the nature of the phagosomes, suggesting that the bacteria are able to regulate their environment and adapt it to their needs, enabling the extreme longevity of this chronic infection. It is clear that M. tuberculosis can interfere with lysosome fusion and with phagosome acidification, as well as being able to modulate the phagosome environment according to the specifics of the host cell, length of infection, and location within the host. The M. tuberculosis gene icl, encoding enzyme isocitrate lyase, is strongly induced in vivo to enable the bacteria to utilize fatty acids as an energy source within the macrophages. The infection also induces elevated lipid metabolism in the human host. Therefore, the M. tuberculosis switches to a lipid metabolism as its preferred energy source and then induces the host to make more. 

TAIn some susceptible individuals, where the immune system is weakened or becomes weakened, the bacteria are able to replicate, sometimes only slowly. The macrophages containing these M. tuberculosis make granulomas that degrade into caseous centers with a characteristic cheesy appearance of tuberculosis disease. This caseating granuloma lung tissue progresses in the disease, breaking down and liquefying. The M. tuberculosis are able to rapidly replicate in the liquid environment and are transmitted to a new human host when the patient coughs, aerosolizing the liquefied disease matter. 

## Legionella adapt by knowing when not to grow

L. pneumophila has quite varied environments in which it can live, being found as an intracellular bacteria and as an extracellular bacteria. In freshwater ecosystems, L. pneumophila lives as biofilm or as free-living planktonic forms of the bacterial cells. However, these bacteria appear to replicate only within eukaryotic cells, such as Acanthamoeba castellanii, an ameba found in the environment. In the environment, the bacteria prefer to establish a parasitic relationship with protozoa, such as these ameba, because the L. pneumophila are then provided with a safe place to replicate, a source for nutrients, and protection from environmental stresses. L. pneumophila can also enter humans, inhaled in aerosols, where they infect and replicate in alveolar macrophages and cause Legionnaires’ disease. Infection of humans is, in many ways, accidental. Human macrophages are evolutionarily similar to the protozoan phagocytes, and L. pneumophila that have been growing in protozoa are readily able to infect human macrophages, whereas those grown on agar plates are not. Human-to-human transmission is rare, with cases of Legionnaires’ disease arising due to humancreated environmental sources where protozoa infected with L. pneumophila can thrive. Intracellular L. pneumophila are within a vacuole and there use serine as a carbon source to fuel replication and metabolism. When this amino acid is depleted, the stringent response turns on expression of virulence traits and protects the bacteria so that it can survive long-term stress and starvation in the extracellular environment. As discussed in Part II, bacterial cells respond to stress through coordinated regulation of sets of genes to combat the encounters with stress. Alternative carbon sources, including glucose, are used and the bacteria are able to escape into the environment ready to find a new host cell. 

The transition of the bacteria from its extracellular to its intracellular niches causes phenotypic changes in the bacterial cell. The intracellular L. pneumophila in the phagocytic protozoa and macrophages are replicative and metabolically active; however, the extracellular bacteria in the environment are motile, resistant to stress, and virulent. There are also some intermediate forms that have been reported, which presumably facilitate transition from one niche to another. Regulation of gene expression adapts the bacterial cell to the various hosts and niches. 

These bacteria can be found in extreme environments, such as water sources where the temperatures are at 0 °C and those where they are over 60 °C, as well as acidic conditions. They are readily able to adapt to these extreme changes in their environment and to detect whether the situation is hospitable for replication or if the situation calls for the expression of genes for motility, stress resistance, and virulence. 

## Group A streptococci within the host experience adaptation, mutation, and death

Group A streptococci (Streptococcus pyogenes) have been reported to switch from a virulent phenotype, SpeBhi/SpeA−/Sda1low, to a hypervirulent phenotype, SpeB−/ SpeA+/Sda1high, after about 3 days of growth in vivo. This switch is not reversible, and the original phenotype is gone from the population by day 7 of the infection. This change in phenotype is due to pressures from the immune system and selection for bacteria adapting to the host. Specifically, mutations in the CovRS two-component regulatory system are selected for, generating the hypervirulent phenotype. SpeB goes from being highly expressed in the virulent cells, SpeBhi, to being absent in the hypervirulent, SpeB−. The lack of SpeB in the hypervirulent group A streptococci preserves the activity of other virulence factors made by the bacteria. Sda1 goes from low-expression levels (Sda1low) to high-expression levels $\mathrm { ( S d a 1 ^ { h i g h } ) }$ in the hypervirulent bacteria. Sda1 is a potent DNase that protects the group A streptococci from neutrophil killing. SpeA is a toxin, which is not made in the virulent group A streptococci (SpeA−), but is produced in the hypervirulent bacteria (SpeA+). Therefore, the changes in expression of these three key virulence factors change the bacterial phenotype from virulent $( \mathrm { S p e B ^ { h i } / S p e A ^ { - } / \bar { S } d a 1 ^ { l o w } } )$ to hypervirulent (SpeB−/SpeA+/Sda1high). 

This is an interesting example because transcription studies have shown that the virulent bacteria attempt to adapt and survive in the host environment, but ultimately fail. Changes are seen in metabolism and stress response gene expression, but in the end, these bacterial cells become extinct in the bacterial population within the host. Only those with the covS sensor kinase mutations that generate the hypervirulent phenotype survive to the 7th day of in vivo growth conditions in the host niche. 

## Adaptation of the host to enhance the spread of infection

The insect endosymbiont Wolbachia infects reproductive tissues and spreads from mother to offspring through the cytoplasm of the insect eggs. The bacteria are able to influence the behavior of the host insect, causing adaptation of their host environment for the advantage of the bacteria. Because the Wolbachia are endosymbionts, they rely on the insect hosts and it is essential that they spread to new insect hosts to continue to grow as a population; therefore, mechanisms that increase their spread are key. The infection causes a reproductive issue for insects referred to as cytoplasmic incompatibility, where embryos from infected males and uninfected females die. Insects that are infected with Wolbachia also exhibit characteristic changes in reproductive behaviors, including male feminization, parthenogenesis, or male killing, that can negatively impact the reproduction of the uninfected population of insects. Infected female insects are likely to be more reproductively successful, being able to mate with infected and uninfected males successfully, increasing the spread of the Wolbachia. 

## Listeria monocytogenes can adapt to an intracellular or soil niche

L. monocytogenes lives in the soil as a saprophyte. This niche gives it ready availability to the nutrients of the dead and decaying plants and enables it to live its saprophytic lifestyle. From this niche, L. monocytogenes can find itself ingested by humans or animals and it is at this point that it takes on a pathogenic lifestyle and becomes a facultative intracellular bacteria. Inside host cells there is an upregulation of factors that allow cell-to-cell spread of the bacteria and allow bacterial replication within the host cell (see Figure 14.5). The cell-to-cell spread of L. monocytogenes protects the bacteria from the host immune system because the bacterial cells never emerge from the host cells. They spread from being within one cell to being within the next cell and are never exposed to the host antibodies. 

Within animals and humans, L. monocytogenes expresses proteins InlA and InlB that are internalins that help bacteria invade host cells. InlA binds E-cadherin on host cells. InlB binds the hepatocyte growth factor receptor on host cells. These two very specific host cell targets mean that the bacteria are able to bind their proteins to the surface of the host cell and then make use of the host cell’s own mechanisms to internalize particles. L. monocytogenes highjacks mechanisms already in place and uses them to bring itself into the host cell. In this case, the L. monocytogenes ends up inside the eukaryotic cell inside a vacuole, a small membrane-bound space. Once inside the host cell, L. monocytogenes escapes from the phagosome using LLO (listeriolysin O), which forms pores in the vacuole membrane, and phospholipases. 

TAThe process of L. monocytogenes adopting an intracellular lifestyle is regulated by the protein PrfA and is based on the available carbon sources in the different niches as well as differences in the temperature. Almost all of the intracellular processes of L. monocytogenes are regulated by PrfA and its expression is transcriptionally regulated by an RNA thermosensor that detects the host body temperature. This provides a clear means of detection of the animal and human niche versus the soil niche, based on temperature. There are 10 genes directly regulated by PrfA, with another 145 shown to be within the regulon by microarray and proteomic assays. Without PrfA, L. monocytogenes is 100,000-fold less virulent in mouse infection. Evidence has shown that PrfA is also involved in extracellular biofilm formation, suggesting that it has roles in intracellular and extracellular niche adaptation. 

## Environmental bacteria like Lactobacillus plantarum can live in a wide variety of niches

Niches within the environment are many and varied, and bacteria such as Lactobacillus plantarum can adapt to live within a wide variety of plants and in the gastrointestinal tracts of animals and humans, and are associated with fermentation processes including the production of sourdough and sauerkraut. Of particular interest is L. plantarum growth in pineapple juice, which is normally inhospitable for bacterial growth because it is acidic and has a high concentration of carbohydrates, fi bers, and phenols. The ability of this species to adapt to this and other diverse and inhospitable environments suggests that it has a high capacity for adaptation. 

Transcriptomic and metabolomic investigations showed that L. plantarum is able to sense the plant host environment and adjust its carbohydrate metabolism accordingly. This allows the bacteria to not only adapt to the niche, but also metabolically outcompete other bacteria, enabling it to thrive. 

Analysis of the genomic content of a collection of L. plantarum strains isolated from diverse environments showed no connection between genes and niches of isolation. This suggests that these bacteria have not restricted themselves to specific lineages adapted to certain niches, but rather that the bacterial species as a whole retain the ability to exploit a wide array of the available environment. This fits with the genus being the largest and most diverse of the lactic acid bacteria, a group of Gram-positive, acid-tolerant bacteria. 

## Pseudomonas aeruginosa adapts to live in a wide variety of environments

The human pathogen P. aeruginosa can adapt to live in a wide range of environments. In addition to humans, this species is able to infect nematode worms, insects such as fruit flies and moths, aquatic organisms including zebrafish, plants, and protozoa such as amebas, as well as residing in plant and environmental niches. Human infections tend to involve patients where the immune defenses are compromised in some way, such as the infection of burns and wounds where the protection of the epithelial layer is compromised; in contact lens wearers when the surface of the eye is scratched by the lens; and in cystic fibrosis patients, where the lungs accumulate mucus secretions. 

The chromosome of P. aeruginosa is millions of bases larger, at about 6.3 Mb, than other bacterial species such as E. coli and Bacillus subtilis at 4.6 and 4.2 Mb, respectively. Additional genetic material in P. aeruginosa includes additional biosynthetic enzymes, regulatory systems, transcriptional regulators, transport systems, and metabolic pathways. Therefore, the larger genome increases the diversity of niches and environments that can be survived and explored by P. aeruginosa. Plasticity in the genome, through deletion, loss, and diversification of genetic material in the genome, generates population diversity across the species. 

## Mastitis-causing bacteria Streptococcus uberis can adapt to different niches within cows

Streptococcus uberis causes bovine mastitis in dairy herds and is able to colonize the gut, genital tract, and mammary glands of cows. It is an opportunistic pathogen; therefore, S. uberis is capable of living a non-pathogenic lifestyle and taking advantage of a situation for pathogenicity when the opportunity arises. Analysis of its genome suggests that it has genes that would allow it to adapt to different environmental niches with different metabolic options available. 

Analysis of the genome shows that the metabolism of S. uberis is well adapted to make use of the products arising from rumination of plant materials in the bovine gut and it also well adapted to make use of nutrients available in bovine mammary glands during lactation. These genomic features make the species distinctly different from the other members of the Streptococcus genus and uniquely adapted to the niche in which S. uberis is found. 

Several distinct types of S. uberis are often isolated from the same herd of dairy cows; therefore, cases of mastitis arising are not due to single outbreak strains. S. uberis can be found not only in body sites of the cattle, but also in feces, bedding, and samples from the pastures; however, it appears that the bacteria are not able to persist for very long in the environment. The disease therefore seems to arise as an opportunistic infection, with the bacteria remaining for a short time in the environment, until they are able to colonize a host and establish themselves in a permissive niche within the cow. If that niche is the mammary glands of a lactating cow, then mastitis can develop, but disease need not be the outcome for S. uberis, with disease depending upon the niche within the bovine that is colonized. 

## Bacteria adapt to avoid recognition by the host immune system through antigenic variation

Host immune systems learn how to recognize everything that is part of itself, therefore enabling them to identify invaders such as bacteria by their surface structures. Using antigenic variation, bacteria change their surface proteins and other structures to attempt to avoid recognition and evade the host immune system (see Chapter 12). Antigenic variation allows bacteria to stay within a host for an extended period and to re-infect a host that it has previously infected. The proteins and structures on the bacterial surface that can be recognized by the immune system are antigens and these are targeted by host antibodies that are specifically made to bind to the antigen. Once the host has made an antibody against an antigen, it will be able to quickly mount an immune response targeting that antigen again in the future. Therefore, it is essential for the adaptation of the bacteria that they are able to alter their antigens. 

Antigenic variation is about adaptation of the population to avoid the immune system. The changes to the surface antigens enable the bacterial population to survive but not the individual bacterial cells, some of which will still be recognized by the immune system. 

Through antigenic variation, the bacterial population continually alters its surface, making it difficult for the immune system to eliminate it. There are several different mechanisms by which bacteria can change their antigens, including gene conversion, where recombination within the chromosome alters the sequence of an expressed gene. 

## Several different species use gene conversion as a mechanism of antigenic variation

Anaplasma marginale, a cattle pathogen, generates thousands of outer membrane protein variants in its bacterial population. The major antigens on the surface of A. marginale are Msp2 and Msp3, which each have hypervariable regions that make them quite diverse antigenically. Elsewhere in the genome are loci that encode multiple alternative hypervariable regions that are not expressed; these 

TAare silent cassettes (see also Figure 12.23). Recombination of these sequences into the Msp2 or Msp3 expression sites generates antigenic variation of these surface structures (Figure 14.6). 

Borrelia burgdorferi expresses different forms of the VlsE surface lipoprotein and avoidance of host immune system recognition involves gene conversion of vlsE. The vlsE gene is located close to the right telomere end of the linear plasmid lp28-1 of B. burgdorferi preceded by a 51 base pair (bp) inverted repeat and 15 silent vls cassettes. The host immune response is able to recognize the expressed VlsE and therefore kills off most of the bacterial population, with the exception of those bacteria within the population that can escape immune recognition by expressing a variant lipoprotein (Figure 14.7). 

Neisseria gonorrhoeae pilin antigenic variation is the result of recombination between silent copies of the pilin sequence in the genome, pilS, and the expression locus, pilE. This system has been extensively studied in this species and in the related species Neisseria meningitidis. The changes to the pilE locus have been shown to be as small as one nucleotide or as large as the entire replacement of the pilE sequence with that of a pilS locus (Figure 14.8). 

These alternative sequences, the silent cassettes present in these unrelated species that share a common mechanism of antigenic variation, do not simply swap with the expression locus. The recombination events between the expression locus and the silent cassettes occur progressively over many bacterial generations, which generates mosaic sequences, combining portions of sequences from different sources. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/66c7e7c8bdc4f134d51fbd3acbcc1ebe06309a0ba8fea19f0cfd45b17a1b9e06.jpg)



Figure 14.6 Anaplasma marginale msp2 expression locus and alternative hypervariable regions. Antigenic variation of Msp2 occurs through recombination between the alternative hypervariable regions (silent cassettes) and the expressed msp2 locus (expressed gene).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/5825b1cdb084f370032101861f7b8d4669c00211583e4ca4e4f820b377bde065.jpg)



Figure 14.7 Borrelia burgdorferi vlsE gene and vls cassettes. At the right telomere end (loop) of the linear plasmid lp28-1 of B. burgdorferi is the vlsE gene encoding the VlsE lipoprotein. Antigenic variation is achieved through gene conversion with sequences from one of the 15 silent vls cassettes, separated from vlsE by a 51 bp inverted repeated (IR).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/be841c86cfdd689a07193725439f02614ab34e79b70b59fcb826b825cbd9a4e2.jpg)



Figure 14.8 Neisseria gonorrhoeae pilE/pilS antigenic variation system. The PilE pilin protein is encoded by the pilE gene. Antigenic variation occurs through recombination with the pilS silent cassette sequences present elsewhere in the chromosome (indicated by //).


## Phase variation is an important means of adaptation, but is not a means of response

The expression of some genes is switched on and off via the mechanisms of phase variation (see Chapter 12). Phase variable expression is not in response to a change in the environment or a stimulus and cannot be controlled by the cell. Phase variation is a programed random event, referred to as stochastic, which means that within the whole population of bacterial cells some of the phase variable genes will be switched on and some will be switched off and it is the fitness of the cells themselves that will determine whether they survive. Only a portion of a bacterial population needs to survive. If a particular phase variation combination provides those cells with an adaptive advantage, then they will be selected for, while others in the population are selected against. Some antigens can be switched on and off in their expression by phase variation, but critically, unlike mechanisms of antigenic variation, phase variation is always reversible (see Figure 12.22). Not all phase variation changes the expression of antigens; some phase variation is also involved in other aspects of adaptation, including stochastic switches in the bacterial population that confer selective advantages. For example, the Helicobacter pylori phase varies restriction–modification systems. This places sets of genes under the regulatory control of a single phase variable gene, the modification component of the restriction–modification system, forming a phasevarion. Just as a regulon is controlled by a regulatory protein, a phasevarion is controlled by the switching of a phase variable gene. The H. pylori phasevarions enable the bacterial population to take advantage of the microenvironments encountered within the host. 

There are various genetic mechanisms of phase variation that switch gene expression transcriptionally or translationally via sequence inversions or simple sequence repeats (see Chapter 12). Phase variation can also occur due to epigenetic mechanisms, such as methylation of gene expression regulatory regions. Most phase variation does not involve transposition or recombination because these processes are not precise and therefore not reversible back to exactly the original sequence. However, inversion of segments of DNA and the insertion and excision of a few specific IS elements are examples of reversible and therefore phase variable transposition events. 

In Moraxella bovis and Moraxella lacunata, DNA inversion switches expression of type IV pili. This is a phase variable event that also achieves antigenic variation by switching between expression of the TfpQ and TfpI pili. In Bacteroides fragilis, there are eight loci that encode eight different capsular polysaccharides that are each controlled by phase variation by an invertible switch. Mycoplasmas generate surface diversity through phase variable expression of the vmcABCDEF genes. This creates a dynamic surface with adaptive differences in expressed proteins. The population is therefore stochastically generated to be diverse with cells within the population variously expressing combinations of Vmc lipoproteins on their surfaces. 

## Small noncoding RNAs also have a role in enabling bacteria to adapt

Small noncoding RNAs (ncRNAs) regulate gene expression, as explored in Chapter 4. Their production requires less energy than the biosynthesis of proteins, and regulatory RNAs are able to act faster than protein regulators in altering expression. Small ncRNAs have an integral role in bacterial adaptation, as a result. As discussed in Chapter 4, small regulatory RNAs impact bacterial gene expression via several mechanisms. 

ncRNAs have a key role in adaptation to the host immune response, to transition to an intracellular lifestyle, and to stress responses. For example, in the Salmonella-containing vacuole mentioned in Chapter 13, where the Salmonella are held within the host cell in a bacteria-modified vacuole, there are two ncRNAs within the bacteria called RfrA and RfrB that control expression of genes important for intracellular survival. Homologues of these ncRNAs are seen in Brucella, where they are called AbcR1 and AbcR2, which together contribute to growth in macrophages and chronic infection. 

The small ncRNAs are also likely to be involved in adaptation to hostile environments introduced by humans, such as the use of antimicrobial agents 

TAagainst infectious diseases. Studies in S. aureus show a correlation between ncRNAs and their impact on gene regulation with the exposure of the bacteria to the antibiotics vancomycin, linezolid, ceftobiprole, and tigecycline. This suggests that the ncRNAs are able to influence the expression of genes within the bacteria that may be able to increase the resistance of the bacteria to these antimicrobial agents. The NrrF ncRNA in N. gonorrhoeae also influences antimicrobial resistance. NrrF has been shown to reduce the levels of mtrF mRNA in N. gonorrhoeae, which reduces the ability of these bacteria to achieve high-level antimicrobial resistance using the MtrCDE efflux pump, particularly in low iron conditions. In E. coli, the DsrA ncRNA triggers expression of the MdtEF multidrug efflux pump through positive control of the alternative sigma factor σS. The MdtEF efflux pump decreases the susceptibility of E. coli to a range of antibiotics and, in addition, the DsrA ncRNA regulates capsule biosynthesis and Type 3 Secretion System genes in the locus of enterocyte effacement (LEE). 

## Key points

In a niche, bacteria not only have to adapt to the environment, but also to the other microorganisms that are present, plus any immune cells or antimicrobials that may be in the niche. 

Many Gram-negative bacteria have Type 6 Secretion Systems and use them to get rid of competitor bacteria by injecting them with effector proteins and killing them. 

Different bacterial species have different strategies for avoiding the host immune system, including antigenic variation, capture of host antibodies to prevent them properly binding, and hiding within host cells, among others. 

When bacteria adapt to a new niche, only a portion of the population needs to survive and thrive. 

Analysis of the genes within the bacterial genome can indicate whether the bacteria have the capacity to adapt to a wide variety of environments or if they have a restricted range. 

To avoid recognition by the immune system, some bacteria have antigenic variation mechanisms that have one expressed gene and several silent cassettes that can provide alternative genetic sequences. 

Phase variation is an important mechanism of adaptation used by some bacterial species to randomly switch on and off expression of a specific set of genes. 

Small noncoding RNAs (ncRNAs) have key roles in adaptation and are able to act more quickly than protein regulators in enacting expression change in the bacterial cell. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Antibody</td><td>Internalins</td><td>Phagocytosis</td></tr><tr><td>Antigen</td><td>Intracellular</td><td>Phagosome</td></tr><tr><td>Bacteriocin</td><td>Lysosome</td><td>Siderophore</td></tr><tr><td>Gene conversion</td><td>Opsonization</td><td>Vacuole</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 What kind of challenges might bacterial cells encounter to which they must adapt? 

2	 Why are siderophores needed by bacteria? What is the advantage of expressing high-affinity siderophores? What do siderophore “cheaters” do? 

3	 What two systems discussed in this chapter do bacterial cells possess to eliminate competitor bacteria? Briefly, how do they work? 

4	 Draw the Caulobacter cell cycle including cell morphologies, master regulatory protein control, and major cellular events. 

5	 Which are more difficult to culture in a laboratory, obligate intracellular bacteria or facultative intracellular bacteria? Why? 

6	 The terms antibody and antigen are frequently confused. Identify three ways that you can differentiate and distinguish these terms and the importance of the interactions between antibodies and antigens. 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

Explore in more depth the ways in which Staphylococcus aureus subvert the immune system and therefore make their niche more hospitable. Discuss the genes and expressed proteins involved and the regulation of expression as adaptation to the host and its immune response. 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

7	 Where are Legionella pneumophila found? Where do they replicate? How are intracellular and extracellular L. pneumophila different? 

8	 What are the different ways various bacterial species can avoid digestion by host cells following phagocytosis? 

9 Listeria monocytogenes is able to adapt to living in a human or animal host or living in soil. How does it sense which niche it is in and which regulatory mechanisms are involved in determining this location? 

10	 What evidence is there that Lactobacillus plantarum is able to grow in a variety of environments? 

11	 How does the genome size of Pseudomonas aeruginosa compare to other bacterial species? What accounts for this genomic difference and how does this benefit P. aeruginosa as a species? 

12	 Draw an example of a locus that generates antigenic variation through gene conversion. Show how the expression locus will change the antigenicity of the expressed protein following recombination. 

2	 In this chapter, two different strategies were presented for avoiding recognition by the immune system, antigenic variation and survival intracellularly. Using examples of species that use these strategies, discuss the benefits of possessing both antigenic variation and the ability to hide within host cells. 

3 Several examples of bacterial adaptation have been presented in this chapter. Select a bacterial species of interest and investigate how it adapts to changes in its surroundings, whether it is found in multiple environments that present the bacterial cells with very different physiological challenges or it adapts to changes that occur within its niche. 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/22e62393a83d11b5eebe61ac4d00e9d3e479d4bf8195097b9940fa2897cdf94b.jpg)


## Further reading

## Competitor bacteria can be killed with specialized Type 6 Secretion Systems



Mariano G, Trunk K, Williams DJ, Monlezun L, Stahl H, Pitt S J, Coulthurst S. A family of Type VI secretion system effector proteins that form ion-selective pores. Nat Commun. 2019; 10: 5484. 



## Staphylococcus aureus secretes several proteins to inhibit host defenses as part of adapting its niche to its needs



Guerra FE, Borgogna TR, Patel DM, Sward EW, Voyich JM. Epic immune battles of history: Neutrophils vs. Staphylococcus aureus. Front Cell Infect Microbiol. 2017; 7: 286. 



## Intracellular bacteria adapt to life inside the cells of the host



Oliva G, Sahr T, Buchrieser C. The life cycle of L. pneumophila: Cellular differentiation is linked to virulence and metabolism. Front Cell Infect Microbiol. 2018; 8: 3. 



## Group A streptococci within the host experience adaptation, mutation, and death



Aziz RK, Kansal R, Aronow BJ, Taylor WL, Rowe SL, Kubal M, Chhatwal GS, Walker MJ, Kotb M. Microevolution of Group A Streptococci in vivo: Capturing regulatory networks engaged in sociomicrobiology, niche adaptation, and hypervirulence. PLoS One. 2010; 5(4): e9798. 



## Bacteria adapt to avoid recognition by the host immune system through antigenic variation



Palmer GH, Bankhead T, Seifert HS. Antigenic variation in bacterial pathogens. Microbiol Spectr. 2016; 4(1): 10.1128. 



## Phase variation is an important means of adaptation, but is not a means of response



Gor V, Ohniwa RL, Morikawa K. No change, no life? What we know about phase variation in Staphylococcus aureus. Microorganisms. 2021; 9(2): 244. 





Phillips ZN, Tram G, Seib KL, Atack JM. Phase-variable bacterial loci: how bacteria gamble to maximise fitness in changing environments. Biochem Soc Trans. 2019; 47(4): 1131–1141. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b1431e4a6577486f2cd289ad5b514d0575e0483a68dc2cf9c8aa8df27b3db821.jpg)


# Bacterial Evolution

Chapter 

15 

Evolution of bacteria encompasses the ability to respond and adapt. Evolution is the survival of the population by using what has already been obtained in the genetic material. Bacterial genomes can evolve slowly. They have the potential to be very stable, to be very slow-changing, and to have only a few base pair changes appear in their genome over thousands of generations. DNA replication can have very high fidelity, enabling the genome to be copied accurately from generation to generation. In contrast, bacterial genomes can also evolve very quickly in a very short time span, with bacterial genomes having the capacity for mutations to occur and to be tolerated, so long as they provide a selective advantage, or at least do not provide a disadvantage to the bacterial cell or the bacterial population. Changes in the bacterial genome can arise during evolution via mutation and horizontal gene transfer and recombination. 

As genomes evolve and bacterial populations are acted upon by natural selection, it is possible to see how evolution has influenced the diversity of the bacterial phylogenetic tree. Due to their short generation times, it has also been possible to study the evolution of bacteria as it happens. 

## Evolution can be studied within bacterial cultures

Both the stability of the bacterial genome and its capacity to change have been the focus of genomic research for quite some time, particularly in the model organism Escherichia coli. Of note are the long-term evolution experiments conducted in Richard Lenski’s laboratories at Michigan State University, where E. coli cultures have been maintained and studied for several years, including phenotypic and genomic studies of mutants that have spontaneously arisen over time (Figure 15.1). This research group grew the same 12 cultures of E. coli continuously from February 1988 to May 2022, equating to 75,000 bacterial generations, and this experiment is still ongoing. In June 2022, the LTEE (E. coli Long-Term Evolution Experiment) was passed on to Jeffrey Barrick’s laboratory at the University of Texas at Austin. The LTEE started with two E. coli, strains REL606 and REL607, which are isogenic apart from REL607 having a spontaneous mutation enabling it to use the sugar l-arabinose. Isogenic strains have otherwise identical backgrounds, making them good candidates for comparative studies. In the Lenski LTEE, 12 cultures, six of each strain, are transferred into fresh media daily. After 75 days, cultures are preserved in freezer stocks and checked for contamination by plating (see Figure 15.1). Assessments of changes to the genome and phenotype can be done at any time during the experiment. 

The relatively short generation times of bacteria enable researchers to study genomic changes over many generations of the organisms, which cannot be achieved in the same time frames in eukaryotes. What the Lenski experiment has achieved in 30 years would take 1,518,000–2,277,000 years to study in humans (generation time 22–33 years), 13,270 years to study in mice (generation time 10 weeks), and 1,324 years to study in Drosophila (generation time 7 days). Evolution experiments in bacteria have thus provided tremendous insight into evolution in general, not just for bacteriology. In addition to E. coli, evolution experiments have been conducted on several other bacterial species, including Pseudomonas spp., which have large complex genomes with several overlapping regulatory systems, which are important for adaptation to various niches, as discussed in Chapter 14. 


Figure 15.1 Experimental evolution experiments. Richard Lenski’s research group has been growing E. coli cultures continuously since February 1988. These E. coli started from a single culture and have been through over 50,000 generations. The experimental design involves the growth of 12 cultures that are continuously maintained. There are six cultures of E. coli REL607, which is Ara+, and six cultures of the isogenic strain E. coli REL606, which is Ara−. Each day 0.1 mL of media containing growth from the previous day’s culture is transferred into 9.9 mL of DM media with glucose and grown at 37 °C with shaking. Each 75th day, freezer stocks are made of each culture and the cultures are checked for contamination by inoculating some of the culture onto TA plates and incubating these at 37 °C to confirm that only E. coli are growing.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/be9dfabdab745eb41d481fa84849d178c9ed0faeeaff1e1578b934d615a745b0.jpg)


Much of what we know about the rate at which evolution occurs comes from laboratory evolution experiments and from observations of evolution happening in strains isolated from their natural environments. There is no one universal rate at which mutations will occur within a bacterial genome and therefore predictions of bacterial evolution need to be made on a species by species basis and in some cases a strain by strain basis. Variations in mutation rates within a species and the ability to control mutation rates can influence the evolution of different bacterial strains within a species. 

## Bacteria can evolve within the host and we can see this happen with sequencing technologies

Advances in genome sequencing have revealed two important and previously often overlooked aspects of microbiology. The first is that bacteria can evolve within the host. Several studies have been done that have shown the within-host changes to various bacterial genome sequences over time, revealing the mutations that occur and the phenotypic implications (Figure 15.2). In one study, the genome sequences of Burkholderia pseudomallei chronic infections from seven cystic fibrosis patients were analyzed over a period of time, with samples collected at about 4 months and 55 months apart. This revealed changes to the genomes including mutations resulting in antibiotic resistance, adaptations to survive in the host, and reduction in virulence leading to persistence of the infection. 

The second important aspect of microbial infections often previously overlooked is that a host can be infected with two (or more) different isolates of the same species. Often in the diagnostic laboratory a single organism is identified as infecting the host, yet it is known that patients can be infected with more than one type of bacteria of the same species at the same time. This has become more apparent with whole-genome sequencing (Figure 15.3). When we look at an infection in detail, often with genome sequencing, we can see that although the patient has the symptoms of one infection, it may actually be caused by more than one strain of the same species. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/15beb35bf733a1d33943c8fa35a7e5bf064d23033c035af3a2f6623971109279.jpg)



CAFigure 15.2 Within-host evolution of bacteria. Genome sequencing has enabled researchers to monitor the changes to the bacterial genome that occur within the host during the course of the infection. In patients with a chronic infection (or other long-term infection), the bacteria are isolated at various times during the course of the infection in a single patient and genome sequenced. Whether as complete circular genomes (shown here) or unassembled sequence reads, the data is comparatively analyzed to investigate the within-host evolution of the bacteria.


Together, these two important aspects of bacterial infection set up a tremendous opportunity for within-host evolution. The basic mutation rate of the bacterial species will provide a base rate at which the bacterial species can change within the host. The presence of another closely related bacterium of the same species presents the opportunity for horizontal gene transfer, particularly as they are occupying the same or closely associated niches. If these are bacterial species that are naturally competent for transformation, the opportunity for evolutionary change is even greater. Of course, bacteria also tend to be part of complex microbial communities from which there is the potential to acquire new genetic material. By capturing the genome sequence data at the start of an infection and then later on in a persisting infection, it is possible to track the evolutionary changes to the genome and to identify how the infecting bacteria have diversified within the host, perhaps forming into subpopulations that have and have not mutated certain genes or that have and have not acquired certain genes. 

## Antibiotic resistance is an easily observable evolutionary event

Most evolutionary events are slight changes for the bacterial cell that give it a slight advantage over other cells, thus selective pressures favor the new phenotype. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a6faaa60664b8c255894a1154c0a071dfe7660580c37478a8df0406c51bde8ed.jpg)



Figure 15.3 Infections can be caused by more than one strain of the same species. When the infection-causing bacteria are isolated from a patient, laboratory diagnostics can identify the species of the bacteria, however this will not identify the presence of more than one strain of the same species in the patient. Genome sequencing of the isolated bacteria can result in assembly of the data into two or more distinct genomes, making it clear that there are multiple infecting strains of the bacterial species.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2eca175f43986b60c0bbd1cc4c35831cfac8dc3f27fba1394691f3f1cbee12ce.jpg)



Figure 15.4 Antibiotic resistance evolution in microbiome bacteria. When antibiotics are used against an infection (yellow bacteria), there is a chance that resistance can arise in the bacteria that are part of the microbiome in the body (blue bacteria). Thus, the evolution of resistance can be observed.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/9d925a12f64813caaef89ca975f704b3f7c1640e4e857c03ff34eece61a35085.jpg)



Figure 15.5 Evolution selects for mutations already present in the population; it does not cause mutations. Evolution does not cause mutations to occur in response to selective pressures. Rather, selection acts on the bacterial population and those cells with mutations that give them an advantage (blue) will outcompete the other cells in the population.


Sometimes, evolution makes some striking changes, but most commonly, the changes are very small. Antibiotic resistance is a difference with a big impact that can evolve quite suddenly in a bacterial lineage, due to the strong selective pressures of the antibiotics that kill the bacteria without the resistance trait. 

Unlike horizontal transfer of an already evolved resistance gene, evolution of antibiotic resistance generally occurs in the opportunistic pathogen and in the non-pathogen part of the microbiome. These are bacterial species that are inhabiting the host organism and otherwise not causing any harm through their colonization at the time of antibiotics exposure. The introduction of an antibiotic to a host organism exposes all of the bacteria within the body to selective pressures, regardless of the intended target of the antibiotic. 

Exposure of the microbiome to antibiotics sets up a situation where resistance can evolve within any of the bacterial species within the host organism. Some microbiome species will be naturally resistant to the antibiotic. This could be because they do not have the target of the antibiotic or because the antibiotic is unable to reach the target within the bacterial cell. If the microbiome species is otherwise susceptible, some cells within the population may survive killing by the antibiotic due to selection of pre-existing mutations within the population. Antibiotic resistance can then evolve in these microbiome bacteria (Figure 15.4). Although they were not the intended targets to be killed by the antibiotic, because they were in the body treated by the antibiotic, these bacteria end up evolving resistance. 

## Mutations can be introduced into bacterial DNA by a variety of factors

The key factor to remember about evolution is that the situation does not cause mutations to happen. Mutations are there and are selected for by the situation. The populations of bacteria are exposed to a situation where some of the bacterial cells have a fitness advantage due to a mutation that is already present in those cells (Figure 15.5). The situation does not induce the mutation. Mutations are already present in the population. Perfect replication the way it was illustrated earlier in this book (see Chapter 1) almost never happens. Strand breaks occur during replication and have to be repaired; this is in addition to polymerase errors 

TAin replication. Any time a repair has to happen, there is a chance of mutation, despite the efficiency of repair mechanisms. 

However, there are a variety of factors that can introduce mutations and some of these factors include situations where it can be beneficial for the bacteria to acquire a mutation in order to gain a selective advantage evolutionarily. For example, DNA can be damaged by UV light and by chemicals. It is essential that bacteria can repair such DNA damage, so that detrimental mutations do not accumulate. In some cases, these mutations can remain uncorrected in the genome and may provide a selective advantage in protecting the bacteria from UV or the chemicals to which the bacteria were exposed. Stress turns on stress responses including molecular mechanisms that cause mutations, which enables evolvability, the capacity to evolve adaptations. The general stress response involving RpoS $( \sigma ^ { \mathrm { S } } )$ SOS DNA-damage response, membrane stress response, and the stringent response can all result in mutations. These stress responses regulate mutagenesis and thus regulate the ability of the bacteria to evolve. It must be remembered, though, that the exposure did not create the mutation in specific locations to deal with the problem; evolution is a random process of mutation and selection. The mutations happen randomly in the DNA; it is selection that determines if those mutations have a benefit. 

Sublethal exposure to some antimicrobials can damage DNA and cause genomic changes. For example, the antibiotic bleomycin binds to DNA and induces double-strand breaks, which may result in mutations. The quinolone class of antibiotics inhibits the DNA replication enzyme topoisomerase ligase domain without affecting the nuclease domain. It therefore cuts DNA without re-ligation, potentially introducing mutations. Production of reactive oxygen species, ROS, in response to antibiotics like beta-lactams, quinolones, and aminoglycosides can also damage DNA. ROS can cause DNA strand breaks and incorporation of oxidized guanine into the genome. Antimicrobials can also trigger the movement of mobile genetic elements present in the genome, which can cause mutations through their introduction into new regions of the chromosome. For example, in Staphylococcus aureus subinhibitory exposure to quinolones upregulates the SOS response, which increases IS256 transposition and movement of integrating conjugative elements. 

## Yersinia pestis, causing plague, has evolved from Yersinia pseudotuberculosis

Historically, there is great interest in the major infectious diseases that have had a significant impact upon the human population, including the Black Death of the fourteenth century. The bacterial species responsible is Yersinia pestis, which has actually caused three major pandemics in recorded history: the Justinian plague (541–542 AD); the Black Death (1346–1353 AD); and modern plague beginning in 1894. Y. pestis has been investigated at the genomic level to understand the loss and acquisition of genomic content from this species. These data suggest that the acquisition of a number of genomic islands and plasmids led to the evolution of Y. pestis, and therefore the emergence of plague, from another species, Yersinia pseudotuberculosis. 

Since its emergence as a species, Y. pestis has lost DNA regions as well as acquired them. These changes have generated different lineages of Y. pestis, sometimes referred to as biovars and genomovars. Genomic analysis has determined that modern plague originated in the Yunnan Province of China as Y. pestis biovar orientalis. This modern lineage evolved from the Y. pestis lineage that caused the Black Death, as determined through genome sequence data obtained from DNA fragments extracted from victims buried in plague pits. Genome sequencing has also confirmed that Y. pestis was responsible for the Justinian plague, but that neither the Black Death plague nor modern plague had evolved from this earlier Y. pestis lineage. 

To obtain the ancient DNA needed in order to investigate the genomics of ancient diseases, a source of DNA that is likely to have resisted degradation is needed. Researchers in this field attempt to obtain samples by drilling into the teeth of skeletons to extract DNA, in the hope that enough intact DNA fragments will remain that can be interpreted once they are sequenced. Since there is very little DNA recovered, and since the majority of what is recovered will generally be of human origin, the nucleic acids extracted are amplified before sequencing (Figure 15.6). This may introduce some errors and bias in the process, but increases the amount of starting material enough to obtain viable sequencing data. In this way, important genetic information has been obtained about historical infectious diseases, such as plague, which provides insight into the evolution of bacterial genomes over hundreds of years. 


Figure 15.6 Genomic data can be obtained from Yersinia pestis historical plague cases. An archeological site with buried plague victims is identified and the skeletons exhumed. DNA is extracted by drilling into the teeth. The extracted fragments of DNA are amplified and then genome sequenced and analyzed.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/57712febc72bcd10b4a28df20b298717f74327239a885c782c77216dc266f962.jpg)


## Neisseria meningitidis, causing meningococcal meningitis and septicemia, acquired its capsule fairly recently

Some pathogens, such as Y. pestis that causes plague, have been causing disease for hundreds of years. Other bacteria have evolved to be pathogens more recently. These are emerging infectious diseases, when they are only recently evolved or only recently recognized to be the etiological agent, the cause of a disease. Commensal bacteria have the capacity to acquire traits that mean they become pathogens, which may be what has happened with Neisseria meningitidis, the cause of meningococcal meningitis and septicemia. 

The first historical accounts of meningitis diseases come from North America around 1805, while the closely related pathogen Neisseria gonorrhoeae causing gonorrhea is believed to be referred to in the Bible and other ancient texts. This fairly recent emergence of N. meningitidis was believed to be due to the horizontal acquisition of the capsule genes from Pasteurellaceae. The meningococcal capsule is a key virulence trait characteristic of this species, however genomic research has revealed that non-pathogenic Neisseria also possess capsule genes that may have been the source of the N. meningitidis capsule. The first pathogenic N. meningitidis are likely to have come from a lineage that is a common ancestor of N. gonorrhoeae and the non-pathogen Neisseria lactamica. N. meningitidis therefore horizontally acquired the 24 kb capsule locus as a whole relatively recently and, this combined with the other virulence determinants, resulted in these bacteria becoming the etiological agent of meningococcal disease (Figure 15.7). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/cc48386c60e14ec89d2aae398c9e9503658fdc4f7662c36b75ecc064dc53bca6.jpg)



Figure 15.7 Neisseria meningitidis evolved to have a capsule only about 200 years ago. N. meningitidis causes potentially fatal diseases, yet genomic investigations show that the bacterial capsule, a vital virulence trait that contributes to its pathogenesis, has been recently acquired via horizontal gene transfer (HGT) around 1805. The bacterial cells, Gram-negative diplococci, were then able to express a capsule and cause meningococcal disease.


## The number of pseudogenes in a species can reveal how recently it has adapted to a new niche

As bacterial species evolve to a new niche, they can develop characteristic pseudogenes, followed by complete loss of genomic sequence regions no longer needed by the bacteria in their new environment. Since some parts of the genome are not needed, they can be eliminated from the genomic content, thus saving the bacterial species the energy of making the gene product and replicating the genetic information. When genes are not frequently transcribed and translated, mutations that randomly accumulate in these regions are less likely to be fixed by error correction mechanisms. Genome sequences from intracellular bacteria such as Rickettsia prowazekii, which causes typhus, and Mycobacterium leprae, which causes leprosy, are clear examples of reductive genome evolution. This is where isolated lineages become adapted to a discrete and restricted niche and their genomes reduce to only what is needed to survive in that niche (Figure 15.8). 

Clavibacter michiganensis subspecies sepedonicus causes ring rot in potatoes, which has devastating agricultural consequences. Genome sequencing has revealed extensive chromosomal rearrangements by the IS elements present in over 100 copies in the genome. These rearrangements have generated over 100 pseudogenes. There has also been gene acquisition by horizontal gene transfer and gene loss by deletion of genetic material. Analysis of these genomic data suggests that the restriction to living exclusively within the plant niche was a recent adaptation. Because competition within the potato niche is low and the nutrients available are less diverse than other niches in the soil, selective pressures on some parts of the genome have been relaxed, thus the functions of these genes have been lost. 

Recent endosymbiont of the tsetse fly Sodalis glossinidius has a large number of pseudogenes in its genome. Potentially as many as 40% of the S. glossinidius CDSs are pseudogenes. Many of these pseudogenes are still transcribed and some are translated. There may still be some residual effects for some of these truncated proteins where the functions are perhaps changing and evolving. What is being observed in the S. glossinidius genome is a snapshot in evolutionary time. 

## Evolution of the bacterial surface to cope with the immune system and vaccines

The surfaces of bacterial species that are exposed to a host immune system have evolved strategies to avoid being killed. Often the antigenic surface components of bacterial cells are regulated either by environmental signals or by phase variable switching. The bacterial surface presented to the host immune system is therefore changeable, which will help it avoid recognition. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/afd987a680b686926e5ba72a02c5edd06a3fbc84e8c65582c1b060af4237e429.jpg)



Figure 15.8 Reductive genome evolution eliminates genetic material that is no longer needed in a niche.


Evolution eliminates the unneeded genetic material. Shown here is a bacterial cell with flagella genes (F, green), antigenically variable surface proteins (AV, red), and an assortment of metabolic pathways to take advantage of a range of environments (M, purple). When this cell enters a new environment where these traits offer no advantage, they can be lost over time and eliminated from the genome. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/50380b345073b381626753b48ae44f3fb37928ea19244191dbf28d856899ddae.jpg)



Figure 15.9 Ideal vaccine targets (for humans) versus ideal surface antigens (for bacteria). When humans design vaccines, an ideal vaccine target is an antigen present on all bacteria and that is identical on all bacteria (left). The ideal surface antigen for bacteria is changeable, to avoid recognition by the immune system (right). The opposite nature of these ideals complicates efforts at vaccine design.


Ideally, vaccine targets should be surface antigens. A vaccine candidate needs to be present on the surface of the bacterial cell at all times, needs to be present on all bacterial cells of a bacterial species, and needs to be similar enough in its protein sequence for the vaccine to offer protection against all strains of the species (Figure 15.9). Unfortunately, when it comes to vaccine design, because surface antigens are readily available for recognition by the immune system, they have evolved to be antigenically variable, regulated in expression via environmental signals, phase variable, and combinations of these. Such variable surface antigens do not make ideal classical vaccine targets. They are not always expressed on the surface of the bacterial cell. Their sequences are highly variable within the species. 

However, there are some cases where antigenically variable surface components can be viable vaccine components. If the lack of expression of the antigen is otherwise detrimental to the bacterial cell, leaving it open to the host immune defenses, then the vaccine may be effective. When the antigen is being expressed by the bacteria, then the vaccine-primed immune system can recognize the bacteria and eliminate them. Without the antigen, the bacteria are not protected, and the immune system can eliminate them (Figure 15.10). As an example, N. meningitidis express a protein on their surfaces that can bind to the human complement protein Factor H and helps the bacteria avoid being killed by human complement. This Factor H binding protein is a part of one of the vaccines against N. meningitidis and is believed to be effective because cells that switch off expression of Factor H binding protein will have switched off their protection from complement killing. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a2bfeb4537a3e3fa9894af2891a1d465b0162bb8c923157bb2b091d02495eb5d.jpg)



Figure 15.10 Vaccination against bacterial antigens is essential for survival. An alternative strategy for vaccine design is to find a vaccine target that the bacteria needs to express on its surface, where the vaccine-primed immune system can see it and target the cell for killing (top cell), or doesn’t express it on its surface and the immune system can then target the cell for killing (bottom cell). In either state, the immune system eliminates the bacterial cell. Without vaccination, it is essential that the bacterial cell expresses this antigen to avoid killing by the immune system, therefore vaccination against this antigen means the bacterial cell is killed whether it expresses the antigen (by the vaccine) or not (by the immune system).


## TAHorizontal gene transfer can bring new genes into a species, contributing to its evolution

Horizontal gene transfer is a mechanism whereby genetic material from one bacterial cell is transferred to another bacterial cell. This process can contribute to evolution through movement of bacterial genes or whole systems into a species that previously did not possess these traits. Striking examples of horizontal gene transfer can be observed in the spread of antibiotic resistance gene cassettes from their evolution in one bacterial species across to other species. Often these resistance genes are carried on plasmids or transposons, which facilitate their incorporation into the new genetic background. 

Enterotoxigenic E. coli, or ETEC, is the main cause of travelers’ diarrhea and diarrhea in young children. The bacterial cells cause disease because they bind to the epithelial cells of the small intestine using class 5 fimbriae and there secrete enterotoxins. Burkholderia cepacia can colonize the lungs of cystic fibrosis patients and attack respiratory epithelium. There is evolutionary evidence that the E. coli class 5 fimbriae have been horizontally transferred to B. cepacia, where the structure is referred to as the cable pili. In B. cepacia, the fimbriae/pili also mediate attachment to epithelial cells, although in this context they allow the bacteria to adhere to lung epithelial cells (Figure 15.11). 

Horizontal acquisition of toxins has contributed to the evolution of virulence in several bacterial species. For example, some strains of S. aureus have acquired through horizontal gene transfer the superantigen toxic shock syndrome toxin-1 (TSST-1). This toxin induces an inflammatory cascade causing staphylococcal toxic shock syndrome. TSST-1 is encoded by tst on staphylococcal pathogenicity island 1. This whole genetic island of 15 kb was horizontally acquired and can be horizontally transmitted. Also, aquaculture to provide food for the growing human population can be hampered by bacterial infections, particularly at the early stages of life. Vibrio parahaemolyticus causes acute hepatopancreatic necrosis disease in shrimp with up to 100% mortality. These particular strains of V. parahaemolyticus have acquired a 69 kb plasmid that encodes two toxin genes, evolving to be this devastating pathogen. 

## The particular nature of an environmental niche can create opportunities for evolution

Many traits of bacteria that we view as being virulence factors should be considered in an evolutionary context as characteristics that provided a specific advantage in a particular niche, which may have originally had no bearing on virulence whatsoever. These virulence factors evolved outside of the realms of bacterial–host interactions or in niches other than those ultimately inhabited by the pathogenic bacteria. In this context, it is therefore less surprising when “virulence genes” are found in non-pathogens because in these organisms the genes have evolved in a different ecological context or outside of the scope of causing disease. Virulence genes in one organism are simply genes for enhanced survival in another organism. 

Bacteria have been evolving on the planet for far longer than we have been potential hosts for them. The Earth is dominated by cold environments where psychrophilic cold adapted microbial communities that have evolved to thrive in the cold survive. Antarctic bacteria Pseudoalteromonas haloplanktis grows at −2.5 to 25 °C. Proteomics suggests cold adaptation to growth at 4 °C involves protein S-thiolation and changes in nutrient uptake and metabolism. Cold environments also tend to be low in nutrients, high or low in pH, high in osmotic pressure, and may have excessive UV and/or radiation. 

Some evolution in bacterial species has occurred in response to human intervention. Antibiotics are an obvious example, but vaccine use has also exerted selective pressures that have driven evolution. In Bordetella pertussis, there are few single-nucleotide polymorphisms (SNPs) but many chromosomal rearrangements are observed in comparisons between the genome sequence data of isolated strains. It is notable that there has been a resurgence in B. pertussis disease since the 1990s despite vaccination. This is possibly due to a change from use of whole-cell vaccines to acellular vaccines at about this time. It may also be, or perhaps in addition to the switch in vaccines, that there has been an adaptation and evolution in circulating B. pertussis strains, resulting in strains with increased toxin production and the observed escape from vaccine protection. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/981d7c34f989776759c9ad7b439482b3bb0f2bd6e0f2162ae00eb906266883e1.jpg)



Figure 15.11 Class 5 fimbriae from E. coli aid B. cepacia in causing disease.



The class 5 fimbriae of enterotoxigenic E. coli allow these bacteria to attach to the epithelial cells of the small intestine (left). Horizontal gene transfer of the class 5 fimbriae system from E. coli to B. cepacia enables these bacteria to bind to the epithelial cells of the lungs of cystic fibrosis patients (right).



Divergence after duplication


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c05a27bd3e03f17f17e5d1425ce1015d398a940d8e2b38aab022a850d02be297.jpg)



De novo


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8cc3f08b888d0c1fd4d18150bd9ef3cd945ddce87d810ed8b8cb65f0a05ef128.jpg)



Gene fusion/fission


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4393247511c347610df13a846009e1c755fa931dc72503339aef7941066de804.jpg)



Figure 15.12 Evolution of new genes.



New genes can arise by three different mechanisms. After duplication of a gene, the sequence can diverge into a new gene (top). A new gene can arise de novo, as new, from a noncoding region when a mutation generates an initiation codon (middle). Fusion of two gene sequences creates a new gene (bottom) and likewise fission dividing a gene into two can generate two new genes (bottom in reverse).


## It is possible for completely new genes to evolve

While we tend to explore evolution to investigate the accumulation of mutations or the horizontal acquisition of genes, it is possible for entirely new genes to evolve, albeit relatively rarely. The origin of new genes is the result of one of three different processes: divergence of a gene sequence following duplication of the gene; de novo generation of a gene from noncoding DNA; and gene fusion and fission events from existing gene sequences (Figure 15.12). 

These processes all rely on recycling existing sequences. They make use of DNA sequences that already exist. In the first or the third example, this is a gene sequence that exists and codes for something else and is changed following its duplication or is changed in its function through fusion or truncation. In the second example, this is a noncoding sequence that acquires an initiation codon and thus in a rare event becomes a coding region. 

In the case of gene fusions, it is possible to create new genes with starting material from sequences from across the microbial world. Horizontal gene transfer can bring in DNA from a variety of sources. Most commonly this is DNA from other bacteria, with that from closely related species being most compatible in codon usage and regulatory features. Natural competence for transformation may nonselectively take up environmental DNA from any source, including unrelated bacteria and other sources of DNA. Transduction brings in DNA from bacteriophages. Therefore, viruses, phages, fungi, bacteria, eukaryotes, and archaea are all potential sources of DNA for new genes. There is evidence of DNA from these sources in bacterial genomic data. 

## Key points

Long-term evolution experiments make use of the short generation times of bacteria to explore evolution. 

Bacteria are able to evolve within a host organism, as selective pressures act upon the bacterial population. 

More than one strain of the same species can infect the same host or the same niche, setting up the potential for horizontal gene transfer and evolutionary changes. 

Antibiotic resistance can be acquired through horizontal gene transfer of a resistance trait or through selection of cells in the bacterial population that have mutations conferring resistance. 

Evolution selects for mutations that are already present in the bacterial population. 

The evolution of infectious diseases such as plague can be studied through extraction of ancient DNA from archeological sites. 

Some pathogenic bacteria have evolved fairly recently, through the acquisition of virulence factors by non-pathogenic bacteria. 

The presence of numerous pseudogenes in a genome can be an indicator that the bacterial species has recently adapted to living in a new niche and is in the process of evolving. 

Completely new genes can evolve via a number of mechanisms, arising from noncoding DNA, from the duplication and divergence of an existing gene, and from the fusion or fission of an existing gene or genes. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Etiological agent</td><td>Isogenic</td><td>Psychrophilic</td></tr><tr><td>Evolvability</td><td>Lineage</td><td>Reductive genome evolution</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 Why is it important in experimental design to compare isogenic strains of bacteria? Why not just compare any two bacterial strains? 

2	 How do E. coli generation times compare to humans, mice, and Drosophila (fruit flies)? What about other experimental models like rats and zebrafish? 

3	 Which two important aspects of bacterial infection provide for the opportunity of within-host evolution? 

4	 Using antibiotic resistance as an example, briefly describe how selection acts on a population of bacteria. When does the mutation occur, before or after selection? 

5	 Name some factors that introduce mutations into bacterial DNA. 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

1 Experimental evolution experiments, such as what has been accomplished by the Lenski laboratory over 30 years, have made significant contributions to our understanding of evolution. Discuss the insights gained from experimental evolution research in another bacterial species. Does the experimental design differ from Lenski? How long was it conducted for? What has been learned? 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

6	 Briefly, what has genome sequencing revealed about the evolution of the cause of the Black Death? 

7	 What is a pseudogene? What does the presence of pseudogenes reveal about the process of evolution of the bacteria? 

8	 In what type of bacteria do we tend to see reductive genome evolution? Why does this occur? 

9	 What features of a surface antigen make it an ideal vaccine candidate? How are these features not ideal for bacteria? 

10	 Pseudoalteromonas haloplanktis has evolved to grow in Antarctic conditions. What sort of environmental conditions does this species encounter? 

11	 What are the three ways new genes arise in bacteria? 

12	 Several examples are presented in this chapter of evolution due to selective pressures. List these and other examples of selection that can drive evolution. 

2 Several studies have used comparative genomics to investigate the evolution of pathogen genomes within patients with chronic bacterial infections. Discuss one of these studies. Over what time period were the bacteria isolated from each patient? What changes were found in the genome? What does this reveal about the evolution of the bacteria within the human body? 

3 Horizontal gene transfer (HGT) brings new genes into bacterial genomes and has made significant contributions to the evolution of many bacterial species. Explore the role of HGT in one bacterial species of interest and how the acquisition of genes has led to an evolutionary change for that species or a lineage of the species. 

www.routledge.com/cw/snyder 

## Further reading

## Evolution can be studied within bacterial cultures



Callaway E. Legendary bacterial evolution experiment enters a new era (News Q&A). Nature. 2022; 606: 634–635. 





Lenski RE. The E. coli long-term experimental evolution project site, 2022. https://lenski.mmg.msu.edu/ecoli/index.html 



## Bacteria can evolve within the host and we can see this happen with sequencing technologies



Viberg LT, Sarovich DS, Kidd TJ, Geake JB, Bell SC, Currie BJ, Price EP. Within-host evolution of Burkholderia pseudomallei during chronic infection of seven Australasian cystic fibrosis patients. mBio. 2017; 8(2): e00356–e00417. 



## Yersinia pestis, causing plague, has evolved from Yersinia pseudotuberculosis



Feldman M, Harbeck M, Keller M, Spyrou MA, Rott A, Trautmann B. A high-coverage Yersinia pestis genome from a sixthcentury Justinianic Plague victim. Mol Biol Evol. 2016; 33(11): 2911–2923. 



## Neisseria meningitidis, causing meningococcal meningitis and septicemia, acquired its capsule fairly recently



Bartley SN, Mowlaboccus S, Mullally CA, Stubbs KA, Vrielink A, Maiden MC, Harrison OB, Perkins TT, Kahler CM. Acquisition of the capsule locus by horizontal gene transfer in Neisseria meningitidis is often accompanied by the loss of UDP-GalNAc synthesis. Sci Rep. 2017; 7: 44442. 



## Horizontal gene transfer can bring new genes into a species, contributing to its evolution



Arnold BJ, Huang IT, Hanage WP. Horizontal gene transfer and adaptive evolution in bacteria. Nat Rev Microbiol. 2022; 20(4): 206–218. 





Wiedenbeck J, Cohan FM. Origins of bacterial diversity through horizontal genetic transfer and adaptation to new ecological niches. FEMS Microbiol Rev. 2011; 35(5): 957–976. 



## The particular nature of an environmental niche can create opportunities for evolution



Bart MJ, Harris SR, Advani A, Arakawa Y, Bottero D, Bouchez V. Global population structure and evolution of Bordetella pertussis and their relationship with vaccination. mBio. 2014; 5(2): e01074–e01114. 



# A A G G T GPar t V I

## Gene Analysis, Genome Analysis, and Laboratory Techniques

The next three chapters look at the tools and techniques involved in doing the research that has been discussed in the previous five parts of this book. Here, the discussions will move away from theory. These chapters will delve into the application of skills to the various forms of analysis and experiments that are conducted on DNA, RNA, and proteins. Whether these are the sequence data being investigated on a computer or the physical molecules being investigated at the laboratory bench, the methods involved are included here. First gene analysis techniques will be explored and then the specialized analysis tools used when scaling up to investigate whole bacterial genomes. Links to web resources referred to in these chapters are available on the Instructor and Student Resources Companion Website. Finally, the last chapter in this section is dedicated to laboratory techniques that are key to investigating bacterial genetics and genomics. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d7752c82bee2241655881e4d8590cde255f8355b4ff4217d39fe14cbad4facc9.jpg)


# Gene Analysis Techniques

Chapter 

16 

Back in Chapter 2, the way in which a coding sequence could be identified was presented and a gene was defined. Throughout this book there have been several discussions of CDSs and genes. In this chapter, the techniques for analyzing genes will be explored in depth, imparting the knowledge needed to be able to conduct such analyses. 

## Sequence searches are done to find out what else is similar to this gene

Having generated a gene sequence, it is often wondered whether this looks like any other gene sequences that are known to exist. This can be determined by doing a search of the public sequence databases for similar sequences. One of the most commonly used programs in sequence analysis is the Basic Local Alignment Search Tool, BLAST, mentioned in Chapter 12. This is a computer algorithm for comparing nucleotide sequences of DNA or RNA, or for comparing amino acid sequences of proteins to databases of nucleic acid or amino acid sequences. It is so widely used because it does for genetics and genomics research what a Google search does for helping us find stuff on the internet. BLAST takes the gene or protein you are interested in and finds other sequences similar to it, then displays them for you so you can see how close a match they are to your original. 

The BLAST search program means it is possible to search a database for any sequences that match or are similar to the sequence you are interested in, your query sequence (Figure 16.1). Often this is the gene sequence of interest, but it could be any sequence data; it could possibly be a fragment of a gene, a promoter region, an operon, or an ncRNA, for example. The sequences found are each the target sequence of each BLAST search hit (see Figure 16.1). BLAST searches can be used to identify species, find protein domains, build phylogenetic trees, propose functions, and map and annotate previously unknown sequences. 

<table><tr><td>Query</td><td>1</td><td>ATGAAACAATCCGCCCGAATAAAAAATATGGATCAGACATTAAAAAATACATTGGGCATT</td><td>60</td></tr><tr><td>Sbjct</td><td>1299898</td><td>ATGAAACAATCCGCCCGAATAAAAAATATGGATCAGACATTAAAAAATACATTGGGCATT</td><td>1299839</td></tr><tr><td>Query</td><td>61</td><td>TGCGCGCTTTTAGCCTTTTGTTTTGGCGCGGCCATCGCATCAGGTTATCACTTGGAATAT</td><td>120</td></tr><tr><td>Sbjct</td><td>1299838</td><td>TGCGCGCTTTTAGCCTTTTGTTTTGGCGCGGCCATCGCATCAGGTTATCACTTGGAATAT</td><td>1299779</td></tr><tr><td>Query</td><td>121</td><td>GAATACGGCTACCGTTATTCTGCCGTGGGCGCTTTGGCTTCGGTTGTATTTTTATTATTA</td><td>180</td></tr><tr><td>Sbjct</td><td>1299778</td><td>GAATACGGCTACCGTTATTCTGCCGTGGGCGCTTTGGCTTCGGTTGTATTTTTATTATTA</td><td>1299719</td></tr><tr><td>Query</td><td>181</td><td>TTGGCACGCGGCTTCCCGCGCGTTTCTTCAGTTGTTTTACTGATTTACGTCGGCACAACC</td><td>240</td></tr><tr><td>Sbjct</td><td>1299718</td><td>TTGGCACGCGGCTTCCCGCGCGTTTCTTCAGTTGTTTTACTGATTTACGTCGGCACAACC</td><td>1299659</td></tr><tr><td>Query</td><td>241</td><td>GCCCTATATTTGCCGGTCGGCTGGCTGTATGGTGCGCCTTCTTATCAGATAGTCGGTTCG</td><td>300</td></tr><tr><td>Sbjct</td><td>1299658</td><td>GCCCTATATTTGCCGGTCGGCTGGCTGTATGGTGCGCCTTCTTATCAGATAGTCGGTTCG</td><td>1299599</td></tr></table>


Figure 16.1 BLAST search result from a 300-base query. The top line of this alignment was used to search a database for sequences that are similar. The sequence searched for is the query sequence and is 300 bases in length (Query). It has retrieved the sequence aligned below it, the target sequence, which was the target of the search (Sbjct). The numbers (1,299,898–1,299,599) are the position within the target sequence where the query sequence matches; in this case the numbers are descending because the match is to the reverse complement of the database sequence entry.


The first BLAST program was published in 1990, by a team from the US National Institutes of Health. BLAST is what is called a heuristic technique, which means that the approach to sequence searching is practical and sufficient for getting the job done, but it might not be the most logical, or the most optimal, or the most rational way to do it. A logical, optimal, rational approach would take excessive time, and the end result is that BLAST does good enough alignments to find similar sequences, which is really the goal. There are better programs for finding alignments, discussed later, but BLAST’s alignments are good enough for doing its searches. Another example of heuristics is when you make an educated guess. This uses past knowledge to make an informed, quicker decision than would otherwise be made by a more in-depth analysis. 

## Before there was BLAST, there was FASTA

The FASTA file format for sequence data was mentioned in Chapter 12, where the first line of the sequence data starts with a “>” symbol followed by some descriptive text. The sequence data then come in the second line. This file format comes from the program FASTA, a search tool that was a predecessor to BLAST. 

FASTA was first designed for protein sequence similarity searches and released in 1985. In 1987, DNA and translated DNA searches were added, however FASTA was replaced by BLAST in the 1990s, the latter being superior in speed and scalability with the ever-increasing size of the databases. Being able to keep up with the needs of researchers as databases grew in size, through its scalability, has meant that BLAST is still used today. 

The FASTA input format, however, remains in use today, leaving a legacy of the name FASTA, pronounced Fast A with a long A sound at the end. The FASTA file format is described and shown in Chapter 12, earlier in this book. Because the methods used are different, it may be interesting to see if your search results differ with a FASTA search versus a BLAST search. 

## BLAST quickly finds the most similar sequences

The breakthrough that came with BLAST was speed. Even with the vast increase in public databases as more and more sequence data are added each day, BLAST is able to keep up and produce results relatively quickly. In the original BLAST, there could be gaps in the alignment generated, where similarity slipped, but newer versions such as BLAST2 produce fewer gaps. BLAST can be used via a web browser interface, making it readily accessible to many researchers, or it can be downloaded for local use in the command-line of Unix. The program is open source, which means that anyone can have access to the code and can change it. As such, there are many versions of BLAST that have been developed since the original in 1990. 

One way that speed is achieved is through not including any areas of poor similarity in the BLAST data returned from the search. These data do not, therefore, return to the user whole gene sequences, unless the whole gene has similarity to the query. To speed the BLAST search process and eliminate search hits to sequences that may not be robust to the query, all low complexity regions are excluded from the search (Figure 16.2). Sequences like repetitive stretches of DNA fall into the category of low complexity regions. Since completely unrelated sequences can share the same repeat and therefore confuse the BLAST search, these are excluded. The filter for low complexity regions can be manually turned off by the user, but this is likely to generate erroneous results, which must be taken into account when interpreting the data. In the next step of the BLAST search process, the search is divided into “words” of a set length. These are referred to as k-letter words, with protein searches generally being three-letter words and DNA being 11-letter words. The query sequence then becomes a list of words. This list is used to search the database for the highest scoring matching words, including looking for data on matches to adjacent words to increase the score. The process continues until an alignment is returned to the user. 

<table><tr><td>Query</td><td>1</td><td>ctcttctcttctcttctcttctcttctcttcGCAGCGCAGGCGGCAAGTGAAGACAATGGCCGC</td><td>60</td></tr><tr><td>Sbjct</td><td>733538</td><td>CTCTTCTCTTCTCTTCTCTTCTCTTCCGCAGCGCAGGCGGCAAGTGAAGACAATGGCCGC</td><td>733479</td></tr><tr><td>Query</td><td>61</td><td>GGCCCCTATGTGCAGGCGGATTTGAACTACGCCTACGAACACATTACCCACGATTATCCC</td><td>120</td></tr><tr><td>Sbjct</td><td>733478</td><td>GGCCCCTATGTGCAGGCGGATTTGAACTACGCCTACGAACACATTACCCACGATTATCCC</td><td>733419</td></tr><tr><td>Query</td><td>121</td><td>GCCGACAACGCCAAAGTCTTCGACGACTACCGCGACATCAAAACCCGCTCCACACACCCA</td><td>180</td></tr><tr><td>Sbjct</td><td>733418</td><td>GCCGACAACGCCAAAGTCTTCGACGACTACCGCGACATCAAAACCCGCTCCACCCACCCC</td><td>733359</td></tr><tr><td>Query</td><td>181</td><td>CGCCTTTCCGTCGGCTACGATTTCGGCAACTGGCGCATCGCCCTCGATTACGCCCGCTAT</td><td>240</td></tr><tr><td>Sbjct</td><td>733358</td><td>CGCCTTTCCGTCGGCTACGATTTCGGCAACTGGCGCATCGCCCTCGATTACGCCCGCTAT</td><td>733299</td></tr><tr><td>Query</td><td>241</td><td>AATAAGTGGAAACACGGCAAGCATATTTCGCACAGAACAAAACAAATCAGTTCAAAACGGC</td><td>300</td></tr><tr><td>Sbjct</td><td>733298</td><td>AATAAGTGGAAACACGGCAAGCATATTTCACGCAGAAAATACTAAAAAAGTCAAAAATGGC</td><td>733239</td></tr></table>


Figure 16.2 BLAST excludes low complexity regions from sequence searches. At the start of this 300-base search there is a region of repetitive DNA in the query sequence. BLAST ignores the CTCTT repeats when searching the database and indicates this in the output by displaying the letters in lowercase. Although these bases align between the query and the target, they were not used in the search for the target.


In addition to the alignment with similar sequences, BLAST output provides statistics about the matches from the database. One of these is the E value (Expect value), which represents the number of alignments to the query sequence that would be expected by chance (Figure 16.3). The more similar the query to the target sequence, the closer the E value is to 0. Identical sequences have an E value of 0; those that are nearly identical will also be 0 or approaching 0, based on how similar the query is to the target. These also have an Ident value, for identity, of 100% (see Figure 16.3). Note that these scores are only for the BLAST aligned segment of the sequence, not the whole gene or genetic region used in the search. Other values listed in the BLAST output are Max score (the maximum score), Tot score (the total score), and Query Cover (the query coverage; see Figure 16.3). The Max score is the highest score for this BLAST hit, taking into account all aligned and matched nucleotides (or amino acids) and taking into account all penalties for mismatches and gaps. Tot score sums the alignment scores for segments from the same subject, which means that a target sequence that is similar in more than one place to the query will have those separate places taken into account. Query cover addresses how much of the query has been found in the database; it might be that not all of the sequence has been found. There may be 100% identity to the query sequence being searched, but this only hits the first 150 bp of the query, which is actually 3,500 bp long, and the rest of the sequence remains unknown. 

<table><tr><td>Description</td><td>Max score</td><td>Tot score</td><td>Query cover</td><td>E value</td><td>Ident value</td></tr><tr><td>Neisseria lactamica partial opa gene for Opa A protein, strain NL4</td><td>1258</td><td>1258</td><td>100%</td><td>0.0</td><td>100%</td></tr><tr><td>Neisseria lactamica strain Y92-1009, complete genome</td><td>1076</td><td>2010</td><td>100%</td><td>0.0</td><td>94%</td></tr></table>


Figure 16.3 BLAST output information for Figure 16.2 showing Max Score, Total score, Query cover, E value, and Ident value. This information relates to the BLAST hit from Figure 16.2, where the first 300 bases are shown. In total, the query is 697 bases. The first row is the query sequence finding itself in the database, therefore all of the values are at their maximum for this sequence because the query and the target are identical. The target sequence in Figure 16.2 is shown in the second line. Although there is alignment over the whole of the 697 bases (Query cover 100%) there is only 94% identity (Ident value), influencing the Max score and Tot score. The similarity of the sequences is high, therefore the E value is 0.0.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4ec00a78d8dd9493605397c0478dfaa98869e1e805451cc57a1cbb574f8d7bd2.jpg)



Figure 16.4 BLASTN starts with a nucleotide query and searches a nucleotide database. The results of the search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4f9359ab253c9d1b67682e881c8604372d3de3cd3e721a8635db68dce10c54f2.jpg)



Figure 16.5 BLASTP starts with a protein query and searches a protein sequence database. The results of the search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user.


## A AThere are five basic versions of BLAST, addressing different search tasks

BLASTN is a specialized form of BLAST search that takes a DNA query, a nucleotide sequence, and will find the most similar DNA sequences that match it from within a DNA database (Figure 16.4). This is a straightforward and simple way to show that a gene sequence is present as a gene sequence in another bacterial genome. This can be a genome from the same species or another species, and the similarity match may help identify the function of the gene. If the homologous sequence has an annotated function, then it is possible that the query sequence might share this same function. 

BLASTP is similar to BLASTN, however it starts with a protein query, an amino acid sequence. Using this query, BLASTP finds the most similar protein sequence from a protein database (Figure 16.5). In deciding whether to use BLASTN or BLASTP, keep in mind that BLASTN will return more closely related sequences, since the DNA sequences will be more similar to one another than the protein sequences returned by BLASTP will have been at the genetic level. This is because of the variation in codons that can all encode the same amino acid; recall from Chapter 7 that most amino acids have two codons and some have as many as six, therefore the DNA sequence for two identical amino acid sequences can be quite diff erent. 

It is possible that you may have a DNA sequence and you want to see if there are any similarities between the proteins it could potentially encode and the proteins in a protein database. BLASTX helps with this. Rather than having to first translate the DNA sequence yourself, BLASTX does this part for you, in all six potential reading frames: three forward and three reverse. These six amino acid sequences are then used to interrogate a protein database as would be done in BLASTP (Figure 16.6). 

Likewise, it is possible that you have a protein sequence and would like to see if it potentially matches the DNA database. First, BLAST needs to know what the DNA database potentially encodes as amino acids. Therefore, it does a complete six-frame translation of the nucleotide database and then uses these data to check for similarities to the query. This is the TBLASTN search (Figure 16.7). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e1d83711a1497db657eeea307a39cb0345db376123ad61c8bb385f9cd7f3ad15.jpg)



Figure 16.6 BLASTX starts with a nucleotide query and first conducts a six-frame protein translation of the query before searching a protein sequence database. The results of the search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user.


## Figure 16.7 TBLASTN starts with a protein query, but before it is used to search a database, first a nucleotide database is six-frame protein translated and then this translated database is used for the search.

The results of the search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/cf9e069982e6eeeec6c07073b3d3df6814c99c4e973e27f57966a3ef3a730c85.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/36dad784e16d218c1992eb606d3eb6e3dce8c93d07ddae54bfe62bd9d2245664.jpg)



Figure 16.8 TBLASTX starts with a nucleotide query and a nucleotide database. Both the query and the database undergo six-frame protein translations before the translated query is used to search the translated database. The results of the search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user.


TBLASTX is the slowest of all BLAST searches because it does a six-frame translation of both the query (as in BLASTX) and the database (as in TBLASTN). A TBLASTX search is done when investigating a sequence to find distant relationships between nucleotide sequences (Figure 16.8). Sequences will come up on TBLASTX searches that are not revealed by BLASTN. 

## There are other versions of BLAST that do specialist searches

The fiv e basic versions of BLAST are all about straight searches of nucleotide or protein databases with nucleotide or protein sequences. However, there are other versions of BLAST that have other functions. For example, PSI-BLAST is able to find more distant relatives of sequences, specifically proteins. It makes a list of all closely related proteins and forms a profile sequence. Rather than a single query sequence, this set of sequences combined in the profile sequence highlights significant sequence features of the group. The search finds a set of similar sequences to the profile sequence. This larger group forms a new profile sequence (Figure 16.9). Iterative searches, which repeat the search processes, are done by PSI-BLAST to identify more distant evolutionary relationships that might otherwise be missed by a simple BLASTP. 

There is a lot of data in the sequence databases, and it grows every day. In an effort to generate BLAST results that may produce more basic information and therefore be more clearly informative for some researchers, smartBLAST was created. From a protein query sequence, the five best protein matches in a reference database, called the landmark database, are displayed (Figure 16.10). If there are hits from different organisms, these will be reported by preference. If five matches in the landmark database cannot be found, smartBLAST will then use the non-redundant protein database, the same database BLASTP would use. The output of smartBLAST combines a graphical view and a phylogenetic tree (see Figure 16.10). There are 27 genomes in the landmark database. Of these, 11 are bacterial species. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/af7779dd3c650e765be3f9b431c2d8e09ca6cbe02e917a7ec27b1cac5c62656a.jpg)



Figure 16.10 smartBLAST starts with a protein query and searches the landmark database of 27 specific genome sequences. If there are no results from this search, the query will be used to search a protein database instead. The results of the search, the hits, whether from the landmark database or protein database search, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d9dacab138bf903985203a0f1ee62cfc17abab10a88a1987a6cd79b97f117ee6.jpg)



Figure 16.9 PSI-BLAST starts with a query and searches a database to find some similar sequences. With these, a profile is built. This profile of several sequences is used to search the database again. This can happen several times, represented by the reverse arrow. The results of the iterative search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0192108d126cdd0feddeb921d687f614a1269fbe5768147360375fc336021211.jpg)



Figure 16.11 GEO-BLAST starts with a query and searches the Gene Expression


Omnibus database. The results of the search, the hits, are presented to the user as alignments between the query sequence and the sequences that were found by the search, the target sequences. The statistics comparing the query and target sequences are also presented to the user. 

Although many researchers access BLAST programs via a web browser, which makes it very accessible, there are also several command-line versions of BLAST. For instance, MEGABLAST is a command-line version of BLAST and is used when investigators have a lot of sequences to be compared. It is able to batchload many searches via the command-line and generate the output data for later analysis. BLAST+ versions are command-line versions of BLAST. Users download BLAST+ source codes and use them locally from the command-line or in custom installations. 

In addition to doing a search against the nucleotide or protein database, BLAST can be used to search against GEO, the Gene Expression Omnibus database. This is a repository for functional genomics data including microarray and RNA-seq expression gene information. Since this is gained from experimental evidence, the GEO-BLAST can identify if the query is a sequence that has been expressed in other bacteria and under what conditions (Figure 16.11). 

## Searches can look for more than just similarities

Embedded within BLASTP is a second search that looks for conserved domains within the amino acid sequences (Figure 16.12). Protein domains (Chapter 12) are amino acid sequences that have been identified as encoding functional features of proteins, and those that are conserved are found across proteins of different species. A conserved domain search can also be run as a stand-alone analysis of protein or translated DNA sequences. 

Related to the conserved domain search is a tool that enables researchers to find proteins that share the same conserved domain architecture. This is CDART, Conserved Domain Architecture Retrieval Tool. This identifies protein sequences that have the same sequential order of conserved domains as the query sequence. This can identify proteins that are evolutionarily distant and may not have sequence similarity, but which may have related functions (Figure 16.13). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b9b067f5eea911640062a47eba330da8e89b9d3653b7ee0af42ad77a6bb1c7de.jpg)



Figure 16.12 Conserved domain search. The results of a conserved domain search where the query is the MtrR protein sequence from Neisseria meningitidis strain NMB. Highlighted in the graphic are regions of the 210 amino acid protein sequence that share similarity to protein domains in the conserved domain database. Below the graphic is a list of the domain hits. This information can be expanded at the [+] to reveal more functional information on each domain, perhaps providing additional information about the function of the query protein.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c1c419daebeb2016040250decb11cb882d23ff37ee31ad2f8b12bdff7e39ba27.jpg)



Figure 16.13 Conserved Domain Architecture Retrieval Tool. The results of a Conserved Domain Architecture Retrieval Tool (CDART) search where the query is the MtrR protein sequence from Neisseria meningitidis strain NMB. The graphical outputs show the similar architecture of conserved domains in other proteins between this 210 amino acid protein sequence and sequences in the conserved domain database. For each result, additional information is available by expanding the information at the [+] and following the available links.


## Alignments of similar sequences are useful for further analysis

As can be seen in the preceding figures, the BLAST output produces an alignment between the query sequence and the target sequence, showing in the output the similarity between the two sequences. Visualization of the similarity between sequences is useful for further analysis, where it may be possible to see if sequences share common encoded domains, for example. The alignment generated by BLAST may not be ideal, however. The key to BLAST is that it is fast and that it is doing a search, not that it is carefully doing an accurate alignment of the two sequences. For an accurate alignment, other programs are used. 

Alignments can be either local – as they are in the partial alignments used in BLAST searches – or global. A local alignment will only align those portions of the sequence with similarity. If there is no similarity, no alignment will be made by a local alignment program. In contrast, a global alignment is one that aligns the whole of the two sequences. In a global alignment, the computer will align the sequences whether or not there is similarity. Since a global alignment program will always produce a result no matter how poor or non-existent the similarity, it is really only useful once it is already known that there is some similarity, generally from a BLAST result. 

## Local alignments are used to compare the portions of the sequence that are similar

The Smith–Waterman algorithm, developed and released in 1981, produced a local alignment of two sequences in a pairwise alignment. All pairwise alignments involve two sequences. Comparisons are made between segments of the two sequences, such that all possible lengths of the sequences are compared to optimize the similarity in the final alignment (Figure 16.14). The Smith– Waterman local alignment is a variation of the Needleman–Wunsch global alignment algorithm. Unfortunately, Smith–Waterman requires more time to generate its alignments than most other alignment programs. 

Available online is the EMBOSS suite of bioinformatics tools, the European Molecular Biology Open Software Suite. Among these is the EMBOSS Water alignment program, which uses the Smith–Waterman algorithm for the alignment of two sequences, either nucleotide or protein (Figure 16.15). These pairwise local alignments match up the similar regions in two sequences and may indicate where they share similar functions or evolutionary relationships. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/64f573585cb44366ea1616adffcf4f300e7308d38d759c7300724389ad1f9636.jpg)



Figure 16.14 Smith–Waterman alignment. This Smith–Waterman alignment of the rpoH nucleotide sequences from Escherichia coli (top line) and Pseudomonas aeruginosa (bottom line) shows where the two sequences are similar along their lengths by aligning the bases and indicating identical bases with a vertical line. Where the insertion of spaces in one sequence would improve the matches between the pair of sequences, these are shown by a dash. Note that the lengths for each line overall include these introduced spaces; rpoH is 855 bases in both species, including the termination codon.


<table><tr><td>E_coli_RpoH</td><td>1</td><td>MTDKMQSL-ALAPVGNLDSYIRAANAWPMLSADEERALAEKLHYHGDLEA</td><td>49</td></tr><tr><td></td><td></td><td>||...||:||.||...||::::..:..:||...||:||.:|.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||.||:||:||. ||</td><td rowspan="2">50</td></tr><tr><td>P_aeru_RpoH</td><td>1</td><td>MTTSLQPVHALVPGANLEAYVHSVNSIPLLSPEQERELAERLFYQQDLEA</td></tr><tr><td>E_coli_RpoH</td><td>50</td><td>AKTLILSHLRFVVHIARNYAGYGLPQADLIQEGNIGLMKAVRRFNPEVGV</td><td>99</td></tr><tr><td></td><td></td><td>| : : : : | : | | | | | : : : | | | | . | | | | | : | | | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : | | : ||</td><td rowspan="2">100</td></tr><tr><td>P_aeru_RpoH</td><td>51</td><td>ARQMVLAHLRFVVHIAKSYSGYGLAQADLIQEGNVGLMKAVKRFNPEMGV</td></tr><tr><td>E_coli_RpoH</td><td>100</td><td>RLVSFAVHWIKAEIHEYVLRNWRIVKVATTKAQRKLFFNLRKTKQRLGWF</td><td>149</td></tr><tr><td></td><td></td><td>| ||||||||||||||||||| : : ||||||||||||||||||||||||||||||||||| ..: : || . .</td><td rowspan="2">150</td></tr><tr><td>P_aeru_RpoH</td><td>101</td><td>RLVSFAVHWIKAEIHEFILRNWRIVKVATTKAQRKLFFNLRSQKKRLAWL</td></tr><tr><td>E_coli_RpoH</td><td>150</td><td>NQDEVEMVARELGVT SKDVREMESRMAAQDMTFDLSSDDDSDSQPMAPVL</td><td rowspan="2">199</td></tr><tr><td></td><td></td><td>| . : || . . || . . || . . : || || || : . . || . . || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . . : || . .: ||</td></tr><tr><td>P_aeru_RpoH</td><td>151</td><td>NNEEVHRVAESLGVEPREVREMESRLTGQDMAFDPAADADDESAYQSPAH</td><td>200</td></tr><tr><td>E_coli_RpoH</td><td>200</td><td>YLQDKSSNFADGIEDDNWEEQAANRLTDAMQGLDERSQDIIRARWLDEDN</td><td rowspan="2">249</td></tr><tr><td></td><td></td><td>| : : | ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : ! ... : !...</td></tr><tr><td>P_aeru_RpoH</td><td>201</td><td>YLEDHRYDPARQLEDADWSDSSSANLHEALEGLDERSRDILQQRWLSEE-</td><td>249</td></tr><tr><td>E_coli_RpoH</td><td>250</td><td>KSTLQELADRYGVSAERVVRQLEKNAMKKLRAAIEA 284</td><td rowspan="2"></td></tr><tr><td></td><td></td><td>| : || .. :: :: .. || || :: || || || ..: .. .. ..</td></tr><tr><td>P_aeru_RpoHE_coli_RpoH</td><td>2501</td><td>KATLHDLAEKYNVSAERIRQLEKNAMSKLKGRILA 284MTDKMQSL-ALAPVGNLDSYIRAANAWPMLSADEERALAEKLHYHGDLEA<eq>\left| \left| \dots : \right| : \right| .\left| \dots : \right| : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : | : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : / : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :</eq></td><td>49</td></tr><tr><td>P_aeru_RpoH</td><td>1</td><td>MTTSLQPVHALVPGANLEAYVHSVNSIPLLSPEQERELAERLFYQQDLEA</td><td>50</td></tr><tr><td>E_coli_RpoH</td><td>50</td><td>AKTLILSHLRFVVHIARNYAGYGLPQADLIQEGNIGLMKAVRRFNPEVGV\( \left| \dots : : : \right| : \right| : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :</td><td></td></tr><tr><td>P_aeru_RpoH</td><td>51</td><td>ARQMVLAHLRFVVHIAKSYSGYGLAQADLIQEGNVGLMKAVKRFNPEMGV</td><td>100</td></tr><tr><td>E_coli_RpoH</td><td>100</td><td>RLVSFAVHWIKAEIHEYVLRNWRIVKVATTKAQRKLFFNLRKTKQRLGWF<eq>\left| \left| \dots : \right| : \right|</eq> : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :</td><td>149</td></tr><tr><td>P_aeru_RpoH</td><td>101</td><td>RLVSFAVHWIKAEIHEFILRNWRIVKVATTKAQRKLFFNLRSQKKRLAWL</td><td>150</td></tr><tr><td>E_coli_RpoH</td><td>150</td><td>NQDEVEMVARELGVT SKDVREMESRMAAQDMTFDLSSDDDSDSQPMAPVL<eq>\left| \dots : \right| :</eq> . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ..</td><td>199</td></tr><tr><td>P_aeru_RpoH</td><td>151</td><td>NNEEVHRVAESLGVEPREVREMESRLTGQDMAFDPAADADDESAYQSPAH</td><td>200</td></tr><tr><td>E_coli_RpoH</td><td>200</td><td>YLQDKSSNFADGIEDDNWEEQAANRLTDAMQGLDERSQDIIRARWLDEDN<eq>\left| \left| \dots : \right| : \right|</eq> . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . YLEDHRYDPARQLEDADWSDSSSANLHEALEGLDERSRDILQQRWLSEE-</td><td>249</td></tr><tr><td>E_coli_RpoH</td><td>250</td><td>KSTLQELADRYGVSAERVVRQLEKNAMKKLRAAIEA<eq>\left| \left| \dots : \right| : \right| :</eq> . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 284</td><td></td></tr><tr><td>P_aeru_RpoH</td><td>250</td><td>KATLHDLAEKYNVSAERIRQLEKNAMSKLKGRILA</td><td>284</td></tr></table>


Figure 16.15 EMBOSS Water. This EMBOSS Water alignment of the RpoH amino acid sequences from E. coli (top line) and P. aeruginosa (bottom line) shows where the two sequences are similar along their lengths by aligning the amino acids and indicating identical amino acids with a vertical line. Similar amino acids are shown with dots. Where the insertion of spaces in one sequence would improve the matches between the pairs, these are shown by a horizontal dash.


Figure 16.16 EMBOSS Matcher. This EMBOSS Matcher alignment of the RpoH amino acid sequences from E. coli (top line) and P. aeruginosa (bottom line) shows where the two sequences are similar along their lengths by aligning the amino acids and indicating identical amino acids with a vertical line. Similar amino acids are shown with dots. Where the insertion of spaces in one sequence would improve the matches between the pairs, these are shown by a dash. 

Another EMBOSS program, EMBOSS Matcher, uses an alignment algorithm based on LALIGN to do a local alignment between two sequences. This is quite rigorous. Unlike many other alignment programs, LALIGN is able to find internal duplications within a sequence by doing local alignments with itself for protein or nucleic acid sequences (Figure 16.16). 

## Global alignments will align any sequences, similar or not

The Needleman–Wunsch global alignment algorithm, developed and released in 1970, was the first alignment program. Originally, it was used to find similarities in amino acid sequences between proteins (Figure 16.17). The Needleman–Wunsch algorithm is still used to generate high-quality, optimal global alignments of two sequences, however it is computationally one of the slower alignment programs, especially for long sequences. As mentioned, a global alignment will always produce an alignment, even when two sequences are not similar to each other, so it should not be used unless it is already known that sequences are similar. However, if sequences have been identified as similar from a BLAST search, for example, a Needleman–Wunsch alignment will generate a superior alignment compared to the alignment that is made during the BLAST search process. It is therefore worth doing this sort of global alignment when a high-quality alignment is desired. 

<table><tr><td>MTDKMQSL-ALAPVGNLDSYIRAANAWPMLSADEERALAEKLHYHGDLEAAKTLILSHLR</td><td>59</td></tr><tr><td>MT +Q + AL P NL++Y+ + N+ P+LS ++ER LAE+L Y DLEAA+ ++L+HLR</td><td>60</td></tr><tr><td>MTTSLQPVHALVPGANLEAYVHSVNSIPLLSPEQERELAERLFYQQDLEAARQMVLAHLR</td><td></td></tr><tr><td>FVVHIARNYAGYGLPQADLIQEGNIGLMKAVRRFNPEVGVRLSVFAVHWIKAEIHEYVLR</td><td>119</td></tr><tr><td>FVVHIA++Y+GYGL QADLIQEGN+GLMKAV+RFNPE+GVRLVSFAVHWIKAEIHE++LR</td><td>120</td></tr><tr><td>FVVHIAKSYSGYGLAQADLIQEGNVGLMKAVKRFNPEMGVRLSVFAVHWIKAEIHEFILR</td><td></td></tr><tr><td>NWRIVKVATTKAQRKLFFNLRKTKQRLGWFNQDEVEMVARELGVT SKDVREMESRMAAQD</td><td>179</td></tr><tr><td>NWRIVKVATTKAQRKLFFNLR K+RL W N +EV VA LGV ++VREMESR+ QD</td><td>180</td></tr><tr><td>NWRIVKVATTKAQRKLFFNLRSQKKRLAWLNNEEVHRVAESLGVEPREVREMESRLTGQD</td><td></td></tr><tr><td>MTFDLSSDDDSDSQPMAPVLYLQDKSSNFADGIEDDNWEEQAANRLTDAMQGLDERSQDI</td><td>239</td></tr><tr><td>M FD ++D D +S +P YL+D + A +ED +W + ++ L +A++GLDERS+DI</td><td>240</td></tr><tr><td>MAFDPAADADDESAYQSPAHYLEDHRYDPARQLEDADWSDSSSANLHEALEGLDERSRDI</td><td></td></tr></table>

<table><tr><td>IRARWLDEDNKSTLQELADRYGVSAERVRQLEKNAMKKLRAAIEA</td><td>284</td></tr><tr><td>++ RWL E+ K+TL +LA++Y VSAER+RQLEKNAM KL+ I A LQQRWLSEE-KATLHDLAEKYNVSAERIRQLEKNAMSKLKGRILA</td><td>284</td></tr></table>


Figure 16.17 Needleman–Wunsch alignment. This Needleman–Wunsch alignment of the RpoH amino acid sequences from E. coli (top line) and P. aeruginosa (bottom line) shows where the two sequences are similar along their lengths by aligning the amino acids and indicating identical amino acids in the middle line. Similar amino acids are shown (+). Where the insertion of spaces in one sequence would improve the matches between the pairs, these are shown by a dash.


Among the EMBOSS suite of programs is EMBOSS Needle, a global alignment tool that uses the Needleman–Wunsch algorithm to align two protein or nucleotide sequences. There is also a modification of Needle, called Stretcher, that can accommodate larger sequences (Figure 16.18). 

## More complex comparisons need multiple sequence alignment algorithms

For alignments of more than two sequences, different algorithms are needed. Clustal was one of the earliest programs used for multiple sequence alignments of more than two sequences. It was developed by Des Higgins in 1988 and could be used for amino acid or nucleic acid sequences. There have been many improvements and variations since that time. The current standard version is ClustalΩ. ClustalΩ progressively develops a multiple alignment from a series of pairwise alignments, using the pairwise alignments between each of the input sequences to be aligned to create the best final alignment of all of the sequences together (Figure 16.19). ClustalΩ is one of the fastest online multiple sequence alignment tools available and produces accurate and reliable results. The scalability of the ClustalΩ program allows it to process hundreds of thousands of sequences into a multiple alignment in a few hours. This tool enables researchers to identify regions of similarity that are in common across multiple protein sequences, often indicating key amino acids that may be conserved functional domains of the protein. 

T-Coffee is another multiple alignment program, which is the Tree-based Consistency Objective Function for Alignment Evaluation. It generates pairwise alignments to guide the final multiple alignment. This alignment can use previously generated data to guide the alignment, being able to combine previously obtained multiple alignments, use structural information, and identify motifs. 

## Protein localization can be predicted from the amino acids

PSORT, Protein Subcellular Localization Prediction Tool, was the first bioinformatics program that was used on a wide scale for predicting the location of proteins in Gram-negative bacteria. Computational predictions of subcellular locations are based on known protein-sorting signals and how they direct proteins to these spaces in bacterial cells. PSORTb predicts cellular locations for proteins in Gram-negative and Gram-positive bacteria, as well as archaea. As discussed in Chapter 8, proteins are localized in the bacterial cell by specifi c mechanisms such as the Sec and Tat pathways. PSORT looks for the signals in the amino acid sequences recognized by these pathways and predicts the subcellular destinations of the protein based on signal sequence presence or absence (Figure 16.20). 

An alternative program to predict the cellular location of a protein is SignalP, which also looks for telltale signal peptides within the amino acid sequence. SignalP software predicts whether there is a signal peptide cleavage site in an amino acid sequence. It is also able to differentiate signal sequences and N-terminal transmembrane regions. This program can help identify proteins that will be exported out of the bacterial cell or will end up within the membrane and 

<table><tr><td>E_coli_RNaseE</td><td>1</td><td>MKRMLINATQQEELRVALVDGQRLYDLDIESPGHEQKKANIYKGKITRIE</td><td>50</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| | | | | | | | | . | | | | | | | | | | : | | | | | . . | | | | | | | : | | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | / | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : | : : | : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || :|| : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |
|</td><td>P_aeru_RNaseE</td><td>1</td><td>MKRMLINATQQEELRVALVDGQRLFDLDIESGAREQKKANIYKGRI TRVE</td><td>50</td></tr><tr><td>E_coli_RNaseE</td><td>51</td><td>PSLEAAFVDYGAERHGFLPLKEIAREYFPANYS AHGRPNIKDVLREGQEV</td><td>100</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| | | | | | | : | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |</td><td>98</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>101</td><td>IVQIDKEERGNKGAALTTFISLAGSYLVLMPNNPRAGGISRRIEGDDRTE</td><td>150</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| | : | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>99</td><td>IVQVEKEERGNKGAALTTFISLAGRYLVLMPNNPRAGGISRRIEGEERNE</td><td>148</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>151</td><td>LKEALASLELPEGMGLIVRTAGVGKSAEALQWDLSFRLKHWEAIKKAAES</td><td>200</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : | | | . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .</td><td>198</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>201</td><td>RPAPFLIHQESNVIVRAFRDLRQDIGEILIDNPKVLELARQHIAALGRP</td><td>250</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| . | | | | : | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeur_RNaseE</td><td>149</td><td>LREALNGLNAPADMGLIVRTAGLGRSTEELQWLDLYLLQLWSAIKEASGE</td><td>198</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>201</td><td>RPAPFLIHQESNVIVRAFRDLRQDIGEILIDNPKVLELARQHIAALGRP</td><td>250</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| . | | | | : | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |</td><td>247</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>199</td><td>RGAPFLIHQESNVIVRAFRDLRQDIGEILIDNPKVLELARQHIAALGRP</td><td>247</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>251</td><td>DFSSKIKLYTGEIPLFSHYQIESQIESAFQREVRLPSGGSIVIDSTEALT</td><td>300</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : : | : | : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || :|| :|| : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || :|| :|||| : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || :</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>248</td><td>QYASKVKLYQDSVPLFNRFQIESQIETAFQREVKLPSGGSIVIDPTEALV</td><td>297</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>301</td><td>AIDINSARATRGGDIEETAFTNTLEAADEIARQLRLRDLGGLIVIDFIDM</td><td>350</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : | | | | | : || | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |</td><td>347</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>298</td><td>SIDINSARATKGGDIEETALQTNLEAAEEIARQLRLRDIGGLIVIDFIDM</td><td>347</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>351</td><td>TPVRHQRAVENRLREAVRQDRARIQISHISRFGLLEMSRQLSPSLGESS</td><td rowspan="2">400</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : : : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || :</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>348</td><td>TPAKNQRAVEERVREALEADRARVQVGRISRFLLEMSRQLRLRPSLGETS</td><td>397</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>401</td><td>HHVCPRCSGTGTVRDNESLSLSILRLIEEEALKENTQEVHAIVPVPIASY</td><td>450</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| . | | | | : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : ||: || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : ||:|| : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : ||:</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>398</td><td>GIVCPRCNQGIIIRDVESLSLAILRLIEEEALKDRTAEVRARVPFQVAAF</td><td>447</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>451</td><td>LLNEKRSAVNAIETRQDGVRCIVIPNDQMETHYHLVRVRKGEETPTLSY</td><td>500</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : ||</td><td>490</td><td></td><td></td><td></td></tr><tr><td>E_aeru_RNaseE</td><td>448</td><td>LLNEKRNAITKIELLRTRA-RIFILPDDHLETPHFEVQRLR--DDSP----</td><td>490</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>501</td><td>MLPKLHEEAMALPSEEEFAERKRPE-QPALATFAMPDVPPAPTPAEPAP</td><td>549</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : : .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td>533</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>491</td><td>----ELVAGQTSYEMATVEHEEAQPVSSTRTLVRQEAAVKTVAPQQP</td><td>533</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>550</td><td>VVAPAPKAAPATPATPA-QPGLLSRFFGALKALFSGGEE--TKPTEQPAP</td><td>596</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| || .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. ....</td><td>581</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>534</td><td>--APQHTEAPVEPAKPMEPFLFQGLVKSLVSLFAGKDQPAAKPAETSKP</td><td>646</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>597</td><td>KAEAKPERQQDRRKQRNNRRDRNERRTRSERTEGSDNREENRRNRQA</td><td>646</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. ...</td><td>630</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>582</td><td>AAE-RQTRQDERRNGRQNNRRRDGRDNRRDEERKPREERAERQPREERA</td><td>630</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>647</td><td>QQQT AETREGRQQAEVTEKARTADEQQAPRRERSRRNDKRQAQQEAKA</td><td>696</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td>696</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>631</td><td>ERP NREERSERRREERAE--RPAREERQPREGREERAERTPREERQPREG</td><td>678</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>697</td><td>LNVEEQSVQETEQEERVRVPQPRRKQRQLNKVRYEQSVAEETVVAPVAE</td><td>746</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| . | | : :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td>724</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>679</td><td>REGREERSERRREERAERPAREERQPRE-GREERAERPAREER---QPRE</td><td>794</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>747</td><td>ETVAAEPIVQEAPAPRTELVKVPLPVVAQTAPEQQEENNADN--RDNGGM</td><td>794</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td>765</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>725</td><td>DRQARDAAALEAEA----LPNDESLEQDEQDDTDGERPRRRRSRGQ</td><td>844</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>795</td><td>PRRSRRSPRHLRVSGQRRRRYDERYPTQSPMPLTVACASPELASGKVWI</td><td>813</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : || : ||:</td><td>881</td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>766</td><td>RRRSNRRERQREVSGELEGSEATDN--AAAPLNTVAAAAAGIAVASEAV</td><td>863</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>845</td><td>RYPIVRPQDVQVEEQRE----QEEVQVQPMVTEVPVA--AAVE</td><td>881</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| :: :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>814</td><td>EANVEQAPATTSEAASETTASDETDASTSEAVETQGADSEANAGETADIE</td><td>813</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>882</td><td>PVVSAPVVEEMAEVVEAPVPVA-EPOPEVVETTHP-EVIAAAVTEQPQVI</td><td>929</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>864</td><td>APVTVSVVRDEADQSTLLVAQATEEAPFASESVESREDAESAVQPATEAA</td><td>913</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>930</td><td>TESDVAVAQEVAEHAEPVVEPQEETADIEEVAETAEVVVAEPEV---VAQ</td><td>976</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru RNaseE</td><td>914</td><td>EEVGAPVPVEAAAPSEPATTEEPTPAIAAVPANATGRALNDPREKRRLQR</td><td>963</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>977</td><td>PAAPVVAEVAAEVETVTAVKPEI----TVEHNHATAPMT-RAPAPEYVPE</td><td>1021</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: :: .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. ..</td><td></td><td></td><td></td><td></td></tr><tr><td>P_aeru_RNaseE</td><td>964</td><td>EAERLAREAAAAAAAAAAGAAPAVEEVPAVASEEASAQEEPAAPQAEIAQ</td><td>1013</td><td></td><td></td><td></td></tr><tr><td>E_coli_RNaseE</td><td>1022</td><td>A--PRHSDWRPTFAFEGKGAAGGHTATHHASAAPARP--QPVE 1061</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>| : :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: ::</td><td></td><td></td><td></td><td></td></tr></table>


Figure 16.18 EMBOSS Stretcher alignment. This EMBOSS Stretcher alignment of the RNase E enzyme amino acid sequences from E. coli (top line) and P. aeruginosa (bottom line) shows where the two sequences are similar along their lengths by aligning the amino acids and indicating identical amino acids with a vertical line. Similar amino acids are shown with dots. Where the insertion of spaces in one sequence would improve the matches between the pairs, these are shown by a dash.


<table><tr><td>N_men_RpoH</td><td>MPQMNNAFALPAIQSGNGSLEQYIHTVNSIPMLSQEEETRLAERR-IKGDLNAAKQLILS</td><td>59</td></tr><tr><td>E_coli_RpoH</td><td>---MTDK-MQSLALAPVGNLDSYIRAANAWPMLSADEERALAEKLHYHGDLEAAKTLILS</td><td>56</td></tr><tr><td>P_aeru_RpoH</td><td>---MTTSLQPVHALVPGANLEAYVHSVNSIPLLSPEQERELAERLFYQQDLEAARQMVLA*...*: *: :: .::*: ::* ***: : **: ::*: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: :: ::</td><td>57</td></tr><tr><td>N_men_RpoH</td><td>HLRVVVSIARGYDGYGLNQADLIQEGNIGLMKAVKRYEPGRGARLFSFAVHWIKAEIHEF</td><td>119</td></tr><tr><td>E_coli_RpoH</td><td>HLRFVVHIARNYAGYGLPQADLIQEGNIGLMKAVRRFNPEVGVR LVSFAVHWIKAEIHEY</td><td>116</td></tr><tr><td>P_aeru_RpoH</td><td>HLRFVVHIAKSYSGYGLAQADLIQEGNVGLMKAVKRFNPEMGVR LVSFAVHWIKAEIHEF***.** **:.* **** *******:*******:*:* *.*.********:</td><td>117</td></tr><tr><td>N_men_RpoH</td><td>ILRNWRLVRVATTKPQRKLFFNLRSMRKNLNALSPKEAQDIADDLGVKLSEVLEMEQRMT</td><td>179</td></tr><tr><td>E_coli_RpoH</td><td>VLRNWRIVKVATTKAQRKLFFNLRKTKQRLGWFNQDEVEMVARELGVTSKD VREMESRMA</td><td>176</td></tr><tr><td>P_aeru_RpoH</td><td>ILRNWRIVKVATTKAQRKLFFNLRSQKKRLAWLNNEEVHRVAESLGVEPREVREMESRLT:*****:*:***** *******. ::* :.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*</td><td>177</td></tr><tr><td>N_men_RpoH</td><td>GHDIAIMAD--NSDDEDSFAPIDWLADHDSEPSRQLSKQAHYALQTEGLQNALAQLDDRS</td><td>237</td></tr><tr><td>E_coli_RpoH</td><td>AQDMTFDLSSDDDSDSQPMAPVLYLQDKSSNFADGIEDDNWEEQAANRLTDAMQGLDERS</td><td>236</td></tr><tr><td>P_aeru_RpoH</td><td>GQDMAFDPAADADDESAYQSPAHYLEDHRYDPARQLEDADWSDSSSANLHEALEGLDERS</td><td>237</td></tr><tr><td></td><td>.:*::: :... ::* ::* :: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :</td><td>290</td></tr><tr><td>N_men_RpoH</td><td>RRIVESRWLQDDGGLTLHQLAAEYGVS AERIRQIEAKAMQKLRGFLTEEAEAV</td><td>284</td></tr><tr><td>E_coli_RpoH</td><td>QDIIRARWLDEDNKSTLQELADRYGVSAERVRQLEKNAMKKLRAAIEA----</td><td>284</td></tr><tr><td>P_aeru_RpoH</td><td>RDILQQRWLSEE-KATLHDLAEKYNVSAERIRQLEKNAMSKLKGRILA----</td><td>284</td></tr><tr><td></td><td>: *:*. ***.: *:*: *:*. *.*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*: *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*; *:*;</td><td>290</td></tr></table>


Figure 16.19 ClustalΩ alignment. This ClustalΩ alignment of the RpoH amino acid sequences from N. meningitidis (top line), E. coli (middle line), and P. aeruginosa (bottom line) shows where the three sequences are similar along their lengths by aligning the amino acids and indicating identical amino acids (*) and similar amino acids (: and .) below the alignment. Where the insertion of spaces in one sequence would improve the matches between the alignments, these are shown by a dash.


## PSORTb Results

SeqID: N_gonorrhoeae_MtrE 

Analysis Report: 

CMSVM- Unknown [No details] 

CytoSVM- Unknown [No details] 

ECSVM- Unknown [No details] 

ModHMM- Unknown [No internal helices found] 

Motif- Unknown [No motifs found] 

OMPMotif- OuterMembrane [matched 3 rules (Rule64, Rule116, Rule137)] 

OMSVM- OuterMembrane [No details] 

PPSVM- Unknown [No details] 

Profile- Unknown [No matches to profiles found] 

SCL-BLAST- OuterMembrane [matched 11353796: Outer membrane integral membrane protein] 

SCL-BLASTe- Unknown [No matches against database] 

Signal- Non-Cytoplasmic [Signal peptide detected] 

Localization Scores: 

Cytoplasmic 0.00 

CytoplasmicMembrane 0.00 

Periplasmic 

OuterMembrane 10.00 

Extracellular 0.00 

Final Prediction: 

OuterMembrane 10.00 

Figure 16.20 PSORTb results. This is the output from PSORTb for Neisseria gonorrhoeae MtrE, the outer membrane protein of the MtrCDE efflux pump system of this Gram-negative species. PSORTb has identified the outer membrane protein motifs in the amino acid sequence of MtrE (OMPMotif), matched an outer membrane integral membrane protein (SCL-BLAST), and detected the signal peptide present in the sequence (Signal). This results in a correct Final Prediction as an outer membrane protein (10 out of 10). 

those where the N-terminal amino acids of the encoded protein are cleaved in the mature protein (Figure 16.21). 

To gain additional information about a predicted protein, another tool that can be employed is the EMBOSS tool pepstats, which gives the statistics for peptide and protein sequences. Although it does not directly identify protein localization, the protein statistics information can contribute to an overall picture of the protein. The input to the program is an amino acid sequence. This generates various statistics about the protein including its molecular weight, the number of amino acids in the protein, the average weight of those amino acids, the charge of the protein, and its isoelectric point. This information on the physical qualities of the protein can be useful when planning laboratory experiments, since these predictions can help give the parameters of the experimental design. The information can also be added to other accumulated information, building a body of evidence supporting a location and/or function of a predicted protein. 

<table><tr><td colspan="6">Sequence</td></tr><tr><td colspan="6">Prediction: Lipoprotein signal peptide (Sec/SPII)</td></tr><tr><td></td><td>Protein type</td><td>Signal peptide (Sec/SPI)</td><td>TAT signal peptide (Tst/SPI)</td><td>Lipoprotein signal peptide (Sec/SPII)</td><td>Other</td></tr><tr><td colspan="6">Cleavage site between pos. 20 and 21; LSA-CT. Probability: 0.9987</td></tr><tr><td></td><td>Likelihood</td><td>0.0017</td><td>0.0002</td><td>0.9975</td><td>0.0006</td></tr></table>


SignalP-5.0 prediction (Gram-negative): Sequence


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ae7657783f0781c2f401a8f452e5a640f38342fe2b0b7f680a2f519e587a2908.jpg)


## DNA sequence to gene to amino acid sequence to 3D protein structure, ideally

Starting from the DNA sequence, it is possible to predict the CDS and to search with this sequence to identify any similar sequences, perhaps finding a proposed function for the potential gene. Certainly, translation of the DNA sequence into the predicted amino acid sequence is straightforward and generates the primary structure of the protein (Chapter 7). Ideally, to be able to predict the threedimensional structure of a protein (Chapter 7) starting from the DNA sequence would be a real achievement for genetics research. It would be possible to then investigate how the protein structure might interact with other protein structures and other molecules within the bacterial cell, the environment, and the host. 

From the features and order of the amino acids in the protein sequences, it is possible to predict a potential protein structure. Several different approaches are used to try to predict how the protein might fold within a biological system under certain conditions. Interestingly, there is an ongoing research communitywide experiment to test the effectiveness of protein structure prediction software. This massive project is called CASP, Critical Assessment of protein Structure Prediction. Since 1994, protein structure prediction methods have been tested every 2 years and the results made available. 

Some online servers will integrate several structural prediction tools into one web-based interface, making it worth the effort to look for those that might provide more options, rather than just providing one tool. For example, PredictProtein integrates 16 different prediction tools and four different databases, all through one web interface. ExPASy, the Bioinformatics Resource Portal, also has a wealth of tools available for protein and structural predictions. 

## De novo protein structure predictions base structures just on the amino acids

It has long been a goal to be able to give a primary amino acid sequence to a computer and have a three-dimensional protein structure prediction determined 

AFigure 16.21 SignalP results. This is the output from SignalP for N. gonorrhoeae MtrE, the outer membrane protein of the MtrCDE efflux pump system of this Gram-negative species. SignalP assesses the probability of the presence of different signal peptides in the sequence, presenting these data in graphical and table format. Here it has predicted a lipoprotein signal peptide present in the sequence and indicates that the amino acid sequence will be cleaved between the 20th and 21st amino acids. 

as the output. However, even with only 1,300 protein folds occurring in nature, this problem is complex, especially when the nature of such folds can be influenced by the environment in which the protein folds in the cell and the presence of chaperones or co-factors. 

Predictions for small proteins and those containing a single functional domain tend to be more accurate when compared to experimentally determined structures. As complexity increases in the protein, the accuracy of the structural prediction is less and the demands on computational resources are more. 

## Transmembrane helix prediction can find membrane proteins

Due to the hydrophobic nature of the interior of the phospholipid bilayer, any protein that spans the membrane will have regions of hydrophobic amino acids. It is possible to identify these and therefore identify transmembrane helices in proteins. In addition, although proline is hydrophobic, it is not internally part of alpha-helices due both to its bulky side chain and inability to contribute to hydrogen bonding (see Chapter 7), so transmembrane prediction software takes side-chain features such as this into account as well when searching for transmembrane alpha-helices. These predictions can reveal not only structural information about helices within proteins, but also localization information, being embedded in the membrane. 

## Homology modeling of protein structures based on known structures

Homology modeling methods create a three-dimensional structure of a protein based on an experimentally determined three-dimensional structure of a related homologous protein and the amino acid sequence of interest. This process is also called comparative modeling. Two homologous protein sequences are aligned and the amino acids of the protein of interest are mapped onto the experimentally determined structure to produce a predicted structure. 

## Protein threading can suggest a protein structure based on protein fold similarity

Protein threading is useful when there are no homologous proteins with an experimentally determined structure. In this case, there may be proteins that, although not homologous, share overall the same type of protein fold. This means that some of the internal structures of the protein are similar to other known protein structures in the way that they fold. This method is also called fold recognition. There are only about 1,300 unique folds that proteins are able to make in nature, therefore it is computationally possible to determine potential folds based on amino acid properties and known potential fold patterns. Most new protein structures determined experimentally are based on known folds. 

## Some gene tools are used to help design laboratory experiments

Primer3 is a program that is used to design PCR primers, sequencing primers, and hybridization probes. The parameters of design can be altered by the user to tailor the resulting primers, or probe, to the particular needs of the laboratory application (Figure 16.22). Poorly designed primers are often at the heart of failed PCR experiments, therefore the use of Primer3, with carefully selected design parameters, is an important first step. This program aids researchers in the design of primers for PCR by suggesting sequences for primers that are matched in their annealing temperatures (see Chapter 18) and will generate a PCR product of the desired size for the researcher. Further enhancements to this program have helped researchers to avoid some common primer-derived pitfalls in PCR that 

<table><tr><td>OLIGO</td><td>start</td><td>len</td><td>tm</td><td>gc%</td><td>any_th</td><td>3&#x27;_th</td><td>hairpin</td><td>seq</td></tr><tr><td>LEFT PRIMER</td><td>35</td><td>20</td><td>59.11</td><td>55.00</td><td>25.81</td><td>0.00</td><td>0.00</td><td>cagttggcaacctggattcc</td></tr><tr><td>RIGHT PRIMER</td><td>510</td><td>20</td><td>58.94</td><td>55.00</td><td>19.94</td><td>4.76</td><td>0.00</td><td>ctcacgtacgtctttgctgg</td></tr></table>

SEQUENCE SIZE: 855 

INCLUDED REGION SIZE: 855 

PRODUCT SIZE: 476, PAIR ANY_TH COMPL: 0.00, PAIR 3'_TH COMPL: 0.00 

1 atgactgacaaaatgcaaagtttagctttagccccagttggcaacctggattcctacatc >>>>>>>>>>>>>>>>>>>> 

61 cgggcagctaacgcgtggccgatgttgtcggctgacgaggagcgggcgctggctgaaaag 

121 ctgcattaccatggcgatctggaagcagctaaaacgctgatcctgtctcacctgcggttt 

181 gttgttcatattgctcgtaattatgcgggctatggcctgccacaggcggatttgattcag 

241 gaaggtaacatcggcctgatgaaagcagtgcgccgttttaacccggaagtgggtgtgcgc 

301 ctggtctccttcgccgtccactggatcaaagcagagatccacgaatacgttctgcgtaac 

361 tggcgtatcgtcaaagttgcgaccaccaaagcgcagcgcaaactgttcttcaacctgcgt 

421 aaaaccaagcagcgtctgggctggtttaaccaggatgaagtcgaaatggtggcccgtgaa 

481 ctgggcgtaaccagcaaagacgtacgtgagatggaatcacgtatggcggcacaggacatg <<<<<<<<<<<<<<<<<<<< 

541 acctttgacctgtcttccgacgacgattccgacagccaaccgatggcaccggtgctctat 

601 ctgcaggataaatcatctaactttgccgacggcattgaagatgataactgggaagagcag 

661 gcagcaaaccgtctgaccgacgcgatgcagggtctggacgaacgcagccaggacatcatc 

721 cgtgcgcgctggctggacgaagacaacaagtccacgttgcaggaactggctgaccgttac 

781 ggtgtttccgctgagcgtgtgcgccagctggaaaagaacgcgatgaaaaaactgcgcgct 

841 gctatagaagcgtaa 

KEYS (in order of precedence): 

>>>>>> left primer 

<<<<<< right primer 

Figure 16.22 Primer3 results. This Primer3 output shows the selection of a pair of PCR primers for the E. coli rpoH sequence. Default primer Tm parameters of a minimum 57 °C and maximum 62 °C were used, producing here primers with Tms of approximately 59 °C. The size of the product was selected as 400–500 bases, producing here a product with this primer pair of 476 bases. Both the left primer (>>>>>) and right primer (<<<<<) are 20 bases in length and their positions in the sequence of rpoH are indicated. 

will be discussed in Chapter 18, such as primer dimers and hairpins that can result in there being no PCR products. 

Primer-BLAST is a combination of Primer3 and BLAST to find primers for PCR and check that they are specific through BLAST. The BLAST part of the program uses the Primer3 output as the query sequence and finds any other hits in the targeted genome that mean the primers would generate a PCR product 

<table><tr><td>Primer pair 1</td><td>Sequence (5&#x27;-&gt;3&#x27;)</td><td>Template strand</td><td>Length</td><td>Start</td><td>Stop</td><td>Tm</td><td>GC%</td><td>Self complementarity</td><td>Self 3&#x27; complementarity</td></tr><tr><td>Forward primer</td><td>TTAACCCGGAAGTGGGTGTG</td><td>Plus</td><td>20</td><td>278</td><td>297</td><td>59.89</td><td>55.00</td><td>4.00</td><td>0.00</td></tr><tr><td>Reverse primer</td><td>TCCTGCAACGTGGACTTGTT</td><td>Minus</td><td>20</td><td>764</td><td>745</td><td>60.11</td><td>50.00</td><td>4.00</td><td>2.00</td></tr></table>


Product length 487 


Figure 16.23 Primer-BLAST results. This Primer-BLAST output shows the selection of a pair of PCR primers for the E. coli rpoH sequence. Default primer Tm parameters of a minimum 57 °C and maximum $6 2 ^ { \circ } C$ were used, producing here primers with Tms of approximately 60 °C. The size of the product was selected as 400–500 bases, producing here a product with this primer pair of 487 bases. Both the forward primer and reverse primer are 20 bases in length. This pair of primers was BLAST searched against the non-redundant nucleotide database entries for E. coli to confirm that the primers will specifically anneal to only these locations in the genome; primers that anneal elsewhere are not displayed. The output of this search is displayed to the user, who is able to select sequences that are the intended target for PCR primer annealing. 

other than the one desired (Figure 16.23). Such non-specific PCR products can be a huge issue in PCR and waste time in the laboratory, therefore good primer design at the start can save aggravation later. 

There are several programs that can help identify restriction enzyme digest sites within DNA from sequence data, which can aid in the design of experiments in the laboratory, such as the generation of recombinant DNA (see Chapter 18). Often the companies that supply restriction endonucleases have these tools on their web sites. For example, New England Biolabs has its NEBcutter to identify restriction sites in sequence data. These programs can often also suggest enzymes that have compatible sticky ends, facilitating the joining together of fragments of DNA (Figure 16.24). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ceaf7cbe2a34d6dd964b18b19d61476be17f4af1bcdd6702e2447e7a981cd831.jpg)



Figure 16.24 NEBcutter results. Using NEBcutter, the restriction enzyme recognition sequence sites within the E. coli rpoH gene sequence can be readily identified and displayed either graphically, as here, or in a list ordered by their position within the sequence.


## Key points

BLAST searches can identify similar sequences in the databases to the sequence being used for the search. 

Specialized BLAST searches like PSI-BLAST, GEO-BLAST, and Primer-BLAST use the BLAST search algorithm to find out more information about a sequence. 

Searches for conserved protein domains can identify functional regions within protein sequences. 

TAAlignments of sequences, either pairwise between two sequences or multiple alignments of several sequences, enable researchers to compare sequence data and features within DNA, RNA, and amino acid sequences. 

The signal sequence that is part of a secreted protein can be readily identified by programs like PSORT and SignalP and used to predict the cellular location of the protein from the amino acid sequence. 

There are several methods to attempt to predict protein structure from DNA sequence, based on homology to proteins with known structures or to protein folds, or based on the 1,300 potential ways amino acids are known to fold. 

Gene analysis programs can help design experiments in the laboratory, increasing the chances of success and efficiency. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>BLASTN</td><td>Global alignment</td><td>Pairwise alignment</td></tr><tr><td>BLASTP</td><td>Heuristic</td><td>Protein threading</td></tr><tr><td>BLASTX</td><td>Homology modeling</td><td>Query sequence</td></tr><tr><td>Comparative modeling</td><td>Local alignment</td><td>TBLASTN</td></tr><tr><td>Conserved domain</td><td>Low complexity regions</td><td>TBLASTX</td></tr><tr><td>Fold recognition</td><td>Multiple sequence alignment</td><td>Target sequence</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 Create a table that compares and summarizes the different versions of BLAST, including their inputs and outputs (nucleotide or amino acid), the databases searched, and other information that you can use for reference. 

2	 Download the sequence for any bacterial gene of interest; note the bacterial species. Run the sequence through a BLASTN search and identify the top hit that has come from a different bacterial species. Record the alignment between the query and the target and the data for this BLASTN result. 

3 Download the amino acid sequence for the bacterial gene used in question 2; this should be from the same bacterial species. Run the sequence through a BLASTP search and identify the top hit that has come from a different bacterial species. Record the alignment between the query and the target and the data for this BLASTP result. 

4	 During the BLASTP search for question 3, if the conserved domain search returned a result, record the information gained from that search, including the expanded and detailed information about the domains identified. If no domains were found, try a different protein sequence until a conserved domain is identified. 

5	 Use the DNA sequence that was used in the BLASTN search in question 2 in a BLASTX search. Does this identify the same protein hits as the BLASTP results from question 3? What differences are there and why? 

6	 Use the DNA sequence that was used in the BLASTN search in question 2 in a TBLASTX search. Are these results similar to any of the previous BLAST results? What differences are there and why? 

7 Using any available online tool, do a pairwise local alignment of two of the homologous DNA sequences identified from your BLAST searches. These could be your query and one target sequence, or they could be two target sequences. Record your results, noting similarity scores and any gaps. 

8 Using any available online tool, do a pairwise global alignment of two of the homologous DNA sequences identified from your BLAST searches. These should be the same two sequences used in question 7. Record your results, noting similarity scores and any gaps. Is there a difference between the local alignment from question 7 and this global alignment? 

9 Using any available online tool, do a multiple alignment of five of the homologous amino acid sequences identified from your BLAST searches. Record the results. If there are conserved domains identified in question 4, highlight these in the alignment. Are there notable regions of conservation between the protein sequences? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

PSI-BLAST can find potential distant evolutionary relationships between sequences. Starting with the sequence of a hypothetical protein of unknown function, run PSI-BLAST through several iterations until proteins of annotated functions are returned. Evaluate the credibility of these results and whether these hits might be reliable evidence to support experiments to investigate if the function of the hypothetical protein matches the annotated functions of these PSI-BLAST hits. 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

10	 Use the amino acid sequence that was used in question 3 in a PSORTb search. What does the output tell you about the potential cellular localization? Try some other protein sequences that might give different results. 

11	 Using the same amino acid sequence that went into PSORTb, run it through a SignalP prediction. Is a signal peptide cleavage site predicted? How about the other sequences you tried in question 10? 

12	 Use the gene sequence from question 2 to design PCR primers using Primer-BLAST. Adjust the parameters to make PCR products of three different lengths (at least 50 bp different) with Tms of 55 °C. 

2 Discuss the ways in which the potential structure of the protein investigated in question 3 could be determined using online tools. Are there any experimentally identified structures for these proteins or for related proteins identified in your searches? Is it possible to predict a structure for one of these proteins using any of the techniques discussed here or others you have found? 

3 Often in molecular biology a gene of interest is subject to restriction digestion. Using an online restriction enzyme recognition site identification program, such as NEBcutter, find the restriction digest sites in the gene used in question 2. Evaluate the restriction enzymes that recognize these sites. Identify those that cut the gene only once. Find a pair of restriction enzymes that work at the same temperature and in the same buffer that will cut the gene at the beginning and at the end, producing sticky ends. 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1d78b3278fbd86d05f2f9157d93e49f864126b39c6e1cfe7b64ed52bd236b36a.jpg)


## Further reading

## BLAST quickly finds the most similar sequences



Altschul S, Gish W, Miller W, Myers E, Lipman D. Basic local alignment search tool. J Mol Biol. 1990; 215(3): 403–410. 





Maryam L, Usmani SS, Raghava GPS. Computational resources in the management of antibiotic resistance: Speeding up drug discovery. Drug Discov Today. 2021; 26(9): 2138–2151. 



## Protein localization can be predicted from the amino acids



Petersen TN, Brunak S, von Heijne G, Nielsen H. SignalP 4.0: Discriminating signal peptides from transmembrane regions. Nat Methods. 2011; 8: 785–786. 





Yu NY, Wagner JR, Laird MR, Melli G, Rey S, Lo R. PSORTb 3.0: Improved protein subcellular localization prediction with refined localization subcategories and predictive capabilities for all prokaryotes. Bioinformatics. 2010; 26(13): 1608–1615. 



## TADNA sequence to gene to amino acid sequence to 3D protein structure, ideally



Yachdav G, Kloppmann E, Kajan L, Hecht M, Goldberg T, Hamp T. PredictProtein – An open resource for online prediction of protein structural and functional features. Nucleic Acids Res. 2014; 42(W1): W337–W343. 



## Homology modeling of protein structures based on known structures



Waterhouse A, Bertoni M, Bienert S, Studer G, Tauriello G, Gumienny R. SWISS-MODEL: Homology modelling of protein structures and complexes. Nucleic Acids Res. 2018; 46(W1): W296–W303. 



## CASome gene tools are used to help design laboratory experiments



Koressaar T, Remm M. Enhancements and modifications of primer design program Primer3. Bioinformatics. 2007; 23(10): 1289–1291. 





Ye J, Coulouris G, Zaretskaya I, Cutcutache I, Rozen S, Madden T. Primer-BLAST: A tool to design target-specific primers for polymerase chain reaction. BMC Bioinf. 2012; 13: 134. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b2c4aaf65c78f49e89be576d651033834fee2d68b438ea98161a10627303cda8.jpg)


# Genome Analysis Techniques

Chapter 

17 

Genome sequences are large, involving thousands to millions of individual A, T, G, and C bases. Therefore, analysis of the data is a significant task, requiring dedicated computer programs that are specifically designed to accommodate long strings of sequence data. In addition, it has to be remembered that the sequence is double stranded, which means that there can be information in either direction, so both must be analyzed for a thorough investigation. With the vast number of genomes available to researchers today, comparative analysis can reveal the regions of similarity and differences between strains and species, can aid in the annotation of genes and other genetic features, and can show phylogenetic relationships between bacteria. Presented in this chapter are computational tools and programs that are freely available. Other commercial tools are available, which are not discussed here. 

## A few things happen to the genome sequencing data before the search for genes

When the genome sequencing machine stops, it is time to get to work with the analysis, but before the search for interesting genes and genetic features in the bacterial genome can happen, the data need to be processed a bit first. No matter the type of genome sequencing platform used, the technology is in some way interpreting a signal as a nucleic acid, whether that is a signal from light being emitted or a pH change or a charge differential across a nanopore. Interpretation of these signals into the A’s, T’s, G’s, and C’s is base calling (Figure 17.1), and this step is important, is specific for each sequencing technology, and is constantly being improved. Data that were processed through previous versions of base calling software can often be re-analyzed with the software containing the improvements. This re-analysis can be worth doing, particularly for older data, but relies on keeping the original data from the sequencer needed for base calling. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/22f90a3db16f3b04ea01351c4a5a62a16da72f6df1731ce9b948d9213255a4ec.jpg)



Figure 17.1 Base calling from DNA sequencing where bases are detected by light, pH, or nanopore signals and the interpretation of these signals into bases. In sequencing by synthesisbased technologies, the incorporation of nucleotides by polymerase is detected by the emission of light (left) or the release of hydrogen and the resulting change in pH (middle). Although hydrogen is always released with the incorporation of a nucleotide, it is only detected by some technologies, therefore no hydrogen is shown on the left. Nanopores detect the passage of nucleotides through the pore (right). In each instance, the signal from the technology is interpreted to generate the sequence data in a process called base calling.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/668d84b0e3fb9c7d96c190e916acb0040ba4736858705ca50e54d526f802651c.jpg)



Figure 17.2 Assembly of sequencing reads. As discussed in Chapter 12, the individual sequencing reads generated by sequencing technologies need to be joined together. This produces an assembly, which is then ready for analysis.


The next stage is assembly, which was discussed in Chapter 12. At this stage, the separate sequences from the genome sequencing machine are pieced together in an attempt to reconstruct the chromosome as it is in the bacterial cell (Figure 17.2). There are various assembly programs and, like for base calling, these are often associated with the particular sequencing technology being used. If there is no specific assembly software that is packaged with the genome sequencing platform, there are likely to be particular assembly tools that are favored for the type of data produced by that technology. In addition, different genomes may work better with different assembly tools, by nature of features such as their %G+C. It may be worth trying different assembly programs to see what works for your data. Remember that for most bacterial genomes the GC skew around the circular chromosome can give an indication of whether the assembly is correct, although recent rearrangements, as well as incorrect assemblies, can alter GC skew (see Chapter 3). 

Finally, before analysis of the genetic features, the post-assembly data should undergo polishing. The process of polishing improves the accuracy of the data by going back over it to compare the final data to the original base calling data. This can improve error rates in the sequence and can give greater confidence in changes identified later in the analysis as being true mutations and not sequencing errors. 

## Identification of features in genomic data is a key aspect of analysis

When a genome has been sequenced, the first questions asked are usually which genes are present and what features make it different from other bacteria that have already been sequenced before? Therefore, the identification of genetic features within the genome sequence data is a key aspect of analysis. The most numerous of these are the coding sequences, the best guess at the genes that are encoded by the bacterial DNA. Also, within the genomic data are all of the RNAs, including the rRNAs, tRNAs, and ncRNAs. The genome also contains, as have been described in the previous chapters, other features such as transposons, IS elements, repeats, prophages, and regulatory elements. Therefore, genome annotation (Chapter 12), finding these features and noting their locations within the genomic data, is an essential step in bacterial genome sequence analysis. 

Because of all of those different features that are present in the DNA sequence, the process of bacterial genome data annotation needs to use different tools for identification of the various genetic features. It is possible to use tools individually to annotate the different features present in bacterial genomes, however most genomics researchers will start their annotations by using a pipeline that applies several tools at once, or in sequence, to the genome data, giving a single automated annotation output to the user. 

A pipeline that combines several different tools into one resource is a great starting point because these annotation pipelines combine many of the individual feature identification tools to the whole of the genomic data at once, assign feature numbers consistently across the genome, and format the data into a GenBank, ENA, or DDBJ file format (Chapter 12), as needed (Figure 17.3). 


Figure 17.3 An example pipeline for annotation of assembled sequence data. Once the sequencing data are assembled from the individual reads, the assembly can be analyzed for features. Using bioinformatics tools, simultaneously or sequentially, identify the CDSs, locate the rRNAs, find the tRNAs, and predict the ncRNAs, then annotate each of these. Further, it is possible to identify transposons (Tn’s) and IS elements (IS’s), locate prophages, find repeats, and predict regulatory elements to enhance the annotation. When complete, the annotation is uploaded to GenBank, ENA, or DDBJ in the format of the database.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/40bc64d4e1a3d9b20b0acae8c226f0df762dd2654ad0243d9fb653325f3291c5.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/6c0ed7d2b55ad7746f48e0263198beec41ddf4774123d9d71e70691d85e9c8a8.jpg)


## NCBI Prokaryotic Genome Annotation Pipeline

NCBI Prokaryotic Genome Annotation Pipeline(PGAP)is designed to annotate bacterial and archaeal genmes (chromosomes and plasmids). 

Genomeannotation isamulti-level process that includes prediction of protein-coding genes,as wellas other functional genomeunits suchas structural RNAs,tRNAs,smallRNAs,pseudogenes, controlregionsdirectandinvrtedepeatsinsertionuencestransposonsandothermobileelmnts. 

NCBI has developedanautomaticprokaryoticgenomeannotation pipeline thatcombinesab initio gene predictionalgorithms with homology based methods.The first versionof NCBl Prokaryotic GenomePipelinewasdevelopedin2001andisregularlyupgradedtoimprovestructuralandfunctionalannotationquaity (HaftDHetal2018atusovaIetal2016).Recentimprovementsutilize curatedproteinprofilehiddenMarkovmodels (HMMs),includingTIGRFAMSandnew HMMsforantimicrobialresistanceproteins,andcuratedcomplexdomainarchitecturesforfunctionalannotation of proteins.NCBl'sannotation pipelinedependsonseveral internal databasesand isnot currentlyavailable fordownload or useoutsideof the NCBl environment. 

Related documentation: 

·Annotation process 

·Annotation standards 

·Assemblies excluded from RefSeq 

·Release notes 

Figure 17.4 Screenshot of NCBI Prokaryotic Genome Annotation Pipeline (PGAP). This valuable tool is available from the National Center for Biotechnology Information (NCBI) and facilitates the depositing of prokaryotic genomes into GenBank. Genome sequence assembly data are uploaded to the web site, which generates an automated annotation in GenBank format. (From ncbi.nlm.nih.gov/genome/annotation_prok/.) 

## Automated annotation pipelines usefully combine feature identification tools

Three of the most commonly used genome annotation pipelines are the NCBI Prokaryotic Genomes Annotation Pipeline (PGAP) from the National Center for Biotechnology Information (the GenBank people), RAST (Rapid Annotation using Subsystem Technology), and Prokka. PGAP annotates bacterial and archaeal genomes, including chromosomes and plasmids (Figure 17.4). It predicts and annotates the locations and functions of protein-coding sequences, tRNAs, small RNAs, pseudogenes, direct and inverted repeats, and mobile elements, including transposons and IS elements. The functions of CDSs are based on homology and protein domains, making use of both the publicly available NCBI databases and several internal databases not available for outside interrogation. 

RAST is another fully automated bacterial genome annotation service available for bacterial and archaeal genomes (Figure 17.5). It “calls” genes, meaning it identifies potential CDSs and makes functional predictions based on homology to sequences in the public databases. This service is free to use, and annotations are available usually within 24 hours of submission of a complete or draft genome sequence. RAST identifies CDSs and RNAs and annotates their functions. Recent improvements to the pipeline have made it more customizable 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1c033ad4a5eccf88eb2e7b90fbd519797440c0062ac3d9f8265274980d4802a1.jpg)



Welcome to RAST


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/130da24d9504e641e5b76e4923efd3128d820447f139c2f0a1c8f475d0dfee00.jpg)



RAST Job Load,last 24 hours


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/cf592eb9aabb1242a6bfdb28251ac8fb985ce0ce7718a901f733c7a8035a30f0.jpg)



What isRAST?



RAST(RapidAnnotationusingSubsystemTechnologyisafulyautomatedserviceforannotatingcompleteornearlycompletebacterialandarchaealgenomes.Itprovideshighqualitygenomeannotationsforthesegenomesacrossthewholephylogenetictree


Figure 17.5 Screenshot of RAST (Rapid Annotation using Subsystem Technology). This valuable automated annotation tool provides a rapid annotation of bacterial genome assembly data, linked to functional data that can be interrogated and explored. (From rast.theseed.org/FIG/ rast.cgi.) 

# VICTORIAN BIOINFORMATICS CONSORTIUM

rapidannotation ofprokaryotic genomes.Atypical4 Mbpgenomecan befulyannotated inlessthan10minutesona quad-corecomputer，andscales wellto32coreSMPsystems.It filesthat are ready for editing in Sequin and ultimately submited to Genbank/DDJB/ENA 

- Download(360MB)-MD5-Changes -Docs-Paper-GitHub 

stenancementsatheProkkaGitub Issuespage 

Iunder the GPL (version2). 

Figure 17.6 Screenshot of the original source of Prokka. Prokka (currently available at https://github.com/tseemann/prokka) is able to produce an automated annotation of a bacterial sequence assembly within a few minutes, locally on the user’s own computer servers, rather than having to upload the data remotely. There are a number of local program requirements in addition to downloading Prokka (BioPerl, BLAST+, HMMER, Aragorn, Prodigal, tbl2asn, GNU Parallel, and Infernal), as well as recommended (Barrnap and MINCED) and optional programs (RNAmmer, HMMmmer, and SignalP). (From vicbioinformatics.com/software.prokka.shtml.) 

as the RAST toolkit, RASTtk. The RASTtk version enables researchers to choose their tools used in the feature identification and annotation pipeline. In addition to providing an annotation file for the genomic data, RAST provides users with a dashboard to explore the details of the annotated features in the genome, including which functional categories they fall into, such as biosynthetic genes, structural proteins, or tRNAs. It also analyzes the various potential metabolic pathways possible for the organism, based on the CDSs found in the annotation pipeline process. 

Prokka is another option for bacterial genome sequence annotation (Figure 17.6). It is a software tool freely available that rapidly annotates bacterial genomes, producing files suitable for submission to GenBank, ENA, or DDBJ. Unlike NCBI’s pipeline and RAST, the Prokka pipeline does not require users to upload their data to a remote server for processing. With Prokka, users download the software to use it; this requires BioPerl and other local installations. Prokka uses the command-line to fully annotate a bacterial genome in about 10 minutes on a typical desktop computer. One of the local program installations required is Prodigal, the Prokaryotic Dynamic Programming Genefinding Algorithm, which finds CDSs in bacterial and archaeal sequences. Prodigal is rapid and accurate, and comparable to or better than other gene-finding programs such as Glimmer. The Prokka annotation pipeline option is particularly useful to researchers who need an annotation fast and already have the command-line and supporting software installed. In this situation it takes just minutes to get a high-quality annotation of a genome. Coupled with modern next-generation sequencing, a bacterial isolate can have its DNA extracted, sequenced, assembled, and annotated in a day. 

The functional information is considered to be more robust from RAST than from Prokka; strengths and limitations of the three automated annotations are summarized in Figure 17.7. Keep in mind, as discussed in Chapter 12, that all annotations should be manually curated to ensure they are robust. 

<table><tr><td>Pipeline</td><td>Strength</td><td>Limitation</td></tr><tr><td>PGAP</td><td>Embedded into NCBI</td><td>Less straightforward for manual assessment of annotations</td></tr><tr><td>RAST</td><td>On-line tools to interrogate annotation</td><td>Genome uploaded and queued onto a remote server</td></tr><tr><td>Prokka</td><td>Local installation is rapid</td><td>Functional information less robust</td></tr></table>


Figure 17.7 Summary of PGAP, RAST, and Prokka. Strengths and limitations of the PGAP, RAST, and Prokka automated annotation pipelines.


## TAVisualization of an automatically generated annotation can aid manual curation

Once an annotation has been created, it should be checked to ensure that the automated choices for CDS locations are the best ones available and that the functional assignments fit with what is known in the literature for the bacterial species. It may be that there are errors in other annotations in the public databases and these can be replicated into new annotations through automated systems, however researchers with a critical eye and a knowledge of the bacterial species and the published literature can improve upon automated annotations through manual curation. This process is facilitated with a visualization tool, such as the Artemis Genome Browser. This program for visualizing genomic data was specifically designed for bacterial genomes and therefore takes the particular features of bacteria into account. 

The Artemis Genome Browser displays the sequence, annotation, and sixframe translation in a graphical user interface (Figure 17.8). The user is able to use Artemis to then edit the annotation, which may have been generated by PGAP, RAST, or Prokka. Users can also add entirely new annotation features that were not part of the original automated annotation or delete features. Artemis 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1166cd31ff83fafda68e2dca10e5f1b9931d42e6b755b3f54ddcce01e45c67b1.jpg)



Figure 17.8 Artemis Genome Browser interface. The main Artemis window provides access to tools that aid with editing annotation along the top and three windows with different features. The top window is an overview of a large region, here several assembled contigs merged together (Nodes 56, 53, 37, and 20). The vertical lines in the top window represent termination codons in each of the six reading frames, three on the positive strand (above the features line) and three on the negative strand (below the features line). The middle window zooms in on a portion of the sequence, displaying individual bases and translated amino acids for all six reading frames, with the positive strand on top and the negative below the DNA sequence. Termination codons are represented by *, #, and + depending on their sequence. The bottom window shows the annotations for the region. This will indicate the contig that features are on for partial assemblies. Clicking on a coding sequence, such as the blue box above, will highlight the feature in the zoomed view and the annotation information. An added annotation will appear in the bottom window, as will any additions made to existing annotations. (From Carver T et al. Bioinformatics. 2012; 28(4): 464–469.)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3f06fa87ae26c04efebf4f947dbfff051f21bf396bf21ea62ef8b801f356f84c.jpg)



Figure 17.9 DNA Plotter of sequence features in Neisseria gonorrhoeae strain NCCP11945.



DNA Plotter enables the visualization of sequence features around the circular chromosome of bacterial genomes. Here the CDSs on the positive and negative strands are shown in reds. The DNA uptake sequences (DUS) and a longer extended DNA uptake sequence (eDUS) are shown in blues, highlighting not only how frequent these features are, but also that there are some gaps. A few of the variant DNA uptake sequences (vDUS) and longer extended variant DNA uptake sequences (veDUS) from the non-pathogenic Neisseria spp. are present, shown in green. The Correia Repeat Enclosed Elements (CREE), unique to the Neisseria spp., are also mapped to the chromosome and shown in purple. This shows regions where these repeats are less frequent (A, B, and C), perhaps indicating regions of horizontal transfer or other unusual sequence features in the genome. (From Spencer-Smith et al. Microb Genomics 2016; 2: e000069. With permission from the Microbiology Society.)


also displays sequence features that are not annotated, but which can be useful in sequence analysis and in assessing annotations, such as %G+C and GC skew, as well as showing the individual sequence reads that contributed to the assembled sequence data, if needed. 

Artemis was improved upon in 2007, allowing multiple users to work on and change an annotation fi le simultaneously, making large genomic projects more efficient at the stage of manual curation. Built in to Artemis is DNA Plotter, which generates circular chromosome figures, popular in publications about genomes and genomic features (Figure 17.9). This gives a circular representation of the whole of the chromosome and allows the user to select features to display as concentric rings on the plot. 

Another option for annotation visualization is GenDB, which is both a genome annotation system and a genome annotation visualization system for bacterial genomes, allowing automated and manual annotation. GenDB is modular and can be easily linked to other systems and tools. The GenDB system identifies and annotates CDSs using an array of tools as a first step, which can then be followed by the easy-to-use interface for manual curation and annotation. 

Annotation with GenDB can be done by a team, even if the team members are present in different laboratories at different sites or in different countries. Each member of the team is able to sign into the data through a graphical web interface to access the data that are stored on a remote server (Figure 17.10). GenDB requires a Unix installation and Perl/C++ on a server, which is then accessed by users through the web interface, therefore GenDB needs some local support for use and implementation. However, once running, the web interface is intuitive for end users and links through to the sources of functional assignments from the automated annotations, facilitating manual curation within the graphical interface. In partially assembled genomes, each contig is presented separately. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/31a60e83850301231d96e105624cc3f33f8e9833b5516d819956a8305931b3d6.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fdfd9c2c8b56d39333474eb9b7de59fed8b82d8899af1e8d5833497f70c02227.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/5981c58e136afe9123631ffd2e5a073d01c04a622ca9a619133b9c6812999c49.jpg)



CFigure 17.10 GenDB bacterial genomeA annotation via web browser interface.



GenDB requires a local installation on a server, but then the genome data can be accessed for annotation using a web browser through a log-in page (left). The automated annotation generated using a pipeline of annotation tools can be accessed via the graphical interface (top right), which shows the evidence behind the annotations (bottom right). When the evidence has been assessed and the user is satisfied with the annotation, it can be exported in GenBank format. (Courtesy of GenDB.)


Other visualization tools that allow users to see the annotated features in the context of the sequence data are discussed later in the chapter. These additional tools are integrated into programs that also enable comparisons of genomic data or that provide other additional functionalities, as will be discussed. 

## Comparisons show orthologues and paralogues, revealing evolutionary relationships between genes

Once annotations are completed, meaningful comparisons can be made between genome sequences. Even without an annotation, sequence data can be compared against fully annotated genomes and use the annotation data from the reference genome as a guide to the unannotated features in the new data. Comparisons between data can reveal homologous sequences that are orthologues, as discussed in Chapter 12. These orthologous sequences can give an indication of the relatedness between bacteria. 

Tools such as the OrthoMCL gene clustering program use reciprocal best hits to identify orthologues. Reciprocal best hits are the top hit list in similarity searches for sequence identity both ways, between the genome and the database and between the database and the genome. This particular program forms groups of orthologues and paralogues, therefore it will also identify gene duplication events within the genomic data. Unfortunately, OrthoMCL doesn’t scale up to hundreds of genomes, so it is not useful for very large comparative genomics projects. 

Regardless of the tools used to investigate orthologues and paralogues, these investigations can uncover the evolutionary relationships between genes. The degree of similarity between orthologues may be able to suggest the divergence of the lineage of speciation of the genomes under investigation. Likewise, the similarity between paralogues can suggest how recently duplication events have created new genes. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b70d00423573bd89ada16b9f12182f37c4d393e6ccf0045eea1b030d64a5d25a.jpg)



Figure 17.11 Screenshot of ACT showing red similarity regions between Artemis-visualized sequences. Red between each pair of sequences shows a region of similarity that is orientated in the same direction. Where the red lines have a slant, the region has some rearrangement interrupting the synteny. Although not shown here, blue between a pair shows a region that has inverted, but is similar. (From Carver TJ et al. Bioinformatics 2005; 21: 3422–3423.)


## Genomes can be aligned, just like genes can be aligned

Advances in sequencing technology have meant that it is necessary not only to be able to perform gene alignments, but also to be able to do whole bacterial genome alignments. Researchers want to be able to investigate at a whole genome level characteristics like synteny and to be able to find rearrangements and regions of difference. To achieve this, several genome alignment programs have been developed. 

The Artemis Comparison Tool, ACT, is a Java-based application that displays pairwise alignments of two or more bacterial genomes. The two sequences are first compared by BLAST and then visualized in ACT. Regions of similarity between the genomic sequences are shown in red when in the same orientation or in blue when in the reverse orientation (Figure 17.11). Within the ACT user interface, it is possible to zoom in to the nucleotide level to be able to see the exact sequence of the DNA or to zoom out to see the whole of the genome on the computer screen at once. Using ACT, researchers can readily see regions of difference and connections between the DNA sequences that are being compared. The input files can be annotated GenBank/EMBL files or unannotated FASTA formatted files. 

Features of Artemis are integrated into ACT, and analyses conducted in ACT can be used to inform annotations using these integrated Artemis annotation tools. Researchers can therefore dynamically add to or edit the annotations of the genomes that are being compared in ACT similarly to a genome being visualized in Artemis. The number of comparisons possible in ACT is limited by the practicality of visualization; recommendations are for a few genomes, 3–4, possibly up to about 7. WebACT used a web browser interface for ACT to compare researchers’ own sequences or to look at pre-computed comparisons of genomes from the databases, however it went offline in December 2017. 

Of course, most bacterial genomes are circular, not linear. ACT and other genome alignment programs are aligning a linear file of the bacterial genome, which is not how it actually occurs in nature. BRIG, the BLAST Ring Image Generator, addresses this problem. BRIG makes circular figures of BLAST comparisons between complete genomic data in a Java-based application. In this way, it enables visualization around the circular chromosome of comparisons of the reference sequence to a set of query sequences from the BLAST results, plotted as colored rings (Figure 17.12). BRIG can compare many sequences in this way, however each has to be entered into the system by hand and there is a visualization limit to the rings, after which it becomes difficult to interpret. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1acb82c0cad325e73161d7c67bed299eed3202318378c31d2d426d9195c6b9f6.jpg)



Figure 17.12 BRIG comparison of E. coli and Salmonella genome sequences BLAST searched against E. coli O157:H7. The key to the right shows the color coding used for the different genome sequences that have been compared to E. coli O157:H7. This visualization tool enables regions of difference between genomes to be readily identified as white areas of the circles. (From Alikhan NF et al. BMC Genomics 2011; 12: 402.)


The use of BRIG can help to identify common elements across several genomes or regions missing from some. However, careful selection of the starting reference genome is important. It is against the reference that all of the query sequences are compared. If there are regions that are in the query sequences, but which are not in the reference, these regions will not show on the BRIG displayed result. Unfortunately, BRIG is no longer actively maintained, but it is still useful and still makes attractive and informative figures. 

## Mauve genome alignments make stunning figures, as well as being a useful research tool

Mauve is a freely available multiple genome alignment program that can be downloaded for use. It is similar to sequence alignment for genes, but scaled up, allowing researchers to look at regions of similarity between genomes. The Mauve genome alignment tool can generate alignments even in the presence of largescale rearrangements, inversions, and other evolutionary changes. The ability to easily align multiple genomes makes it possible to do comparisons between the content of the genomes, looking at similarities and differences. Although doing these alignments requires computational resources, the creators of Mauve have designed their program so that it scales well and will work on any length bacterial genomes of any reasonable number on nearly any laptop or desktop computer, given enough time. Their web site claims that two Yersinia pestis genomes can be aligned in under 2 minutes, while nine divergent Enterobacterial genomes can be aligned in a few hours. It is not feasible, however, to align more than about 50 genomes, both in terms of computing time and in terms of viewing and reasonably comparing the data. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e1aa14c5adb960aa6d716801669d5edd2e6e4dfe4f9d69242245b707d3a58db0.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0d346fa889183c9c902538de6e5ee5fb9f02899924c920309d21fac83ccc4948.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3e67db56b025bebcd125266c9e3e05b83d0b8272bd5761130d5210a1492fdc3e.jpg)



Figure 17.13 Mauve genome alignments show similar regions across the whole genome and can zoom in to the sequence level. A progressiveMauve alignment of four Neisseria gonorrhoeae strains shows LCBs (locally collinear blocks), regions of similarity, as colored blocks connected by lines (top panel). The same region across the four genomes is shown in the same color; regions inverted relative to the genome in the top line have an LCB below the line. Zooming in on a similar region in all four genomes reveals annotation information, with CDSs as white boxes, tRNAs as green boxes, and other features in pink (middle panel). Note this region is inverted in the other three genomes relative to the reference. It is possible to zoom in to the DNA sequence level (bottom panel), here showing the TAA termination codon of the annotated gyrB CDS, which is revealed when the mouse hovers over the white annotation box.


The algorithms used today are in progressiveMauve, an improvement upon the original in terms of accuracy of the alignments and of being applicable to more genomes, including those that are less than 50% identical. Mauve’s main strength is its ability to identify and align orthologous regions of the genomes. These are areas where two or more genomes have homology. These regions may be reordered or inverted relative to one another in their placement in the genome, and investigating these rearrangements of orthologous regions can provide insight into evolutionary events. Mauve identifies conserved segments of DNA during alignment. These are referred to within the software as locally collinear blocks (LCBs), and each is represented with a uniquely colored block that matches the corresponding orthologous region in the other genomes (Figure 17.13). These LCBs make it readily apparent to the researcher where there are genomic regions of similarity, areas that have been transposed to another place in the genome, and regions that have undergone inversion. 

Regions of difference (see Chapter 3) can also be readily identified within Mauve. These display as gaps in the LCBs in the Mauve graphical output (Figure 17.14). Zooming in on the sequence data in the graphical output, it is possible to see the annotation of genomes being compared, perhaps revealing that a bacteriophage sequence is present in one bacterial genome, but is not in the other, and therefore explaining the origin of the region of difference between the genomes. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3f076cd7d502b89c739921c8c8709c313f2d30a6de7fa64328ced9dbaaa2d602.jpg)



Figure 17.14 Identification of a region of difference using Mauve. LCBs can be set to show degrees of similarity within them, indicated here by the white within the colored blocks. Compared here are genome sequences of Neisseria meningitidis serogroup C strain FAM18 (top), N. meningitidis serogroup B strain MC58 (middle), and N. meningitidis serogroup A strain Z2491 (bottom), showing the capsule locus differences. The genes in this locus are responsible for the different serogroups of these strains.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/689e568e3c5f2a07e3fd64d0ead1d0d78ee52d6f0904565e6d213a4fc0c8142a.jpg)


There are other tools within Mauve that can facilitate the analysis of genomic data as well. For example, it is possible to search the genomic data and the annotation data in Mauve to further aid comparative genomic research. To determine if a gene or gene cluster is present in all of the aligned genomes in the comparison, the annotation could be searched for the gene name. Even if the gene is not annotated, or not correctly annotated, in all of the genomes, the alignment will reveal if there is homology at the sequence level between these sequences at the location of the CDSs. It is also possible to order and orient contigs, which can help with manual assembly of the genome once assembly software has done all that it can to assemble the data. It may be that in analyzing data it is recognized that the start of dnaA is present in Contig42 and the end of dnaA is present in Contig13 (Figure 17.15). Although these sequences were probably not annotated, being gene fragments, their alignment against other genomes may have revealed the fragments of dnaA and indicated the order and orientation for Contig42 and Contig13. 

## There is value in typing data, even in the genomics age

Prior to rapid and inexpensive bacterial whole-genome sequencing, several techniques were used to attempt to identify the relatedness of different bacterial isolates to one another with the goal of identifying common features, lineages, and outbreaks. One such technique is multi-locus sequence typing (MLST), which sequences discrete selected loci and uses these as a means to type and compare different bacterial isolates. Although in many ways MLST has been superseded by whole-genome sequencing, it remains a useful tool for large-scale population comparisons. Due to the size and historical value of data in MLST databases, which contain sequence data from carefully selected loci across bacterial chromosomes, it can be beneficial to extract the MLST information from genomic datasets and compare them to the MLST populations. This enables researchers to place these sequenced strains into the phylogenetic context of other established strains within known MLST clonal complexes, groups of genetically similar bacteria (Figure 17.16). An MLST-based phylogenetic tree of Helicobacter pylori, for example, has demonstrated that this bacterial species has genetic markers that are geographically distinct, aligning with the human population and its migration across the globe. The mother to child transmission of the H. pylori species has meant that its genome has evolved in lineages that trace the migration of our ancestors, grouping into the major regions of the world (see Figure 17.16). 

## Galaxy provides a full analysis suite for biological data

The tools described in this chapter thus far have come from a variety of sources. Although all freely available for use, they are not centralized in one location. Seeing a need for a one-stop resource that could analyze biological data and track the analyses that were done, Galaxy was developed and released in 2005. Galaxy is a widely used and continuously updated web-based platform for investigations of sequence data, although it should be noted that this is not specifically for bacterial data. Galaxy provides a graphical user interface for genome analysis programs that are otherwise working on the command-line. There is a menu of 

CAFigure 17.15 CDSs can span the ends of contigs. Close analysis of the features of the sequences at the ends of contigs can aid in joining together sequences that do not assemble, perhaps because there is not enough sequence overlap or due to some sequence error at the ends generating mismatches. Here, the beginning of the gene dnaA is identified at the end of Contig42 and the end of dnaA is identified at the end of Contig13. Although these two contigs have not assembled, the CDS sequence information suggests they should be joined. This discovery makes it possible to PCR across this portion of dnaA to fill in and join Contig42 to Contig13 with some automated Sanger sequence data. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/55e3b508bc06423d22e585615452850fe577afd6e2c7e404ceb5d6351695898c.jpg)



Figure 17.16 MLST tree of Helicobacter pylori showing the distinct populations that align with the migration of humans across the globe. Using specific conserved gene sequences, a phylogenetic tree is constructed that identifies the bacterial strains that are genetically similar. Because H. pylori tends to be transferred from mother to child, the strains have mostly remained with human lineages. This neighbor-joining tree was constructed by MEGA using aligned MLST sequences, identifying H. pylori groups based on geography.


various programs to select from with details of what each does, parameters set to default or that can be changed by the user, links to more information about the program, and the citations that should be used in publications when referencing (Figure 17.17). Users can upload their own data or access data from public databases. Originally designed for genomics, Galaxy is now also used, through the integration of additional bioinformatics tools, for transcriptomics and gene expression analysis, proteomics, and other applications involving biological data, such as drug design. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/56c9b4e78c178f8751893c243eee11b2ac6f9fc95d0609425af2fe06efa5e9e4.jpg)



Figure 17.17 Screenshot of Galaxy. Galaxy is a web-based suite of tools for analysis of genomic sequence data and other data related to biomedical research. (From usegalaxy.org.)


Another strength of Galaxy is that it is available to anyone, anywhere, through the web interface, and that it tracks your workflow as you do it. Each process or analysis applied to your data is recorded. If you take your genome sequence data from your genome sequencing machine and trim the data to remove poor-quality data at the ends of reads and poor-quality reads, this will be clearly recorded in your workflow and the output of the trimming given a new identity, distinct from the original data. Therefore, when it comes time to publish, there is a clear record of all changes to the data, the software that was used to analyze the data, and the settings and parameters for the software (Figure 17.18). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b1d6bde059d080338f0a87de30be4584e220492ff1bb3d9b9ae65d331199e44d.jpg)



Figure 17.18 Screenshot of Galaxy workflow record. Within Galaxy, your workflow, the tools that were applied to analyze your sequence data, is recorded and kept track of for you. This is a valuable resource for accurate reporting and reproducibility.



Figure 17.19 Screenshot of IGV showing the data and the various tracks. Here it is possible to visualize the assembled sequence data and also the individual sequencing reads that contributed to this assembled consensus. Using this information, individual SNPs can be investigated to determine the read coverage for them. For example, this might reveal that an SNP is present in 80% of the sequencing reads, with 20% of the bacterial population retaining the original sequence. (From https://wp.unil. ch/sequenceagenome/2015/05/06/ bioinformatics-treatment-of-bacterialrnaseq-data/.)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4c95e9275804ad3db352b16ba785a5550b36fc7bec1a5a2709f0fd3d7f3e933a.jpg)


There is very little computer programing knowledge needed with Galaxy, making genomic bioinformatics more accessible to many researchers. Because it is web based, it does not rely upon someone setting up Unix and Perl systems to use the tools; these are run on the Galaxy host servers on behalf of the end user. Integral to Galaxy is its training session, Galaxy 101, which takes new users through an introduction to Galaxy tools and the workflow by performing example step-by-step tasks. 

There are graphical interfaces available for some of the data outputs of Galaxy, although some are very biased toward eukaryotic projects and require a bit of extra time and setting up to coordinate with a chosen bacterial genome as the reference, rather than the human or mouse genome. The Integrative Genomics Viewer (IGV), for example, enables researchers to export datasets from Galaxy and explore them in a graphical interface (Figure 17.19). With IGV it is possible to conduct further manual analyses including zooming in on SNPs to look at them in genomic context and assessing read coverage of mapped reads against a reference genome. 

## Potential for use of artificial intelligence to analyze bacterial genome sequence data

With the advent and availability of web interfaces to interact with artificial intelligence (AI), some have speculated about how it can be used. AI can be particularly useful in the analysis of large datasets, such as might be desired when exploring the bacterial genome sequence data. The key for using AI in this manner is to have a good level of understanding about the types of tools that can be used to investigate genomic data, a clear research question to be investigated, and an understanding of the best ways to ask an AI for assistance in achieving the desired research outcome. For those who are less savvy in the use of bioinformatics programs or in developing new ways to interrogate the genome sequences, the use of AI may be a valuable tool. 

## Key points

Base calling, assembly, and polishing of the genomic data from the sequencing machine all precede identification of the genetic features in the DNA. 

Genome sequence annotation to find all of the CDSs, RNAs, and other genetic features often starts with an automated annotation pipeline. 

The NCBI Prokaryotic Genomes Automatic Annotation Pipeline, RAST, and Prokka are three popular automated bacterial genome annotation systems. 

All automated annotations should be manually curated, which can be facilitated through use of a visualization program, such as Artemis, GenDB, or Mauve. 

TAComparisons between genome sequences can reveal important similarities and differences, which is why programs such as ACT and Mauve that can align multiple whole bacterial genomes are beneficial research tools. 

Galaxy provides a web-based interface for bioinformatics tools that are otherwise only available via the command-line and tracks the workflow applied to data, making reporting of analysis steps in publications easier. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Base calling</td><td>Multi-locus sequence typing</td><td>Polishing</td></tr><tr><td>Clonal complexes</td><td>Orthologous regions</td><td>Reciprocal best hits</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 Outline the stages involved in assembly, which prepares genome sequence data for analysis. 

2	 What kinds of features can be identified in genome sequence data and annotated for inclusion with GenBank/ENA/DDBJ entries? 

3	 Download the complete genome sequence of any bacterial strain sequenced in the 1990s or early 2000s. Using the FASTA format of these data, generate a new automated annotation using PGAP, RAST, or Prokka. Note that this exercise will take some time to generate the annotations and if you choose to try Prokka, this requires local installations. Save this annotation. 

4	 Use the Artemis Genome Browser to view the annotation generated in question 3. Look through some of the genomic data and note at least three regions: one that looks like it could be an operon; one that includes rRNA or tRNA loci; and one where CDSs switch from one strand of the DNA to the other. 

5	 Use Artemis to generate a circular chromosome figure of the genome downloaded in question 3, displaying features from the annotation generated in question 4. Try to display the rRNA loci, %G+C, and GC skew. How does this compare to the original publication about this genome? 

6	 Use ACT to compare the genome sequence from question 3 to one or two other genome sequences from the same species. Are there any regions of rearrangement and/or inversion? Are there regions of difference, which are present in one genome sequence but not in the other? 

7	 Download and use Mauve to compare the original annotation of the bacterial genome sequence from question 3 to the automated annotation generated. Use progressiveMauve for the alignment. Scan through the annotations and note up to five differences between the annotations. Why do you think there are these differences? 

8	 Use progressiveMauve to compare the same genome sequences that were compared in question 6 with ACT. How are the differences between the genome sequences displayed in Mauve, including rearrangements, inversions, and regions of differences? Is anything notable in Mauve that was not in ACT? 

9	 Adjust the zoom and the settings in the Mauve alignment from question 8 to display a region of difference of your choice. Decide if you prefer the LCBs to be a solid color or to display the degrees of similarity by including white within the colored blocks. Export the image and save it. 

10	 Use the search function within Mauve to find dnaA in the genomes aligned in question 8. Zoom in to the DNA level and assess the sequence across all of the genome sequences to see if there are any differences in any of the aligned genome sequences. 

11	 Access Galaxy through the online web interface, register, and work through the Galaxy 101 tutorial. Note how the stages of analysis are recorded and saved, so they can be referred to later. 

12	 Using what you have learned from Galaxy 101, apply this knowledge to another sequence. This might be the sequence downloaded for use in question 3 or recently generated genome sequence data. 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

1 Compare an early bacterial genome sequence publication, such as the first Escherichia coli, Bacillus subtilis, or Haemophilus influenzae genome sequence, to a recent genome sequencing publication. What are the striking differences about what is reported in these papers? What are the differences in the methods used in sequencing, assembly, annotation, and analysis? 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

2 Many of the bacterial genome sequence data that are generated are not assembled to a closed circular genome (for those species that have circular genomes). Discuss the reasons why this process is difficult and time consuming. What analyses can be done with an assembly that is still in several contigs (or scaffolds)? Which tools described in this chapter can be used on this kind of genomic data? 

3 Discuss how MLST has contributed to understanding a specific bacterial population, paying particular attention to the methods used in the sequencing, sequence data assembly, annotation, and analysis. What insight was gained into the specific bacterial species, its geographic and/or chronological distribution, its antimicrobial resistance profile, and the ways it is/was transmitted? 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/781238a5dc0eaa1096576f4645803427b250a7978fc5aa64fa80dc5e305475b4.jpg)


## Further reading

## A few things happen to the genome sequencing data before the search for genes



Huang F, Xiao L, Gao M, Vallely EJ, Dybvig K, Atkinson TP, Waites KB, Chong Z. B-assembler: A circular bacterial genome assembler. BMC Genomics. 2022; 23(Suppl 4): 361. 





Land M, Hauser L, Jun S-R, Nookaew I, Leuze MR, Ahn T-H. Insights from 20 years of bacterial genome sequencing. Funct Integr Genomics. 2015; 15(2): 141–161. 



## Automated annotation pipelines usefully combine feature identification tools



Brettin T, Davis JJ, Disz T, Edwards RA, Gerdes S, Olsen GJ. RASTtk: A modular and extensible implementation of the RAST algorithm for building custom annotation pipelines and annotating batches of genomes. Sci Rep. 2015; 5: 8365. 





Delcher A, Bratke K, Powers E, Salzberg S. Identifying bacterial genes and endosymbiont DNA with Glimmer. Bioinformatics 2007; 23(6): 673–679. 





Seemann T. Prokka: Rapid prokaryotic genome annotation. Bioinformatics 2014; 30(14): 2068–2069. 





Tatusova T, DiCuccio M, Badretdin A, Chetvernin V, Newrocki EP, Zaslavsky L, Lomsadze A, Pruitt KD, Borodovsky M, Ostell J. NCBI prokaryotic genome annotation pipeline. Nucleic Acids Res. 2016; 44(14): 6614–6624. 



## Visualization of an automatically generated annotation can aid manual curation



Carver T, Harris SR, Berriman M, Parkhill J, McQuillan JA. Artemis: An integrated platform for visualization and analysis of high-throughput sequence-based experimental data. Bioinformatics. 2012; 28(4): 464–469. 





Meyer F, Goesmann A, McHardy AC, Bartels D, Bekel T, Clausen J. GenDB – An open source genome annotation system for prokaryotic genomes. Nucleic Acids Res. 2003; 31(8): 2187–2195. 





Spencer-Smith R, Roberts S, Gurung N, Snyder LAS. DNA uptake sequences in Neisseria gonorrhoeae as intrinsic transcriptional terminators and markers of horizontal gene transfer. Microb Genomics. 2016; 2(8): e000069. 



## Genomes can be aligned, just like genes can be aligned



Alikhan NF, Petty NK, Ben Zakour NL, Beatson SA. BLAST Ring Image Generator (BRIG): Simple prokaryote genome comparisons. BMC Genomics. 2011; 12: 402. 





Carver TJ, Rutherford KM, Berriman M, Rajandream MA, Barrell BG, Parkhill J. ACT: The Artemis comparison tool. Bioinformatics. 2005; 21(16): 3422–3423. 



## TAMauve genome alignments make stunning figures, as well as being a useful research tool



Charles C, Conde C, Vorimore F, Cochard T, Michelet L, Boschiroli ML, Biet F. Features of Mycobacterium bovis complete genomes belonging to 5 different lineages. Microorganisms. 2023; 11(1): 177. 





Cho H, Song ES, Heu S, Baek J, Lee YK, Lee S, Lee SW, Park DS, Lee TH, Kim JG, Hwang I. Prediction of host-specific genes by pan-genome analyses of the Korean Ralstonia solanacearum species complex. Front Microbiol. 2019; 10: 506. 





Darling AE, Mau B, Perna NT. progressiveMauve: Multiple genome alignment with gene gain, loss and rearrangement. PLoS One. 2010; 5(6): e11147. 





Lee JK, Seong MW, Shin D, Kim JI, Han MS, Yeon Y, Cho SI, Park SS, Choi EH. Comparative genomics of Mycoplasma pneumoniae isolated from children with pneumonia: South Korea, 2010–2016. BMC Genomics. 2019; 20(1): 910. 



## AThere is value in typing data, even in the genomics age



Falush D, Wirth T, Linz B, Pritchard JK, Stephens M, Kidd M. Traces of human migrations in Helicobacter pylori populations. Science. 2003; 299(5612): 1582–1585. 





Matsunari O, Shiota S, Suzuki R, Watada M, Kinjo N, Murakami K, Fujioka T, Kinjo F, Yamaoka Y. Association between Helicobacter pylori virulence factors and gastroduodenal diseases in Okinawa, Japan. J Clin Microbiol. 2012; 50(3): 876–883. 



## Galaxy provides a full analysis suite for biological data



Afgan E, Baker D, Batut B, van den Beek M, Bouvier D, Čech M. The Galaxy platform for accessible, reproducible and collaborative biomedical analyses: 2018 update. Nucleic Acids Res. 2018; 46(W1): W537–W544. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/93ca9ca1756b639f8d0bd4bfb47b57091d618c15a6ee0bbad120fa5e968b5c55.jpg)


# Laboratory Techniques

Chapter 

18 

In previous chapters, the theory of laboratory techniques has been described. In this chapter, the application of those theories will be explored in detail, with discussion of the specifics of the techniques including tips and recommendations for protocols and experimental design, as well as troubleshooting and alternative strategies.1,2 

## The study of bacterial genetics and genomics fundamentally focuses on DNA, therefore starting with lysis of bacterial cells for DNA extraction

To extract DNA, several laboratory methods have been developed and improved upon. For most extraction methods, bacterial cells are suspended in lysis buffer. This is usually made up of TE, which is 10 mM Tris-HCl (tris hydrochloride) and 1 mM EDTA (ethylenediaminetetraacetic acid) to which is added a detergent, such as SDS (sodium dodecyl sulfate) at a concentration of 0.5%. Alternatively, 1% Triton X-100 can be used as the detergent. Detergent agents not only aid in disruption of the cell membranes, but they also remove membrane proteins and lipids from the DNA extraction. 

For Gram-negative bacterial cells, add 200 μg/mL proteinase K to the lysis buffer and incubate at 56 °C for 30 minutes to 1 hour. For Gram-positive bacterial cells, lysis is more difficult, largely due to the thickness of the peptidoglycan layer. The lysis of acid-fast bacteria can also be tricky. Addition of lysozyme can be beneficial in these cases, however lysozyme is less effective against staphylococci and many Bacillus strains. Lysozyme is especially effective when combined with EDTA, which is present already in TE (Tris-HCl and EDTA) and is effective at disrupting bacterial cell walls, provided the enzyme has access to the peptidoglycan layer, which it does not in Gram-negatives unless the outer 

1 This chapter is not a laboratory manual; however, several laboratory techniques are described in sufficient detail that they could be translated into laboratory use with minimal additional research. Such additional research must include completion of all locally required safety documentation, full awareness of the hazards involved in all experiments, and use of the appropriate personal protective equipment by all persons affected. Experiments should only be performed in an appropriate laboratory environment. The exception to this location restriction is the at-home activity described at the end of the chapter for extraction of DNA in the kitchen using common household items. 

2 The next-generation sequencing protocols are specific to their sequencing machine platforms and are being continuously improved upon; they are not discussed in this chapter. Rather, there are overviews of these in Part IV of this book. Additionally, many manufacturers have specific kits for some of the techniques described here in this chapter that may have enhanced features or success rates. Familiarity with the techniques here will provide a basis for understanding the scientific basis of such kits and therefore aid in optimization or troubleshooting of such kits. Whether using a longstanding laboratory protocol or one from a purchased kit, always read all the way through a protocol before starting an experiment. Be sure you understand the experiment completely before beginning the experimental work and if not, that you research the steps that you do not understand. Knowing the purpose of all of the steps of a protocol will help with troubleshooting should you obtain results that are unexpected. Being familiar with a protocol before starting it will enable you to prepare all of the solutions, reagents, equipment, and materials that will be needed for the experiment, including setting temperatures for incubators or water baths or having bacterial cultures ready for the next experiment. 

membrane is otherwise compromised. Lysostaphin is effective at aiding in the lysis of staphylococci, but is only effective against staphylococci. 

Often physical methods of breaking open Gram-positive cells work best, such as beating the cells in a tube with small sterile beads or sonication. Sonication applies sound to agitate the sample, thereby breaking open the bacterial cells and releasing the DNA. To be precise, this technique uses ultrasonic waves delivered via an ultrasonicating bath or ultrasonic probe. Spores can also be difficult to break open to be able to extract the DNA. Like Gram-positive bacteria, physical methods are generally used to get the spores open. 

## DNA extraction using phenol produces very pure, large quantities of DNA

When a large quantity of very pure DNA is required, an old and established method of extraction using phenol is employed, although this carries with it hazards. Phenol is acutely toxic and causes chemical burns, while at the same time numbing the skin so that exposure is not immediately detected. It is imperative that material safety data sheets are read for this reagent before use, the risks are assessed, and gloves are changed frequently; phenol goes through nitrile gloves rapidly, therefore these should be avoided for phenol work. 

There are phenol DNA extraction methods, and RNA extraction methods discussed later in this chapter, that have eliminated the lysis step by shaking the cells in phenol either on its own or with glass beads. Either way, the cells need to be broken open for the DNA to be released from the bacterial cells. The extraction method starts with the DNA in an aqueous solution. 

Phenol/chloroform/isoamyl alcohol (25:24:1) pH 7.8–8.2 is used for DNA extraction. The pH is important. If acidic phenol is used, the DNA will not be recovered; the DNA will be in the phenolic layer and the RNA alone will be in the aqueous layer. Acidic phenol is used for RNA extraction, which will be covered in a later section of this chapter. Check if the supplied bottle of phenol/chloroform/ isoamyl alcohol has a layer of water or buffer on the top. If so, do not remove this; pipette from below the water level to use the phenol/chloroform/isoamyl alcohol. Add an equal volume of phenol/chloroform/isoamyl alcohol to bacterial cells suspended in broth or PBS. Mix until a suspension is formed. Some protocols suggest vortexing this mixture for 1 minute, while others recommend gentle agitation for 10 minutes. The latter results in more intact DNA, whereas the former will lyse more cells. The goal of this step is to create an emulsion. 

## Phase separation and DNA precipitation in a phenol DNA extraction result in isolated DNA

Centrifuge the emulsion at the maximum speed allowable for the centrifuge and tubes for at least 1 minute to separate the aqueous and phenolic phases (Figure 18.1). This may require up to 10 minutes of centrifugation. Generally, the upper layer will be the aqueous phase and thus contain the DNA. However, if the sample is high in salt or otherwise alters the properties of the emulsion, the aqueous phase can be at the bottom. Using a colored phenol available from many suppliers can aid in the identification of the phenolic and aqueous phases. At this stage, the aqueous phase needs to be transferred to a new tube, however it is important to be careful not to disturb the interphase, the layer between the aqueous and phenolic phases (see Figure 18.1). It is also important not to disturb the phenol layer. The interphase contains proteins that will contaminate the DNA extraction, including potentially DNases that can degrade the DNA and other proteins that may inhibit downstream experiments. Phenol contamination of the DNA from the phenol phase at the bottom of the tube may also inhibit downstream experiments as well as being a hazard. 

Transfer the aqueous phase to a new tube by pipetting with a 100–1,000 μL volume micropipette. Safely dispose of the phenolic phase, tubes, and tips in chemical waste according to hazardous waste protocols. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/66aa1914461089abc85a7ac2216fb9157d9bc96d9761f60840140bcab21887b9.jpg)



CAFigure 18.1 Phenol extraction phases. Following centrifugation, the phases separate into a top aqueous phase containing DNA and RNA, a bottom phase that is the phenol, and a middle interphase layer of protein. The top layer is transferred via pipette to a fresh tube, taking care not to disturb the interphase or phenol layers.


To precipitate the DNA out of solution, add 3 M $\mathrm { N H _ { 4 } O A c }$ at one-tenth of the volume of recovered aqueous phase, pipetted under the liquid level of the aqueous phase in its new tube, and mix (Figure 18.2). Next, add 2.5 volumes of 100% EtOH to the aqueous phase and mix (Text Box 18.1). At this stage, it should be possible to start to see the DNA floating in the mixture, appearing as a wisp that may have bubbles attached to it (see Figure 18.2). Extraction can continue from here or the sample can be chilled, either at $- 8 0 ~ ^ { \circ } \mathrm { C }$ for 1 hour $\mathrm { \Omega _ { 0 r - 2 0 } } { } ^ { \circ } \mathrm { C }$ overnight, which is believed to increase yield. To pellet the DNA to the bottom of the tube, centrifuge at a safe maximum speed for 2–5 minutes, ideally at $4 ~ { } ^ { \circ } \mathrm { C }$ (see Figure 18.2). Carefully remove the ethanol supernatant from the DNA pellet. Wash the pellet with 70% EtOH by adding $2 0 0 \mu \mathrm { L }$ to the pellet, repeating the centrifugation, and again carefully removing the ethanol supernatant from the DNA pellet. For increased purity, wash again with 70% EtOH. 

The DNA pellet must be air dried, allowing the ethanol to evaporate. Leave the tube open on the bench in a clean location until all droplets are gone. To speed up this process, be sure all of the 70% EtOH liquid is removed carefully with a small pipette tip. DNA that is pure will be hard to see as a pellet. DNA that is contaminated with protein will appear as a white pellet, whereas pure DNA will be more transparent and can, at times, have a yellow tinge. Once the pellet is completely dry, suspend the DNA pellet in 10 mM Tris-EDTA pH 8.5 or ultra-pure water. Store the DNA at $4 ^ { \circ } \mathrm { C }$ short term or $\mathrm { a t } - 2 0 \ ^ { \circ } \mathrm { C }$ long term in aliquots to avoid 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/7a7d822187cb4b417fe73a138438070bc43e65ceae2154a765b492b871be26ac.jpg)


## Text Box 18.1

If you have 100 μL of aqueous phase, first add 10 μL of 3 M NH4OAc and then 250 μL 100% EtOH. 

Figure 18.2 DNA precipitation. To the aqueous phase, add sodium acetate under the surface of the liquid. Then, add ethanol to precipitate the DNA. After centrifugation, a pellet will be evident at the bottom of the tube. 

repeated freeze–thaw. Freezing and thawing nucleic acids breaks the backbone, particularly of genomic DNA, resulting in fragmented DNA, therefore repeated freeze–thaws should be avoided. 

## Additional considerations for phenol DNA extraction can improve the outcome

Some protocols recommend repeating the phenol extraction two to three times. This involves taking the aqueous phase off to a new tube and then adding an equal volume of fresh phenol/chloroform/isoamyl alcohol to it. This is again mixed, centrifuged, and the aqueous phase removed. The purpose of repeating these steps is to reduce protein contamination from the interphase layer, which should visibly reduce each time. If there are issues with protein contamination, this is recommended, but generally the additional steps are not needed, particularly if care and attention are taken when removing the aqueous phase. 

Some protocols also recommend extracting the aqueous phase one to two times with equal volumes of chloroform/isoamyl alcohol. This reduces phenol contamination in the final DNA preparation, which can interfere with downstream experiments. If phenol contamination is a problem, this is recommended, but if the aqueous phase is carefully removed, phenol contamination can usually be avoided. At the point of taking the aqueous phase into a new tube, do not try to take too much of it. If as much as possible of the aqueous phase is taken in an effort to increase DNA yield, it is more likely that there will be both phenol and protein contamination of the DNA. In an attempt to get a better result, a bigger yield of DNA, the extraction will actually be compromised. 

Ultra-pure water (18 MΩ) is best for all applications, but it is not buffering, so DNA doesn’t necessarily last as long in ultra-pure water as it might in TE (Tris-EDTA). The inhibitory effects of EDTA on some downstream experiments can be avoided by taking a middle ground and using 10 mM Tris pH 8.5 as a DNA storage buffer, with no EDTA. DNA is more stable at the slightly basic pH of 8.5, thus TE and 10 mM Tris are made to pH 8.5. Pellets will suspend more readily in Tris solutions than in water. Prior to suspension of the pellet in water, TE, or 10 mM Tris, the pellet should be completely dry. Ethanol contamination of DNA cannot be detected by a spectrophotometer, however the presence of ethanol in the DNA extraction can impact downstream experiments. For example, the sample may float up from wells of an agarose gel, even with sufficient loading dye, or the sample may not freeze at −20 °C. 

It should be noted that when mixing 70% ethanol it is not appropriate to measure both the ethanol and the water volumes in the same graduated cylinder at the same time (Text Box 18.2). If the ethanol being used is also old and may have absorbed water from the atmosphere, the starting 70 mL will not have been 100% ethanol so the resulting solution will be even farther off 70% than expected. The correct procedure is to use the graduated cylinder to measure 70 mL of ethanol, pour this into a bottle, then use the graduated cylinder to measure 30 mL of distilled water and pour this into a bottle (see Text Box 18.2). Having done this, now measure the total volume of the two. It will be less than 100 mL, but the solution made will accurately be 70% ethanol. This is because ethanol and water dissolve in each other, so the volumes cannot be accurately measured together in the way either two aqueous solutions or two alcohol solutions could be. If in doubt about the age of the ethanol and if it has taken up atmospheric water and is possibly not near 100% (or 99.8% or 99.5% as it was when purchased), make 75% or 80% ethanol to use in the later stage of the DNA extraction; this will wash off residual salts from DNA too and not risk losing the DNA in the aqueous portion. 

## Most DNA extractions use columns

Most DNA extractions make use of column matrix technology, whether they are for chromosomal DNA or plasmid DNA. There are also kits for RNA extraction, covered later in the chapter, and those for cleaning up DNA-based reactions. 

## Text Box 18.2

If 70 mL is measured into a graduated cylinder and then the graduated cylinder is filled to the 100 mL mark with distilled water, this will not make 70% ethanol; the resulting solution is less than 70% and closer to 67%–68% ethanol. Instead, measure 70 mL of ethanol, then separately measure 30  mL of distilled water. When the 70 mL of ethanol and 30 mL of water are combined they will make 70% ethanol. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/7ba657948bc9e751b4dbbcf5eeec138ad38235ea89ba149e60efd654f11f9ea2.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/adb15db17c65e5cbc4bc7b563a555a977aa2dc5283331d646494eec012c2c358.jpg)



Figure 18.3 Extraction columns bind DNA using a silica resin matrix. Within spin columns used for DNA extraction, there is a filter containing a matrix of silica resin (Si), which binds to nucleic acids (left) at the optimal pH and salt conditions. The DNA is released from the column by elution with an aqueous-based solution (right), which can be water or the solution provided with the kit.


Spin columns or vacuum columns are available in commercial kits and most contain a silica resin that binds nucleic acids (Figure 18.3). Depending on the concentrations of salts and other components in the buffers that are included in the extraction kits, the extraction is specific for genomic DNA, plasmid DNA, or RNA. 

In extraction column protocols the manufacturer’s instructions need to be followed, but in general the principles are similar. Bacterial cells are mixed with kit lysis buffers, which generally contain salts such as guanidine thiocyanate or urea. These types of salts disrupt proteins that might be bound to the DNA and disrupt the interaction of nucleic acids with water, encouraging the binding to silica. Lysis buffers in the kits also contain detergents, such as sodium dodecyl sulfate (SDS), to solubilize proteins and lyse the bacterial cells, and EDTA to inhibit DNases present in the bacterial cell, similarly to the phenol extraction. Also, as with the phenol DNA extraction, addition of enzymes such as proteinase K (Gram-negative) or lysozyme (Gram-positive) may help. Once lysis is achieved, a binding buffer is added to adjust the buffer conditions from lysis to conditions that will permit the DNA to bind to the silica within the column. 

The mixture is added to the extraction column and centrifuged. This forces the liquid through the column and provides the opportunity for the DNA to be bound by the silica in the column (Figure 18.4). The flow-through liquid mixture of lysis buffer and binding buffer is disposed of and the DNA on the column is then washed with a kit-provided wash solution (Text Box 18.3). Generally, the column is washed twice to remove residual salts from the first stage lysis and to clean the DNA that is bound to the silica column of protein. As for the DNA binding, the wash is applied to the top of the spin column, which is centrifuged to force the wash through the column, and the flow-through of the wash solution 

## Text Box 18.3

The wash solution is generally supplied without the needed essential ingredient, ethanol, which is added by the user. The wash solution is not 100% alcohol because this would result in an overabundance of small fragments and degraded DNA. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/59fc2c8fc924b17ccdb1b8b9a6d37e4d0edf766e4c6e372b788f6eae77dc7d30.jpg)



Figure 18.4 Steps of using an extraction column. To extract DNA with an extraction column, the sample is prepared for going onto the column using the supplied buffers. This mixture is put onto the column and centrifuged, so that it flows through the extraction column filter and the DNA binds to the column. Alternatively, a vacuum pump is used to draw the liquid through the column. The DNA on the column is washed with a supplied wash solution, before the DNA is eluted off the column, ready to use.


is disposed of before proceeding (see Figure 18.4). Following one to two washes, the spin column is centrifuged again to remove any residual wash solution. This ensures a cleaner elution of the DNA off the column, as residual ethanol on the column interferes with elution. Finally, 10 mM Tris pH 8.5, TE, a supplied elution buffer, or pure water is added to the column, causing the DNA to dissociate from the silica and enter the aqueous solution. Upon centrifugation, the flow-through now contains the DNA and should be retained (see Figure 18.4). 

## Troubleshooting DNA extractions can increase yield and quality of the DNA

If the yield of DNA from either a phenol or column extraction is low, this could be due to incomplete lysis of cells. It is important to research the options for breaking open the bacterial cells that are being used in your experiment, remembering the thick peptidoglycan of Gram-positive species and the resilient structure of spores can be problematic. 

Use fresh high-quality EtOH when making up the wash solution in column kits and for washes in phenol/chloroform/isoamyl alcohol extractions. Poorquality EtOH and old bottles that have been open may take up water from the atmosphere, reducing them from nearly 100%. An almost empty bottle is likely to be quite a bit less than 100%; it might be best to make 75% or 80% EtOH rather than 70% in this context or to purchase a fresh bottle for DNA extraction. 

Protein contamination can have a negative impact upon the results of downstream experiments. Following the DNA extraction, the $\mathrm { A _ { 2 8 0 } }$ reading on a spectrophotometer should be assessed and compared to the $\mathrm { { A } _ { 2 6 0 } }$ reading. Absorbance at 280 nm on a spectrophotometer corresponds to proteins in aqueous solution, while DNA and RNA absorb at 260 nm. If the $\mathrm { A _ { 2 8 0 } }$ reading is high compared to the $\mathrm { A } _ { 2 6 0 } ,$ such that the A260/280 ratio is less than 1.7, this indicates that the DNA extraction is contaminated with protein. Protein contamination of a DNA extraction can be due to an excess of starting material, where too large a mass of bacterial cells are used at the start. Increasing yield is not simply a matter of starting with more sample, just as it is not possible to roast a chicken in a quarter of the time at four times the temperature. Each protocol has a sample limit. Exceed this limit and protein contamination occurs. 

Proteins are not the only source of contamination. A poor $\mathrm { A } _ { 2 6 0 } / _ { 2 3 0 }$ ratio on the spectrophotometer is indicative of phenol contamination or salt contamination. Take care in removing the aqueous phase in phenol extractions and use adequate washes with both protocols. 

Lastly, a quantity of DNA may be obtained, but it could be very fragmented and therefore unsuitable for the desired experiment. Degradation of DNA is generally due to the treatment of the sample at the lysis stage. Gentle agitation with rocking or rotary mixing is recommended rather than vortexing if samples are degraded. This can be important if the DNA is being extracted for long-range PCR, covered later in this chapter, or long-range sequencing. 

## A quick (and dirty) DNA extraction can be achieved by boiling

A simplified method of DNA extraction involves boiling the bacterial sample and can be effective for a quick, albeit generally highly protein-contaminated, extraction for both Gram-negative and Gram-positive bacteria. 

Grow a culture of bacteria to $1 0 ^ { 6 }$ cfu/mL and collect a pellet of the bacterial cells by centrifugation, which are then resuspended in 200 μL TE. The TE bacterial suspension is boiled for 15 minutes, with the cap of the microfuge tube being secured with a locking clip or as a screw cap, so it does not pop open during the boiling process. This could be a safety hazard and should not be attempted with bacterial pathogens that may be an aerosolization risk; risk assessments for all experiments are important. Following the 15 minutes of boiling, the tube is centrifuged at maximum speed for 5 minutes and the DNA-containing 

TAsupernatant is removed to a new tube. This method is akin to the method used for colony PCR (see page 325) and will not produce DNA that is very clean or pure, but it will rapidly release DNA from the bacterial cells and separate them from the cellular material by centrifugation, and the resulting DNA may be viable for some applications. 

## The first recombinant DNA experiments in the 1970s were made possible because of restriction enzymes, which are still used today

Once DNA is extracted from the bacterial cell, it can be used for a variety of molecular biology applications, including generation of recombinant DNA. As discussed in Chapter 10, recombinant DNA is DNA that originated from two different biological sources, such as putting a gene from one bacterial species into a plasmid from another species. This is most commonly done for the purposes of genetic manipulation of the gene sequence. The first recombinant DNA to be put into a biological organism was in 1973 by Herbert Boyer and Stanley Cohen. This work was preceded by Paul Berg and Janet Mertz’s in vitro joining of DNA in 1971; they did not transform this into living cells because at the time there were concerns about whether this was safe. Similar methods to these are still used today to cut pieces of DNA with restriction enzymes so they have compatible ends and then join them with ligase to make DNA from two different original sources. 

Restriction digestion uses restriction endonucleases (see Chapter 10), enzymes that are commercially provided in a glycerol solution. Due to the presence of the glycerol, the tube with the enzyme will not freeze, therefore keep the restriction enzyme in the freezer until you need to add it to the reaction and then put it back in the freezer right away. Strict discipline with enzyme storage and use increases the life of the enzyme, sometimes years after the manufacturer’s stated expiration date. 

The buffer used for the restriction digestion reaction is frozen and it is important that this is defrosted completely and mixed before use. If not, the ratio of components in the buffer that goes into your reaction will be wrong and the ratio of the components in the tube of buffer stock gets worse as more of the tube is used. Over time, with repeated improper defrosting of the restriction enzyme buffer, it is possible for the laboratory to end up with buffer that is the wrong composition, which means the restriction enzyme does not work and the digestions for the entire research group fail. This is more often due to poor care with the reaction buffer than expiration of the activity of the restriction enzyme itself. 

## Set up a restriction digestion with the optimal reaction conditions

Most restriction digestions are straightforward, but there are a few things to keep in mind when designing an experiment. Some variants, if forgotten, can result in a failed digest. For example, check if additives like bovine serum albumin (BSA) are needed for the enzyme or enzymes being used. This information will be available from the supplier of the restriction enzymes. Also, check the digest temperature. Most commercially available restriction enzymes work at $3 7 ^ { \circ } \mathrm { C } ,$ so this tends to be the assumption for a restriction digestion temperature. However, some enzymes, such as ApaI and SmaI, work best at $2 5 \ ^ { \circ } \mathrm { C } ,$ BsmI at $6 5 \ { } ^ { \circ } \mathrm { C } ,$ and TspMI at $7 5 ^ { \circ } \mathrm { C } .$ . The temperature of the restriction enzyme reaction is dependent on the temperature that is optimal for the bacterial species from which the enzyme was isolated. It is therefore important that the assumption is not made that this is $3 7 ^ { \circ } \mathrm { C }$ . 

If there is no digestion of the DNA, the first thing to do is to check that the DNA sequence has the expected restriction enzyme digest site using one of several online tools. Next, check the laboratory techniques. Check that the correct buffer was used for the restriction enzyme. If more than one enzyme is being used at the 

<table><tr><td>Volume</td><td>Reagent</td></tr><tr><td>6.9 μL</td><td><eq>dH_{2}O</eq></td></tr><tr><td>1.0 μL</td><td>DNA (1 μg/μL)</td></tr><tr><td>1.0 μL</td><td>10x restriction enzyme buffer</td></tr><tr><td>1.0 μL</td><td>BSA</td></tr><tr><td>0.1 μL</td><td>Restriction enzyme (10 U/μL)</td></tr><tr><td>Total 10.0 μL reaction</td><td></td></tr></table>

## Text Box 18.4

Generally, 1 unit of restriction endonuclease cuts 1 μg DNA in a 50 μL reaction in 1 hour. Therefore, set up a reaction with 1 μg DNA, 0.1–0.2 μL restriction enzyme (10 U/μL), 1 μL 10× buffer, 1 μL 10× BSA (where needed), and up to 10 μL volume with d $\mathsf { I } _ { 2 } 0 .$ . 

Figure 18.5 Restriction digestion reaction set-up. To set up a typical restriction digestion reaction, three things are needed: a restriction enzyme; the buffer for the restriction enzyme; and the DNA for the restriction enzyme to cut. Some enzymes require bovine serum albumin (BSA). The reaction needs to be in the proper final volume, made up with distilled water $( \mathsf { d H } _ { 2 } 0 )$ . Start with the largest volume, pipette smaller volumes into it, and add the enzyme last, as shown here in this table. 

same time, check that the best buffer has been used for the double digest. That buffer might not be the best buffer for either restriction enzyme being used on its own, but will be one that allows both to function. Methylation-sensitive enzymes will either only cut or not cut depending on the methylation state of the DNA, therefore the lack of digestion could be due to the methylation state of your DNA. Check the specifics of the enzyme that is being used to see if methylation of the DNA, or lack of methylation, may alter the activity of the restriction enzyme. 

To digest the DNA, combine DNA, restriction enzyme, buffer, BSA (if needed), and $\mathrm { { d H } _ { 2 } \mathrm { { O } } }$ (distilled water) to the desired volume. For molecular cloning, you will generally need 1 μg of DNA to have enough to work with for downstream manipulation. The reaction volume can be as small as 10 $\mu \mathrm { L } ;$ this can be a cost saving on the units of restriction enzyme used, provided enough is added to fully digest the amount of DNA in the sample in the time allowed for the reaction. These parameters are available from the manufacturer of the product (Text Box 18.4; Figure 18.5). 

## There are a few additional considerations to remember when doing restriction digestions

Add the restriction enzyme last. In fact, add all enzymes last to reactions. These are the active components, often stored at $- 2 0 ^ { \circ } \mathrm { C }$ . Remove them just before use and put them right back $\mathrm { a t } - 2 0 \ ^ { \circ } \mathrm { C } .$ . There is no need to defrost enzymes. Enzymes are supplied in solutions containing glycerol, so they do not freeze. This also means that they are denser than water, therefore it is important to mix enzymes such as restriction endonucleases and polymerases added to PCR (later in this chapter) into reactions. Do so gently, stirring with the pipette tip, so as not to shear the DNA and damage it. 

Incubate restriction digestions at the correct temperature, usually $3 7 ^ { \circ } \mathrm { C } ,$ for the correct time. The time for a digestion was usually 1 hour, however improvements in restriction digestion technology in 2006 reduced the time of the same reaction to 5 minutes for some restriction enzymes. Purchasing fast enzymes can be a time saving on protocols, enabling more research to be done in a day. Note that if the restriction enzyme being used has a warning about star activity, do not leave the reaction longer than needed to achieve digestion and do not use more enzyme than is needed to achieve digestion; leaving the reaction longer or using too much enzyme will make non-specific cuts. 

Some enzymes can be heat inactivated, which stops the enzyme cutting DNA. This can be useful if, for example, the DNA needs to be digested with two different enzymes but there is no compatible buffer, so the two digestions must happen sequentially rather than together. Whether a specific enzyme can be heat inactivated and at what temperature is indicated by the supplier. 

## Restriction digestions are used to change DNA sequences and join sequences together

When joining together DNA sequences, such as when generating recombinant DNA, look for enzymes with compatible cohesive ends, if there isn’t an enzyme that cuts both of the bits of DNA to be combined. For example, when wanting to join two pieces of DNA, it would be simple if both of them could be cut by the EcoRI restriction enzyme, since the sticky ends of the restriction fragments would hybridize together, facilitating ligation of the fragments. However, if there is no 

TAFigure 18.6 Compatible cohesive ends. The sequence shown on the top is cut by the restriction enzyme EcoRI, with the recognition sequence GAATTC. This cuts between the G and the A (staggered line), leaving a TTAA 5′ overhang, shown on the bottom strand. The sequence shown in the middle (in blue) is cut by the restriction enzyme MfeI, with the recognition sequence CAATTG, which is slightly different. This cuts between the C and the A (staggered line), also leaving a TTAA 5′ overhang, shown on the bottom strand. Because both enzymes leave TTAA 5′ overhangs, they have compatible cohesive ends, which means that the fragments generated can be joined to one another, as shown in the bottom sequence. Here, the left part comes from the top sequence and the right (in blue) from the middle. 

one enzyme that cuts both pieces of DNA, it may be possible to find two different enzymes that generate the same sticky ends. For example, EcoRI and MfeI both generate TTAA 5′ overhangs (Figure 18.6). Once cut, the overhanging ends of the compatible cohesive ends will match (see Figure 18.6). 

To prevent a plasmid from sticking back together spontaneously via hydrogen bonding between the bases after being cut with a single enzyme or enzymes with compatible ends, treat the plasmid with phosphatase. The phosphatase enzyme removes the terminal phosphate, preventing rejoining of the DNA by ligase enzymes (Figure 18.7). Alkaline phosphatase removes the $5 ^ { \prime }$ phosphate groups from the plasmid vector so it will not ligate back together. In order for ligation to happen, the ligase enzyme needs to use the insert, the piece of DNA to be cloned into the plasmid, which has the $5 ^ { \prime }$ phosphates. Alkaline phosphatase can be added to the restriction enzyme reaction when the plasmid vector is digested (see Figure 18.5); the water is reduced to allow for the added volume of the alkaline phosphatase enzyme. Before proceeding to the next stage in cloning, the DNA fragments need to be purified away from the alkaline phosphatase, restriction enzyme(s), and buffers. This can be achieved using a variety of commercially available reaction clean-up kits. 

If the cloning strategy means that there is a need to make blunt ends, but the available restriction digest recognition sites are sticky ends, it is possible to fill in the overhangs with the Klenow enzyme. Both $3 ^ { \prime }$ overhang removal and fill in of $5 ^ { \prime }$ overhangs are accomplished using the DNA polymerase I (Klenow) fragment (Text Box 18.5). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f41ef334f3f6bd551b722f35dc0aac9abe0ab32bedefd0880f30e3e39cc80800.jpg)



5′ – – T A A G TTAA TATG – – 3′



ATAC3′ – – A T T C T T A A – – 5′


## Text Box 18.5

To remove 3′ overhangs and fill in $5 ^ { \prime }$ overhangs, add 1 unit Klenow per μg DNA with restriction enzyme buffer or ligation buffer and 33 mM of each deoxyribonucleoside triphosphate (dNTP) for 15 minutes at $2 { 5 } ^ { \circ } { \mathsf { C } } .$ . To stop the reaction, add EDTA to a final 10 mM concentration and heat to $7 5 ~ ^ { \circ } \mathsf { C }$ for 20 minutes. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fbc67410a99d580c320453736ec78d43e9c7d215b4ad782d58c259aa12cd6253.jpg)



Figure 18.7 Alkaline phosphatase to prevent plasmid ligating back on itself. In a ligation of a vector and insert, the plasmid vector is most likely to ligate back together without the insert, if the ends of the vector are compatible (top panel). Alkaline phosphatase removes the $5 ^ { \prime }$ phosphate from DNA (P). This phosphate is required for ligation. Using alkaline phosphatase on the plasmid vector prevents the plasmid from ligating back together. The plasmid will only circularize with the insert (red), which still has phosphate ends (bottom panel).



Figure 18.8 Ligation closes the backbone of DNA. Breaks in the backbone of DNA are joined by the ligase enzyme. For example, when two pieces of DNA cut by restriction enzymes come together with sticky ends, hydrogen bonding between the bases aligns the strands and keeps them together, but the backbone of the DNA is discontinuous. Ligase is able to join the 5′-phosphate and the 3′-hydroxyl groups of adjacent nucleotides, completing the helix.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c83d33a42c2e6835227c8984e74da72d116d0f2b6ccf9ebe2a7035ecad8144ac.jpg)


## Text Box 18.6

Generally, a 10 μL ligation reaction is set up with 1 μL of 10× ligase buffer, 25 ng vector DNA, 75 ng insert DNA, enough dH2O to take the final volume to 10 μL, and finally 1 μL DNA ligase (see Figure 18.9). Gently mix by stirring the reaction with the pipette tip. To ligate cohesive ends, incubate the ligation reaction overnight at $1 6 ~ ^ { \circ } \mathsf { C }$ or at room temperature for 10 minutes. To ligate blunt ends, or single-base overhangs, incubate at $1 6 ~ ^ { \circ } \mathsf { C }$ overnight or at room temperature for 2 hours. Alternatively, a thermocycler can be set to alternate between 30 seconds at $1 0 ~ ^ { \circ } \mathsf { C }$ and 30 seconds at $3 0 ~ ^ { \circ } \mathsf { C } .$ . The ligase enzyme can be heat inactivated at $6 5 ~ ^ { \circ } \mathsf { C }$ for 10 minutes. 

<table><tr><td>Volume</td><td>Reagent</td></tr><tr><td>6 μL</td><td><eq>dH_{2}O</eq></td></tr><tr><td>1 μL</td><td>10x ligase buffer</td></tr><tr><td>1 μL</td><td>Vector DNA (25 ng/1 μL)</td></tr><tr><td>1 μL</td><td>Insert DNA (75 ng/1 μL)</td></tr><tr><td>1 μL</td><td>DNA ligase</td></tr><tr><td>Total 10.0 μL reaction</td><td></td></tr></table>

## Figure 18.9 Ligation reaction set-up.

To set up a typical ligation reaction, four things are needed: ligase; the buffer for the ligase; and the two pieces of DNA for the ligase to stick together. The reaction needs to be in the proper final volume, made up with distilled water (dH O). Start with the largest volume, pipette smaller volumes into it, and add the enzyme last, as shown here in this table. 

## Cut ends of DNA need to be ligated together to complete cloning

To generate recombinant plasmids commonly used when cloning genes or sequences that will be manipulated or transformed into bacteria, it is necessary to ligate the insert into the plasmid. Ligation covalently connects the DNA backbone of the restriction enzyme digested DNA fragments. T4 DNA ligase joins the 5′-phosphate and the 3′-hydroxyl groups of adjacent nucleotides (Figure 18.8). 

The ratio of insert to vector in a ligation reaction is important and an online calculator that takes account of the length of the fragments to be ligated is recommended. Otherwise, if the insert is smaller than the vector, a molar ratio of 3 insert to 1 vector is usually adequate. In total, approximately 100 ng of DNA should be in the ligation reaction (Figure 18.9). The ligation reaction should be set up on ice, adding the ligase enzyme last (Text Box 18.6). Chill the tube on ice and transform $1 { - } 5 \mu \mathrm { L }$ of the mixture directly into 50 μL of competent cells. 

The optimal temperature for T4 DNA ligase enzyme activity is ${ 2 5 } ^ { \circ } \mathrm { C } ,$ however this is not necessarily the best temperature for annealing the ends of the DNA fragments. Sticky end ligations have overhanging bases that can hydrogen bond and therefore efficiently ligate at room temperature, at about 22 °C in 3 hours or $4 { - } 8 \ ^ { \circ } \mathrm { C }$ overnight. Blunt end ligations are less efficient and generally are done at $1 5 { - } 2 0 ~ ^ { \circ } \mathrm { C }$ for 4–18 hours. If you are unsure how long to leave a ligation or at what temperature, it is possible to transform the ligation into competent bacterial cells after a few hours with 1 μL of the ligation reaction and then continue with the rest of the reaction overnight, if desired. There are suggestions that ligations done on melting ice can be very successful. On ice, the cold temperature permits the hybridization of the DNA fragments together. As the ice melts, the temperature rises to what is more optimal for the ligase, yet the temperature rises slowly so the hybridization is not lost. 

## Important considerations when performing ligations

Ligase buffer contains ATP and is stored frozen at $- 2 0 ~ ^ { \circ } \mathrm { C } .$ As with restriction endonuclease buffer, the ligase buffer must be thawed completely to preserve the correct ratios of the components of the buffer. It must not be used when partially thawed. The ATP in this buffer is an additional complication because it degrades with each freeze–thaw cycle. It is therefore recommended that the ligase buffer is completely defrosted when it arrives from the supplier and carefully aliquoted into smaller volumes of 5–10 μL. Since buffers are usually provided from suppliers in excess, a new aliquot tube can generally be used each time, preserving the activity of the ATP. The creation and use of aliquots also minimize the degradation of DTT (dithiothreitol), which is present in the ligation buffer. DTT can precipitate upon freezing. Vortex the thawed ligation buffer for 1–2 minutes to resuspend the DTT prior to use. 

TAIt is very easy to neglect doing controls for things like ligations, but when the ligation does not work, a control can help you to work out why. In this case, it is important to include alongside the ligation reaction a second tube that has only a vector, with no insert DNA. This will both confirm that the vector has completely digested, and that the phosphatase treatment has worked (when needed). If this control generates ligated circular DNA and any colonies on transformation, it means the vector was either not fully cut or the phosphatase did not fully work. 

PEG, polyethylene glycol, is sometimes used in ligation reactions as an agent that promotes “molecular crowding,” which means it brings the fragments together and so is particularly good for blunt end ligations. It is best, if this is done, to use PEG that is pure, and to adjust the molar ratio and check the resulting ligations because concatemerizations can occur. This is when two or more inserts ligate together, generating an unexpected construct. Some protocols that recommend PEG will use PEG 8000 at 10% final reaction concentration in a ligation of 3–6 hours. Other protocols recommend using fi nal concentrations of 5% PEG 4000 in blunt reactions. There are commercially available products that provide more rapid ligation than standard ligase and buffer. These tend to make use of optimized ligation buffers that include PEG. One manufacturer’s quick ligation reaction buffer differs from its standard buffer through the addition of a final concentration of 6% PEG 6000, for example. 

## Cloning of sequences is often important in bacterial genetics and genomics research

To understand the functions of bacterial sequences, often these are cloned into plasmids or other vectors for manipulation. Plasmids engineered for molecular cloning have a multiple cloning site (MCS) with many restriction enzyme recognition sites. This is sometimes also called the polylinker. To make use of the plasmid for cloning, it is cut at the MCS using a restriction enzyme that either also cuts either side of the sequence to be inserted or that has compatible cohesive ends with the enzyme that will be used to cut the insert. As mentioned earlier, the addition of alkaline phosphatase to the restriction digestion of the plasmid will prevent the ligation reaction from just joining the plasmid back together. Instead, ligation to produce a closed circular piece of DNA will need to incorporate the desired insert. The sequence to be inserted into the plasmid is cut with either the same restriction enzyme as used to cut the plasmid or an enzyme with compatible cohesive ends (Figure 18.10). 


Figure 18.10 Cloning an insert into a vector using restriction enzymes. The plasmid vector is cut with a restriction enzyme, here EcoRI. Alkaline phosphatase is added to this reaction to prevent the plasmid ligating back upon itself. The insert is cut with MfeI, which has compatible cohesive ends. The sticky ends of the insert and the vector join in the ligation reaction and the DNA backbone of the vector and insert are joined by ligase.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3071a2efa164878e9120bfc33016b06a4abe27995ea8098401813f6cc20bd1ab.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0a5ff5752a52d5c41e25eb0df1d3f94b6f97bfdc4d492e1779dbd3ee4a934c56.jpg)



Figure 18.11 Directional cloning of an insert into a vector using restriction enzymes. The plasmid vector is cut with two restriction enzymes, here EcoRI and BamHI. Alkaline phosphatase is added to this reaction to prevent the plasmid ligating back upon itself. The insert is also cut with EcoRI and BamHI, which means that the sticky ends of the insert and the vector join in only one orientation. During the ligation reaction, the DNA backbone of the vector and insert are joined by ligase.


With the preceding strategy, the insert can be cloned into the plasmid vector in either orientation, which may not matter depending on the experiment. However, sometimes directional cloning is desirable, where the insert needs to be in the plasmid in a specific orientation. In this case, the cloning is designed so that the plasmid is cut at the MCS with two different restriction enzymes that have incompatible cohesive ends (Figure 18.11). This means that the insert will only go into the plasmid in one orientation, and it prevents the plasmid from being able to be ligated back together because the two ends of the plasmid will not be compatible with one another. It is, however, still a good idea to include alkaline phosphatase here, because any incomplete digestions that only cut once will be prevented from upsetting the cloning by re-ligating. The tiny piece of DNA that is removed by the cutting with the two enzymes also needs to be purified away so it does not interfere in the ligation process. This can be done using a clean-up column or by resolving the restriction digestion band on an agarose gel and isolating the DNA band from the gel. Either would generally be done with a column-based kit. The sequence to be inserted is cut either with the same two restriction enzymes or with enzymes that have compatible cohesive ends to those used for the plasmid. 

Selection of the restriction enzymes to be used for the cloning can be aided by online tools. It may be necessary to use blunt cutting enzymes, but these are less efficient in cloning because the ends of the DNA will not make use of the hydrogen bonding between nucleotide bases to aid the ligation process. It is possible to engineer restriction digest sites onto the ends of the sequence to be inserted, if necessary. This can be helpful if none exists, to place restriction recognition sites where they are needed, or to make use of restriction endonucleases that are the best choice for the cloning. As in the PCR description that follows, primers can be designed with additional sequence information at the 5′ end, which then becomes part of the amplified DNA. 

## TA cloning exploits a feature of PCR to rapidly clone sequences

One of the most popular methods of cloning, TA cloning, uses a PCR-generated product and inserts it into a plasmid vector by virtue of T and A overhangs, thus its name. TA cloning is simpler and quicker than traditional cloning with restriction enzymes because it is not reliant on there being convenient restriction enzyme recognition sites in the sequence or engineering them by PCR. However, TA cloning is not directional, as can be achieved with careful design of a traditional cloning experiment. 

ATaq and other PCR enzymes lack $5 ^ { \prime }$ to $3 ^ { \prime }$ proofreading activity and as such add an additional adenosine triphosphate to the $3 ^ { \prime }$ end of the product (Figure 18.12). Because of the $3 ^ { \prime } \mathrm { A }$ overhangs on PCR products, these pieces of DNA can be cloned into plasmids with complementary $3 ^ { \prime } \mathrm { T }$ overhangs (see Figure 18.12). The process can be optimized by designing the PCR product so that primers have $\mathbf { G } ^ { \prime } \mathbf { s }$ at their $5 ^ { \prime }$ ends; this increases the probability of addition of the A. Choice of polymerase for the PCR is also important; not all polymerases will add the $\mathbf { A ^ { \prime } s } ,$ , including most with proofreading activity, which tend to be preferred for making accurate PCR products with no introduced mistakes in the sequence. To ensure accuracy, it is possible to generate the amplicon with a proofreading polymerase and then to add some Taq polymerase to the end of a proofreading PCR just to have it add on the A’s or to purchase a special proofreader that adds on the final A to the product. 

The vector can be purchased in a TA cloning kit or created in the laboratory. To generate a TA cloning vector, the plasmid is linearized with a blunt cutting restriction enzyme and then $3 ^ { \prime }$ Ts are added by terminal transferase from ddTTP (dideoxythymidine triphosphate). This is the same kind of T used in Sanger sequencing, which when incorporated will not allow another base to be added to it. In this way, only one T is added to each $3 ^ { \prime }$ end of the cut plasmid (see Figure 18.12). 

## Some commercially available kits augment ligation and cloning with accessory proteins and exploitation of other systems

Fragments can be cloned into vectors without DNA ligase using TOPO TA cloning, where the process of TA cloning is enhanced by using a TA cloning vector with DNA topoisomerase I attached (Figure 18.13). Topoisomerase acts in replication to cleave and rejoin supercoiled DNA. TOPO vectors have topoisomerase covalently bound to the cut ends of the plasmid. During cloning, the PCR product end associates with the vector end and topoisomerase covalently links their backbones together. Some TOPO vectors also clone in PCR products made with proofreading enzymes, which lack the additional A required for TA cloning. These blunt TOPO cloning reactions are made more efficient by the topoisomerase bound to the vector than would be a traditional blunt ligation. 

There are other cloning methods that rely on DNA pairing and homologous recombination, needing compatible regions between vectors and DNA inserts. For example, ligation independent cloning (LIC) uses long overlaps between insert and vector to stabilize the hybridization of base pairs compared to traditional restriction enzyme cloning where this would be generally no more than 4 bp. Overhangs of 10–12 bp are made by T4 DNA polymerase and specifically designed primer sequences. The insert and vectors annealed together contain single-stranded nicks that are repaired once the plasmids are transformed into the Escherichia coli where they are replicated. 

Gateway cloning is a proprietary system of recombination-based cloning owned by Invitrogen and designed to enable researchers to easily move a cloned piece of DNA between different plasmids. Each move retains the reading frame of the insert sequence by use of a set of recombination sequences, the Gateway att sites, and system-specific cloning enzymes. To use the system, the insert first goes into the Gateway entry clone by adding Gateway attB1 $\bar { 5 ^ { \prime } }$ and Gateway $a t t B 2 3 ^ { \prime }$ via engineered PCR primers. The amplicon with attB1 and attB2 ends is recombined into the Gateway donor vector by a proprietary enzyme mix, creating the Gateway entry clone. The cloned insert can then go into Gateway destination vectors for a variety of experiments. Gateway is based on site-specific recombination of λ bacteriophage, which enables the prophage genome to integrate into the $E .$ coli chromosome. The λ bacteriophage genome has a recombination site attP and E. coli has a corresponding recombination site attB. Two enzymes are involved in the prophage integration, integrase from λ bacteriophage and IHF from E. coli. Integration creates attL and attR sites flanking the prophage that enable reversible excision of the prophage from the E. coli chromosome by the Xis phage protein. Gateway and other similar recombination-based cloning techniques are based on bacteriophage integration and excision mechanisms, which are covered in more detail in Chapter 21. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4ab2ed7dd4504051ff4baf74ef4a03af02a8553734341e815d71ef6937b3f0d7.jpg)



Figure 18.12 TA cloning. PCR products have 3′ A overhangs (top), therefore it is possible to clone them into plasmids that have 3′ T overhangs (middle). The A ends on the PCR product hydrogen bond to the T ends on the plasmid, circularizing the plasmid with the PCR product as an insert (bottom), resulting in a TA cloned PCR product in the plasmid vector.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/356bba22f70bf39b68f74726621631f5acfd86f6311fa8b0257e25b060176539.jpg)



Figure 18.13 TOPO TA cloning. TA cloning (see Figure 18.12) through the use of a TOPO TA cloning vector, a plasmid that has $3 ^ { \prime } 1$ overhangs like a TA cloning vector and also has DNA topoisomerase I attached to these ends. When a PCR product with 3′ A ends hybridizes with the plasmid, the topoisomerase joins the DNA backbones, making TOPO TA cloning more efficien t than TA cloning.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/be7a73e50834e7fbf823b4fac491e17e4744c5869ee8ce0c6847a9ee58bfbf73.jpg)



Figure 18.14 Circular polymerase extension cloning, CPEC. In this cloning process, polymerase is used to complete the synthesis of the second strand of DNA around a single strand of plasmid and a single strand of insert, thus joining them together. A denatured single-stranded insert with overlapping similarity to a denatured single-stranded plasmid vector hybridizes (left). The overlapping regions are used by polymerase to prime extension and generate the complementary strand (right).


CPEC, circular polymerase extension cloning, uses polymerase to extend overlapping insert and vector sequences to make complete circular plasmids. The overlaps hybridize and act as primers for polymerase extension around the circular plasmid (Figure 18.14). As with LIC, the plasmids are transformed into the bacterial cells where the nicks are resolved during replication. It is possible with this process to include more than one overlapping insert in the design for CPEC in a design process similar to overlapping PCR, discussed later in this chapter. 

## Text Box 18.7

Make LB-amp plates. Make 100 mL LB agar. Make a 100 mg/mL ampicillin stock solution by dissolving 1 g sodium ampicillin in 10 mL dH O. Filter sterilize the solution using a syringe-top 0.22 μm filter into a sterile 15 mL tube or other suitable vessel. This ampicillin antibiotic stock can be stored at 4 °C for up to 3 weeks or at −20 °C for up to 6  months; check the storage times and temperatures for other antibiotic stocks. Antibiotics should not be autoclaved, therefore they are added into the media (agar or broth) after autoclaving. To the 100 mL autoclaved LB agar, cooled to less than 65 °C, add 100  μL of the 100  mg/mL ampicillin stock solution. Pour the agar plates, which will have a final concentration of 100 μg/mL ampicillin. 

## Antibiotic resistance markers on plasmids help us find the transformed bacterial colonies

Antibiotic selection (see Chapter 10) is made possible due to the addition of an antibiotic resistance cassette, or two, to plasmid vectors used for molecular cloning. In this way, bacteria with the plasmid can be selected for by using the antibiotic in the media. To use antibiotic selection, use a plasmid vector encoding an antibiotic resistance cassette and ensure the bacterial strain that the vector is being transformed into is susceptible to killing by the antibiotic. For example, if using cloning vector pUC18 (or pUC19, which is identical apart from having an MCS in the reverse orientation), selection is with ampicillin. The plasmid encodes a β-lactamase that breaks down ampicillin. For the popular pCR TOPO TA cloning vector, selection is also ampicillin resistance, but in addition a resistance cassette for kanamycin provides flexibility for selection choice. 

Test that the E. coli does not grow on LB agar plates with a final concentration of 100 μg/mL ampicillin (Text Box 18.7). Use these LB-amp plates to test the untransformed E. coli. So long as there is no growth, this E. coli and plasmid vector combination can be used for cloning. Following transformation, only those E. coli cells that have taken up the plasmid will be able to express the ampicillin resistance phenotype. A similar strategy can be used for other plasmid cloning vectors with other antibiotic resistance markers. 

## Blue-white screening helps us find the colonies transformed with plasmids with the insert

Blue-white screening is used to identify the bacterial colonies that have been transformed with plasmids that have inserts (recombinants) versus those that do not. Selection only reveals whether the plasmid has entered the cells, not if the plasmid vector has the insert ligated into it. For this, screening is one solution. 

TABlue-white screening is a common strategy using specifically engineered vectors where the MCS is within the gene fragment lacZα. The full lacZ gene encodes β-galactosidase, which can convert X-gal (5-bromo-4-chloro-3-indolyl-β-dgalactopyranoside) into 5-bromo-4-chloro-3-hydroxyindole that dimerizes and oxidizes to the blue pigment 5,5′-dibromo-4,4′-dichloro-indigo. When the engineered vector with the lacZα, encoding just the N-terminal part of lacZ, is used with an E. coli lacZ mutant with a deletion in the lacZ N-terminus, together they can make a functional LacZ able to convert X-gal and make colonies appear blue, in a process called α-complementation. Without the vector, colonies appear white. By combining antibiotic selection, so the E. coli without the vector will die, with blue-white screening it is possible to see which cells have plasmids with and without inserts (Figure 18.15). 

LB agar plates are made with both 100 μg/mL ampicillin and 20 μg/mL X-gal, plus 0.1 mM IPTG (isopropyl β-d-1-thiogalactopyranoside) to induce expression of the lac operon (Text Box 18.8). All colonies growing on these plates will have taken up the plasmids and be expressing the antibiotic resistance. Some colonies will be blue; these will be using the intact lacZα from the plasmid vector to rescue the E. coli mutant by α-complementation, creating a functional β-galactosidase to break down the X-gal. The blue color means there is no insert in the vector. Insertion into the MCS disrupts the lacZα and prevents the α-complementation resulting in white colonies, which is why it is important to have the antibiotic selection as well. Pick the white colonies from the LB-ampicillin-X-gal-IPTG agar plate into LB-ampicillin broth and grow overnight for plasmid extraction, generally using a column-based extraction kit, followed by restriction digestion 

## Text Box 18.8

X-gal is made in a stock at 20 mg/mL by dissolving 0.2 g X-gal in dimethylformamide (DMF) or dimethylsulfoxide (DMSO) and stored at −20 °C in the dark (generally with the tube wrapped in foil). IPTG is made in a stock of 0.1  mM by dissolving 0.238 g IPTG in 10 mL dH2O and filter sterilizing into a sterile tube. Aliquots of IPTG stock should be stored at −20 °C for up to a year. LB-amp-X-gal-IPTG agar plates are made, for example, by adding to 100 mL of autoclaved LB agar cooled to less than 65 °C 100 μL of ampicillin stock (100 mg/mL), 200 μL of X-gal stock (20 mg/mL), and 100 μL IPTG stock (0.1 mM). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c48e03e5834ff1159d53ce29092bc0beab9814f941c669469e38b8551d8ddddd.jpg)



Figure 18.15 Selection and screening for plasmid uptake. After transformation of E. coli, the cells can be plated onto different media to reveal the results. Plating onto LB agar has no selection and no screening, so all of the bacterial cells will grow, those that have taken up the plasmid and those that have not. Adding ampicillin to the media, where the plasmid carries an ampicillin resistance marker, will select for those E. coli cells that have been transformed by the plasmid. However, this does not reveal which of those plasmids contain a cloned insert. Screening, through addition of X-gal and IPTG, shows through blue-white coloring of the ampicillin-resistant colonies that grow which have the insert (white) and which do not (blue). White colonies on LB-X-gal-IPTG-amp plates are picked for growth and plasmid preparation, having been selected as bacteria containing transformed plasmid with the cloned insert.


## Text Box 18.9

To add X-gal and IPTG on top of already poured LB-amp plates, spread 40 μL IPTG stock and 40 μL X-gal stock on top of the agar with a sterile spreader. Let the liquids dry about 30 minutes and then use the plate for the transformation. 

and resolution of the fragments on an agarose gel (or E-gel or agarose capillary chip) to confirm insert presence and size. 

If LB-amp plates are already poured, it is possible to put the X-gal and IPTG on top of the agar (Text Box 18.9). The resolution of the blue-white coloring may not be as uniform as adding the IPTG and X-gal directly to the media, but this method will suffice if it is suddenly discovered that there are no plates, and the transformation needs to happen. 

In some rare cases, very small inserts of <100–200 bp seem to be tolerated enough to generate partial α-complementation activity, therefore resulting in pale blue colonies. If the insert is small and no white colonies are apparent, consider whether the insert desired might reside in a pale blue colony. Colony PCR screening can also be used, although this is much more time-consuming than blue-white screening. See the section on PCR later in this chapter for more details. 

## Laboratory techniques of molecular biology are able to copy segments of DNA in processes similar to replication

A bacterial species that tolerates high temperatures, Thermus aquaticus, was isolated and its Taq polymerase enzyme was later used in PCR, the polymerase chain reaction, which is an in vitro process similar to replication, but for a small section of DNA rather than a whole chromosome. Because the native temperature for T. aquaticus is high, the DNA polymerase enzyme from within this bacterial species is active at higher temperatures, making it possible to develop PCR amplifi cation. 

PCR (see Chapter 10) has become a standard for amplification of DNA fragments, detection of DNA sequences, modifications of genes, for molecular cloning, and as a staple of molecular biology. The protocols for standard end-point PCR are generally similar, with some temperature variations for primer annealing and polymerase activity. The timing and number of PCR cycles are also variable, generally depending on constraints of time and equipment. Taq polymerase extends at ${ 7 2 ~ ^ { \circ } \mathrm { C } }$ while proofreading enzymes may extend at $6 8 \ ^ { \circ } \mathrm { C } .$ . Primers are generally designed to anneal between $5 0 ~ ^ { \circ } \mathrm { C }$ and $6 5 ~ ^ { \circ } \mathrm { C } .$ . Denaturation of DNA happens at high temperature, so PCR needs a high temperature stage, although this range may be lower in some protocols to reduce damage to the polymerase. Therefore, cycles of temperature from $9 2 ^ { \circ } \mathrm { C }$ to $9 8 ^ { \circ } \mathrm { C }$ to denature the DNA double helix, then $5 0 – 6 5 \ ^ { \circ } \mathrm { C }$ to anneal the primers, then $6 8 – 7 2 \ ^ { \circ } \mathrm { C }$ for polymerase to extend from the primers for 20–35 cycles are typical (Figure 18.16). The speed of the reaction in vivo is far faster than the cycling of the thermocycler equipment can change temperatures within the tube in vitro, therefore although pauses at each temperature of 30 seconds to a minute are usual, 10 seconds is probably sufficient, certainly for denaturation and annealing. Extension may require longer times, depending on the length of the PCR product and the polymerase used. Indeed, some researchers set up a two-temperature cycle, rather than three, with the temperature alternating between $9 2 ~ ^ { \circ } \mathrm { C } \mathrm { - } 9 8 ~ ^ { \circ } \mathrm { C }$ and a lower temperature that permits annealing of primers and then extension. Polymerase can begin to act at temperatures lower than its optimum and will continue to extend as the PCR thermocycler ramps up to the denaturation temperature. In a two-step PCR with a fast thermocycler, it may be necessary to slow down the ramping speed, the speed at which the temperature changes, to allow the polymerase time to extend and generate the product. For a three- or two-step PCR, a final extension in the last cycle is recommended to finish incomplete extensions. 

PCR primers must be designed well, avoiding potential for annealing in the wrong place, as discussed in Chapter 16. In the laboratory, failures in obtaining PCR products or where multiple products are amplified are generally resolved in one of two ways: adjusting annealing temperature or adjusting MgCl2 concentration. Although primer annealing temperature calculations are fairly accurate, adjustments of even $0 . 5 ~ ^ { \circ } \mathrm { C }$ can improve results. Specificity in PCR can be improved by adjusting the $\mathbf { M g C l } _ { 2 }$ concentration of the reaction buffer. 

<table><tr><td>Temperature</td><td>Activity</td></tr><tr><td>92–98 °C</td><td>Denature DNA double helix</td></tr><tr><td>50–65 °C</td><td>Anneal PCR primers to DNA</td></tr><tr><td>68–72 °C</td><td>Extend primers by polymerase</td></tr></table>


Figure 18.16 Typical PCR cycling parameters. There are typically three PCR cycling temperatures, which each have a range of temperatures. The denaturation and extension temperatures are dependent upon the polymerase being used for PCR and both its tolerance for high temperature and its optimal extension temperature. The oligonucleotide primers being used inform the annealing temperature.


TADepending on the properties of the water in your local area, even when using ultra-purified water of 18 MΩ, it may be necessary to include additional MgCl2 to PCR to generate amplicons as standard or under certain conditions. If primers are designed well but amplification is problematic, setting up a matrix of reactions across different annealing temperatures and $\mathrm { M g C l _ { 2 } }$ concentrations may reveal an optimal condition (Figure 18.17). Often the reaction buffer included with the PCR polymerase from the manufacturer contains MgCl2, making it possible only to increase concentration, however some polymerases are supplied with buffers without MgCl2, making a wider range of adjustments possible. 

## PCR can be altered slightly to address experimental needs

Standard end-point PCR uses extracted DNA (see Figure 18.16). It is also possible to set up a rough PCR where the DNA is not extracted from the cells; instead, whole bacterial cells are used in the reaction. This can be done either by boiling a single bacterial colony in 10–50 μL TE or $\mathrm { \ d H _ { 2 } O }$ (with a lid lock for safety) and using 1–2 μL in PCR (Figure 18.18) or by putting a colony directly into the PCR tube and setting the initial denaturation step for 5–10 minutes (see Figure 18.18). The burst bacterial cells release their DNA to be the template for the PCR. Colony PCR is useful for screening bacterial colonies following transformation to determine if the screened colonies have the desired genetic changes. 

There are times when long PCR products may be needed, including amplifying across repetitive elements to determine the copy number of repeats and amplifying across regions to resolve genome assemblies. In general, standard PCR polymerases will amplify fragments of only a few kilobases. For longer products, there are special enzymes with better processivity, meaning that the polymerase stays on the DNA for longer, extending the DNA longer than Taq or other standard PCR polymerases. With long-range PCR there is a need to increase the extension time to at least 1 minute per kilobase. This technique is good for amplicons of 5 kb and generally works for those of 15 kb. In some cases, companies claim their long PCR enzymes can get products of up to 30 kb. 

PCR can be used to engineer sequences through design of the sequences of the primers. Most engineering with PCR is to simply add sequences to the end of the PCR amplicons by adding them to the $5 ^ { \prime }$ ends of the primers, such as the addition of restriction enzyme recognition sequences to facilitate cloning (Figure 18.19). Changes to the $5 ^ { \prime }$ ends of primers do not interfere with the annealing of the primers, therefore it is straightforward to make these sorts of changes. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/98b6507a5fa5f9e1cfec2e97ff6d99e637f2385d09852e36e55eaf9e20c415a6.jpg)



Figure 18.17 Gradient PCR. To address issues with obtaining optimal PCR products, one troubleshooting technique is to do a gradient PCR, where a gradient of temperatures, gradient of MgCl2 concentrations, or both are conducted to find the ideal conditions. Shown here, across a PCR machine heat block, a temperature range of $5 3 . 5 ~ ^ { \circ } \mathsf { C }$ to $5 6 . 5 ~ ^ { \circ } \mathsf { C }$ is programmed for the annealing temperature. In addition, reactions will be set up where the reaction buffer has a range of ${ \mathsf { M g C l } } _ { 2 }$ from 1.5 to 3.5 mM. Therefore, 35 PCR tubes will be run in total ranging from $5 3 . 5 ^ { \circ } \mathrm { C }$ in 1.5 mM MgCl2 to 56.5 °C in 3.5 mM MgCl2 and the combinations between.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/192be3f6176faca56e53894a13291314189c23ffb37a4de7561f3b039f3f669d.jpg)



Figure 18.18 Colony PCR. To obtain a PCR product directly from a bacterial colony, two approaches can be taken. A single colony can be picked and suspended in TE, which is boiled, and then 1–2 μL of the crude lysate is used in a normal PCR as the template DNA. Alternatively, a single colony can be picked into a PCR to serve as the template DNA. Here the initial denaturation step should be set for 5–10 minutes to break open the bacterial cells, releasing the DNA to make it available for the PCR.


## Desired PCR product

5′ 3′ 

Forward primer 

3′ 5′ 

Reverse primer 

C TAGGAAT T C5′– 3′ 

3′ GGAT C C T TGG–5′ 

Figure 18.19 Adding restriction enzyme digest sites to the ends of PCR products. 

Conveniently placed restriction digest recognition sites are not always easy to find; sometimes it is easier to engineer one. Once primers are designed to a desired PCR product, the recognition sequences for restriction enzymes can be added to the 5′ ends without interfering with the function of the PCR primers. Here the EcoRI site has been added to the forward primer (left, red) and BamHI to the reverse primer (right, red) to facilitate directional cloning of the PCR product (see Figure 18.11). Often some additional bases 5′ of the restriction digest site aid in efficienc y of cutting fragments such as PCR products (black); consult the manufacturer’s recommendations. 

## Site-directed mutagenesis systems help researchers make specific changes to DNA

In investigating bacterial genetics and genomics, it is often desirable to mutate sequences so that their functions can be assessed. Frequently this is accomplished when the sequence is cloned, and a PCR primer is designed with the change in the middle. The primer is used to amplify around the plasmid, creating a new sequence with the change (Figure 18.20). A single base in the plasmid can be changed by designing a primer that is identical to the sequence of the plasmid aside from the desired change, which is made in the middle of the primer. The primer will otherwise anneal well to the template and there will be amplicons produced that will be synthesized to contain the change in the primer. Likewise, primers can be designed that include either small insertions, where the primer has a few additional bases relative to the original sequence, or small deletions, where the primer has fewer bases in the middle than the original sequence. Amplification results in site-directed mutagenesis, driven by the engineered primer (see Figure 18.20). 

Using this purely PCR-based strategy, base changes are made in cloned sequences. The bases within the primer become an integral part of the plasmid following amplification and sequential changes can be made, if necessary. However, for larger insertions or deletions, modifications via restriction enzyme removal of sequence may be a better strategy. This type of mutagenesis may make use of existing restriction enzyme digest sites within the sequence, perhaps identified using one of the many online tools to locate recognition sequences. However, when none is present, they are not conveniently located, or do not work compatibly with other enzymes in the mutagenesis plan, it may be that PCR is needed to aid in the addition of restriction digest sites again. It may be possible to 

Figure 18.20 Site-directed 

mutagenesis. It is possible to make small changes to a cloned insert in a plasmid vector. To accomplish this, a primer is designed that is homologous to the insert apart from the small change to be made, a base change (left), small insertion (middle), or small deletion (right). This primer is used to amplify around the plasmid, therefore introducing the new sequence into the plasmid and insert (bottom row). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8c258897c783c20ae6729ca497fdd722ba57cc01b436b981db580d187b6e3237.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c4bbea11cfd2a3747d3146217e1e812dc21d9ad8cbf54aa987e3360e2509cdfd.jpg)



AFigure 18.21 Overlapping PCR. To use overlapping PCR to delete the B gene from this operon, primers are designed to the A gene so that the reverse primer has some of the beginning of the C gene (orange) at its 5′ end and primers are designed to the C gene so that the forward primer has some of the end of the A gene (green) at its 5′ end (top). PCR with these primers generates two products: amplification of the A gene with a bit of the beginning of the C gene sequence joined to it and amplification of the C gene with a bit of the end of the A gene sequence joined to it. These products, plus the A gene forward primer and C gene reverse primer, are used in a final round of PCR to make one product that has a full A gene joined to a full C gene. The B gene sequence has been deleted out of the sequence by overlapping PCR.


generate an ideally placed MfeI digest site through change of a single base within the insert, for example. Site-directed mutagenesis can therefore contribute to larger insertions or deletions. 

Alternatively, overlapping PCR can be used to generate a modified sequence for cloning. This technique makes it possible to change sequences within a PCR product as it is being generated by designing overlapping PCR primers, so that two (or more) reactions are run and then assembled into one product with the change (Figure 18.21). Overlapping PCR connects sequences together; therefore, it can be used to generate deletions where distant sequences are brought together and the sequences between them are removed, insertions where new sequences are placed within existing sequences, or to bring together novel sequences. Two primers are designed as normal; these are the outer two primers and are used twice in the process. Two primers are designed with the overlapping sequences; these are only used in the first round of PCR. The 3′ end of the overlapping primers anneals to the sequence to be amplified and works with the normal primer that pairs with it in the first round of amplification (see Figure 18.21). The $5 ^ { \prime }$ end of the overlapping primers does not anneal; however, these sequences match the sequence that will be joined later in the process. Because this $5 ^ { \prime }$ end is part of the primer, it too is amplified in the first round of PCR and becomes part of the PCR product and thus the template for the subsequent cycles of PCR. The amplicons generated in this first round of overlapping PCR therefore have the original sequences fused to a bit of the sequence they will join to at the end of the process (see Figure 18.21). It is possible to design primers so that there are several overlapping PCR products, rather than just two. Following the generation of these products, a second round of PCR uses the products as templates with the outer primers only, to generate the final product. 

## Loop-mediated isothermal amplification (LAMP) quickly amplifi es DNA at a single temperature

Since the advent of PCR there have been other methods of DNA amplification developed, some of which do not require complex thermocycling, making them good options for fieldwork, for example. Loop-mediated isothermal amplifi cation (LAMP), unlike PCR, does not require expensive specialist equipment; it can be performed at one temperature in a simple water bath, heat block, or incubator. Amplification by LAMP is more rapid than PCR, often being complete in less than 15 minutes. LAMP is also more tolerant to inhibitors than PCR, which can be affected by proteins and impurities in the sample. LAMP primers are designed differently, but as for PCR there are online design programs to aid in optimal design. 

The target sequence has six unique sequences targeted by the LAMP primers, three forward (F1, F2, and F3) and three backward (B1, B2, and B3), plus their complementary sequences on the opposite strand (F1c, F2c, F3c, B1c, B2c, and B3c; Figure 18.22a). There are four primers designed to these sequences: the forward outer primer containing sequence F3 (FOP); the forward inner primer containing sequence F2, but with F1c at its $5 ^ { \prime }$ end (FIP); the backward outer primer containing sequence B3 (BOP); and the backward inner primer containing sequence B2, with B1c at its $5 ^ { \prime }$ end (BIP; Figure 18.22b). At the start of LAMP, the FIP invades the strands of the DNA, displacing one strand to hybridize its F2 sequence to F2c (Figure 18.22c). Extension of this primer generates a strand that has the sequence F1c–F2–F1 at the $5 ^ { \prime }$ end (Figure 18.22d). This strand is displaced by the FOP with primer sequence F3 (Figure 18.22e). While the FOP extends, the displaced strand forms a self-hybridizing loop with the complementary F1c and F1 sequences at its $5 ^ { \prime }$ end (Figure 18.22f). This strand is targeted by the BIP, with its B2 sequence annealing to the B2c sequence toward the $3 ^ { \prime }$ end of the strand (Figure 18.22g). Extension from the BIP results in a strand that has F1–F2–F1c at the $3 ^ { \prime }$ end and B1–B2–B1c at the $5 ^ { \prime }$ end (Figure 18.22h). Displacement of this strand by the BOP (Figure 18.22i) results in a strand that has self-hybridizing loops at both ends, where the F1 and F1c hybridize and the B1 and B1c hybridize (Figure 18.22j). LAMP rapidly generates such structures, which are able to selfprime further amplification from their $3 ^ { \prime }$ end or can be further amplified by FIP or BIP primers, depending on their F2/F2c and B2/B2c sequences. Due to internal self-priming, LAMP generates complex concatemers, where the original dumbbell-like structure (see Figure 18.22j) becomes joined to others. 

Some LAMP kits are designed with a visual detection system that produces a distinct color change or fluorescence in the reaction tube upon production of LAMP amplification products, making detection very rapid. LAMP can therefore eliminate the need for a thermocycler, electrophoresis equipment, and agarose gel visualization system, which would be needed for standard PCR detection. LAMP is primarily useful for diagnostics and detection. Due to the way in which primers have to be designed, with internal complementation, and the generation of concatemerized sequences, LAMP is not suitable for generation of products for cloning and genetic manipulations. 

## Following in vitro manipulation of DNA, it has to be transformed into a bacterial cell

Following ligation of a plasmid, the DNA is transformed into a bacterial cell, which involves getting DNA into somewhere it does not normally go. The workhorse of molecular biology is E. coli, but this bacterial species is not naturally competent for transformation. E. coli cells have to be manipulated in the laboratory to be transformed. Before transformation, it is important to remember that ligase itself inhibits transformation. Ligase can be heat inactivated at $6 5 ~ ^ { \circ } \mathrm { C }$ for at least 10 minutes. Alternatively, clean up the ligated DNA on a column; this can be especially beneficial for electroporation as it will also reduce salt in the sample, which can inhibit electroporation. It has been noted that heat inactivation of PEG can inhibit transformation, therefore if PEG has been added to increase ligation efficiency or if a fast ligation kit with PEG was used, clean-up is recommended, rather than heat inactivation. 

The first method published for E. coli to take up foreign DNA uses calcium chloride. It is simple and easy to use. E. coli are grown until they are at the early to intermediate log phase of growth as determined by the growth curve (Figure 18.23). Generally, bacteria are grown in liquid media over a period of time, with the increase in cells monitored by optical density (OD) using a spectrophotometer blanked on sterile media that has not been inoculated with bacteria. Graphing the OD readings every hour or half hour should reveal when the bacterial cells have left the lag phase of growth and entered the log phase of exponential growth, ideal 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/972f4fb6267c12e0035457a31e8d227d745ecd4ff2dd95f485500577a468da90.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/09cb4ad1b61255a4d3b5c765bf2fc5674a3a204c70f5d80d492bee86e8744095.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b71c3b3e5d25c600f0f8e419483855ae36b0c2886f7077ac9ffa30fe963bb790.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3299cc96fd6f811d9e8cc0cd27cd82804e1fba1db60a135d7eb956d1e55a44d6.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ee194324f25cae432fa2c945a00956a02fcc5c5332de8eadfb0ebd59c66f3051.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a5630952df55bc1b5f748095736d780c4c71b2624cb05a4597c8a4ee72b353af.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/370e27ab6cf1a169f04e15c2e1a62b7cac3b413753d7ee3efd3585bd8c416059.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/81b0ff8d9ec09bd9a528c5f459b2db5d42017fbd07e23345a065327031344a20.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/7687cc057c61576240e0d3e8800e243321b234afbd4b04f78b01d242a5332354.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/09cea274adcf2eb0538e36c5d476614b3834f367b2f1ba8654e70894bbc100bc.jpg)



Figure 18.22 LAMP, loop-mediated isothermal amplification. Six



unique sequences and the reverse complementary sequences are identified in the target sequence (a). The forward outer primer (FOP), forward inner primer (FIP), backward outer primer (BOP), and backward inner primer (BIP) are designed against these six sequences (b). The FIP anneals, displacing one strand (c), and extends, making a strand with the F1c–F2–F1 sequence at one end (d). The FOP anneals, displacing this strand (e). As the FOP extends, the displaced strand generates a self-hybridizing loop, characteristic of LAMP (f ). BIP anneals to the other end of the strand with the self-hybridizing loop (g) and extends, generating a strand with F1–F2–F1c at one end and B1–B2–B1c at the other end (h). The BOP displaces this strand (i) and it generates self-hybridizing loops at both ends (j). Such structures can prime their own amplification at their 3′ end and can be amplified by annealing with FIP or BIP.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/53c426b253c1312d49708a10ac3a51c6766c4ebc348a1028e78d5755b66c11bb.jpg)



Figure 18.23 E. coli growth curve. The optical density (OD) of the bacterial cells in liquid culture is monitored over time to determine the number of bacteria in the culture. The OD will increase as the bacteria grow and divide. At the start of the culture, this process can be slow; this is the lag phase. As the population adapts to the culture and builds, its multiplication becomes more apparent in the log phase; this is exponential growth and is ideal for making competent cells for transformations. As the nutrients and resources within the culture become scarce, growth slows, and the OD stabilizes in the stationary phase.


## Text Box 18.10

Grow E. coli in LB broth to OD600 of 0.4 and put on ice for 20 minutes. Chill the needed tubes and reagents on ice as well, including 0.1 M CaCl2 (11.1 g anhydrous calcium chloride in 100 mL dH2O, filter sterilized by 0.22 μm filter for 1 M ${ \mathsf { C a C l } } _ { 2 } )$ and 0.1 M $C a C l _ { 2 } + 1 5 \%$ sterile glycerol. Centrifuge the culture at 2,500 g for 10 minutes at $4 \ ^ { \circ } \mathsf C .$ Remove the supernatant and suspend the pellet in 20 mL of ice-cold 0.1 M ${ \mathsf { C a C l } } _ { 2 } .$ . Leave the suspension of cells in the 0.1 M CaCl on ice for 30 minutes. Centrifuge the cells at 2,500 g for 10 minutes at $4 ^ { \circ } \mathsf C .$ . Suspend the pellet in 5 mL of 0.1 M CaCl2 + 15% sterile glycerol. Use immediately or store at $= 7 0 ^ { \circ } C / - 8 0 ^ { \circ } C$ . 

for generation of cells for transformation. As a guideline, an $\mathrm { O D } _ { 6 0 0 }$ of 0.6–0.8 is typical of exponential phase E. coli. The E. coli are then put on ice in a calcium chloride buffer. Details of this protocol are discussed in the next section. Cells from the stationary phase should not be used. Although these cells are not dead, nor are they “stationary” or otherwise not growing or dividing; many of the cells in this population are different phenotypically than those in the log phase. They will be experiencing stress in the culture deprived of nutrients and resources, which can adversely influence their ability to take up DNA in transformation. 

It is important with chemically competent E. coli cells that the bacteria are kept on ice or chilled at all times. Refrigerated centrifuges should be used, set to $4 \ { } ^ { \circ } \mathrm { C } ,$ , and cold buffers should be used, either kept in the refrigerator or on ice. Even plastics such as tips and microfuge tubes are put in refrigerators or on ice to chill them for the protocol. Any cells not used immediately can be stored at $- 7 0 \ { ^ \circ } \mathrm { C } \ \mathrm { t } 0 \ { - } 8 0 \ { ^ \circ } \mathrm { C }$ for 6 months to 1 year in 15%–50% glycerol. It is also important to include controls in the transformation. One of these should be to include an “uncut vector DNA control” to get the transformation efficiency of the cells per μg of DNA. Another control is a “no DNA control” to show no growth without transformation and no contamination of the cells. If there is growth on the selective media, then the cells are either contaminated or have the plasmid or a resistance to the selection antibiotic already. Each new batch of competent cells should also be transformed with a positive control plasmid to check the efficiency of transformation. 

It is best to give cells some time to express antibiotic resistance genes on the plasmid before plating the bacteria on media containing the antibiotic. However, when using ampicillin, it is possible to plate immediately if time is short because it takes time for the ampicillin concentration to accumulate in the cells. 

## Calcium chloride provides a quick method to obtain competent cells for immediate use

For the calcium chloride method, the bacteria are kept in a calcium chloride solution on ice to make the cells permissive to transformation (Figure 18.24; Text Box 18.10). Calcium chloride competent cells are fairly quick and inexpensive to make. They can be made and then used immediately for transformation. These cells can also be stored $\mathrm { a t - 7 0 ^ { \circ } C / - 8 0 ^ { \circ } C } ,$ , however, they are often best used the day they are made. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0f7174ec0e5efcb3392c6d42e9d9fc29ace0d5debb2fe99694b94223baf48926.jpg)



Figure 18.24 Calcium chloride generation of competent cells. A quick way to make competent cells for immediate use is to grow E. coli to mid-log phase and put the culture on ice for 20 minutes. Centrifuge to collect the cells, suspend the pellet in ice-cold 0.1 M ${ \mathsf { C a C l } } _ { 2 } ,$ , and leave on ice for 30 minutes. Centrifuge the cells again and suspend in 0.1 M ${ \mathsf { C a C l } } _ { 2 }$ and 15% sterile glycerol. Use immediately for transformations.


## TAChemically competent cells with Inoue buffer have the best reputation for good rates of transformation and reliability

The Inoue method is a reliably reproducible method of laboratory production of chemically competent E. coli cells, which starts by growing the bacteria at $1 8 ~ ^ { \circ } \mathrm { C }$ and then washing the cells in reducing volumes of Inoue buffer. Because the bacteria will grow more slowly, the cultures can be set up to grow overnight and the competent cells made early in the morning. To start, make the Inoue buffer (Text Box 18.11). In addition, make SOC (Text Box 18.12). 

For the cells, grow E. coli in 100 mL LB broth overnight at $1 8 ^ { \circ } \mathrm { C }$ to $\mathrm { O D } _ { 6 0 0 }$ of 0.55 (Figure 18.25). Alternatively, SOB media can be used; this is similar to SOC, but lacks the addition of glucose. Centrifuge the culture, split into two sterile 50 mL tubes at 2,500 g for 10 minutes at $4 ^ { \circ } \mathrm { C } ,$ and remove the supernatant completely, first by pouring off the liquid and then removing the residual with a small pipette tip. Suspend cells in 32 mL ice-cold Inoue buffer gently using a swirling motion or stirring with a pipette tip. Centrifuge the cells at 2,500 g for 10 minutes at $4 ^ { \circ } \mathrm { C }$ . Remove the supernatant completely and suspend in 8 mL Inoue buffer and add 600 μL cold DMSO. Mix well, yet gently. Keep the cells on ice for 10 minutes, then aliquot as 50 μL into pre-chilled 1.5 mL tubes. Snap freezing is recommended in liquid nitrogen or a dry ice and ethanol bath prior to long-term storage at $- 7 0 { } ^ { \circ } \mathrm { \bar { C } } / - 8 0 { } ^ { \circ } \mathrm { C } .$ . 

## Chemically competent cells can be made with TSS buffer

A similar technique to the Inoue method is one that uses a different buffer, TSS, transportation and storage solution. Some researchers prefer this method, while others favor Inoue. TSS does not require growth of the bacteria in different culture conditions, like Inoue, and there are fewer steps in the TSS method, however the efficiency of the cells obtained may be better with one method or the other. Therefore, it is worth trying a method and, if the cells are not as competent as you would like, perhaps trying another method of preparation of competent cells. To make TSS chemically competent cells, TSS buffer is needed (Text Box 18.13). 

Grow the E. coli in 100 mL LB broth to $\mathrm { O D } _ { 6 0 0 }$ of 0.4. Chill on ice the TSS and 50 1.5 mL microcentrifuge tubes. When the E. coli reaches the needed $\mathrm { O D } _ { 6 0 0 } ,$ , put the culture into two 50 mL sterile tubes and put these tubes on ice (Figure 18.26). This will enhance the chilling of the culture and enable balanced centrifugation of the culture. Centrifuge the E. coli culture tubes at 2,500 g for 10 minutes at $4 ~ ^ { \circ } \mathrm { C }$ . Remove the LB broth supernatant from the cell pellet by first pouring off the liquid and then carefully pipetting off all of the remaining broth. Suspend the cell pellet in one of the two tubes in 5 mL of the chilled TSS. Once suspended, transfer the liquid to the second tube and suspend the second pellet in the same TSS, combining the two pellets. Be careful with the cells when suspending them. Gentle vortexing can be used, but best is gentle agitation or mixing with a large 

## Text Box 18.11

Inoue buffer: 55 mM MnCl2·4H2O; 15  mM $\mathsf { C a C l } _ { 2 } . 2 \mathsf { H } _ { 2 } 0 ;$ 250 mM KCl; 10 mM PIPES (0.5 M, pH 6.7). Filter sterilize with a 0.45 μm syringe-top filter, aliquot, and store at $- 2 0 ^ { \circ } C .$ . 

## Text Box 18.12

SOC: add 20 g tryptone, 5 g yeast extract, and 0.5 g NaCl to 950 mL ${ \mathsf { d H } } _ { 2 } { \mathsf { O } }$ and shake until dissolved. Add 10 mL of 250 mM KCl and adjust the pH to 7.0, then make the final volume 975 mL. Sterilize by autoclaving, then cool to about 60 ${ } ^ { \circ } \dot { C } ,$ which should be warm to the touch but not too hot to handle. Add 20 mL of filter sterilized 1 M glucose and 5 mL of autoclave sterilized 2 M MgCl2 to complete the SOC. 

## Text Box 18.13

TSS buffer: 5 g PEG; 1.5 mL 1 M MgCl2; 2.5 mL DMSO in LB broth, adjusted to pH 6.5 prior to taking the final volume to 50 mL. Some syringe-top filters cannot tolerate DMSO; it is fine to add this after filtering. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f550f4cd27248fa32ec440273b859cc8165d2c53d555a536e4c2eaf47b9bf100.jpg)



Figure 18.25 Inoue method of generation of competent cells. This method starts with a culture of E. coli that have been grown overnight at 18 °C. A 100 mL culture is split into two centrifuge tubes of 50 mL and centrifuged at 2,500 g for 10 minutes at $4 ^ { \circ } \mathsf { C } .$ The resulting pellet is resuspended in 32 mL of ice-cold Inoue buffer and then centrifuged again at 2,500 g for 10 minutes at $4 ^ { \circ } \mathsf { C } .$ The pellets are this time resuspended in 8 mL of ice-cold Inoue buffer and put on ice for 10 minutes before aliquoting in 50 μL portions, snap freezing, and storing a $\mathrm { t } - 7 0 ^ { \circ } \mathsf { C } \mathrm { t } 0 - 8 0 ^ { \circ } \mathsf { C }$ .


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/445d9dfce2868d1066952f2990499fe52a2e72d04a9279aa9e543b3441cb97f9.jpg)



Figure 18.26 TSS method of generation of competent cells. The E. coli culture is split into two centrifuge tubes containing 50 mL and chilled on ice prior to centrifuging at 2,500 g for 10 minutes at 4 °C. The bacterial cell pellet of one of these is resuspended in 5 mL of ice-cold TSS buffer. This 5 mL with suspended bacterial cells is used to resuspend the second pellet as well, combining the two pellets into one 5 mL volume, which is chilled on ice for 15 minutes. This is aliquoted into 50 μL portions and stored $\mathsf { a t } - 7 0 ^ { \circ } \mathsf { C t } 0 - 8 0 ^ { \circ } \mathsf { C }$ .


pipette tip. Do not pipette up and down forcefully or with a small tip or the cells could lyse. Chill the suspended tube of cells on ice for 15 minutes. 

Aliquot the TSS chemically competent cells at $5 0 ~ \mu \mathrm { I }$ volumes into the chilled 1.5 mL tubes and freeze at $- 7 0 ~ ^ { \circ } \mathrm { C } / - 8 0 ~ ^ { \circ } \mathrm { C }$ or keep the cells on ice and use them immediately. Some protocols suggest snap freezing in a dry ice ethanol bath or liquid nitrogen before freezing $\mathrm { a t - 7 0 ^ { \circ } C / - 8 0 ^ { \circ } C }$ . Aliquots of competent cells, TSS or Inoue, are measured for single use, so there is no need to freeze–thaw, however if you find you are running low, they can be split and 25 μL could be used per ligation/control. 

## Transformations using chemically competent cells use similar methods, regardless of how the cells were made

Chemically competent cells are transformed by putting the DNA and the competent cells together on ice, giving the cells a brief heat shock, and then letting the cells recover. For all chemically competent cells, start by thawing cells that have been stored at $- 7 0 ~ ^ { \circ } \mathrm { C } / - 8 0 ~ ^ { \circ } \mathrm { C } .$ . Some recommend briefly warming the tube in the palm of your hand, then placing it on ice, while others recommend just thawing the cells on ice. Add 1–2.5 μL of the DNA to be transformed into the chilled tube containing 25–50 μL of chemically competent cells and leave these cells and DNA on ice for 30 minutes. For just 90 seconds, put the tube at $4 2 ~ ^ { \circ } \mathrm { C }$ for the heat shock (Figure 18.27). Generally, this is done in a water bath for good thermal transfer. This $4 2 ^ { \circ } \mathrm { C }$ heat shock is a critical step. Some protocols conduct the heat shock for a shorter period of 30 or 45 seconds. At the end of the heat shock, immediately transfer the tube to ice to chill for 2 minutes. Add 1 mL of LB or SOC to the tube and incubate at $3 7 ~ ^ { \circ } \mathrm { C }$ TA with shaking for 45 minutes. This incubation gives time for the resistance marker to be expressed, as mentioned earlier. SOC is sometimes preferred as a richer medium for the bacteria. Some protocols also suggest a 1 hour incubation, however this can run into a second round of bacterial cell division and artificially generate duplicate clones. At the end of 45 minutes, plate $2 0 0 ~ \mu \mathrm { L }$ of the cells onto LB agar containing the appropriate selection and screening supplements for the plasmid used in the cloning (i.e., ampicillin, X-gal, and IPTG). Incubate the LB plate overnight at $3 7 ^ { \circ } \mathrm { C }$ . The remaining 800 $\mu \mathrm { L }$ of the transformation should be stored on the bench or at $4 ^ { \circ } \mathrm { C }$ overnight. Should the LB selection plate have no colonies after overnight incubation, or no white colonies for blue-white screening, centrifuge this SOC tube and plate the remainder of the transformation. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4dd3af5a69c6929b1a8f11d2cf643ea1eb71619d9acc8f3881ddd85b1d404111.jpg)



Figure 18.27 Transformation using heat shock. Competent cells are thawed on ice, then 1–2.5 μL of the DNA to be transformed into the bacterial cells is added. The DNA and cells are left on ice for 30 minutes. The tube is briefly heatshocked in ${ \sf a 4 2 ^ { \circ } C }$ water bath for 90 seconds and then immediately put on ice for 2 minutes. To prepare the cells for incubation, 1 mL of LB or SOC is added, and the tube is incubated at 37 °C for 45 minutes before plating 200 μL onto selective media (such as LB-amp-X-gal-IPTG) and incubating overnight at $3 7 ^ { \circ } \mathsf { C } .$ . The remainder of the bacterial cells (800 μL) can be stored for plating later, if there are no colonies on the plate.


## Electroporation provides an alternative to chemically competent cells

Electroporation requires an electroporation cuvette and electroporator (Figure 18.28), as well as electrocompetent cells. To make electrocompetent cells, grow 100 mL of E. coli to $\mathrm { O D } _ { 6 0 0 }$ of 0.6 and then put the culture on ice in two 50 mL sterile tubes. Centrifuge the culture at 1,000 g for 15 minutes at $4 ^ { \circ } \mathrm { C } _ { \mathrm { 1 } }$ , then remove the supernatant LB broth from the pellet completely. Suspend the cell pellet in 50 mL of ice-cold sterile $\mathrm { \ d H _ { 2 } O }$ and centrifuge at 1,000 g for 15 minutes at $4 ~ ^ { \circ } \mathrm { C } .$ . Remove the supernatant, suspend the pellet in 25 mL of ice-cold sterile $\mathrm { \ d H _ { 2 } O , }$ , and centrifuge again at 1,000 g for 15 minutes at $4 ~ ^ { \circ } \mathrm { C }$ . Remove the supernatant and suspend the pellet in 1 mL of ice-cold 10% sterile glycerol. Aliquot the cells as 50 μL portions into 20 pre-chilled 1.5 mL tubes, in which they can be stored for 6 months $\mathrm { a t \ - 7 0 \ ^ { \circ } C / - 8 0 \ ^ { \circ } C } .$ . If these cells repeatedly produce arcing during electroporation, as described in the next section, add an additional cold water wash step to this electrocompetent cell preparation process. 

## The process of electroporation is sensitive to salts, but quick to perform

To electroporate, chill the electroporation cuvettes and DNA on ice. Warm LB plates to $3 7 ^ { \circ } \mathrm { C } .$ . Thaw electrocompetent cells from $- 7 0 ~ { } ^ { \circ } \mathrm { C } / - 8 0 ~ { } ^ { \circ } \mathrm { C }$ on ice; alternatively, freshly made electrocompetent cells kept on ice can be used immediately. For 1 mm cuvettes, set the electroporator to 1.25–1.5 V or the setting recommended for the cuvette size and electroporator combination by the manufacturer. Add 2 μL of purified DNA to 50 μL of electrocompetent cells, on ice, mixing gently with the pipette tip. Transfer the cells and DNA to the chilled electroporation cuvette, being sure there are no air bubbles. Wipe the moisture off the outside of the cuvette without warming it and place it in the electroporator. Pulse the cells with an electric shock. If there is a loud pop, repeat the process with a new cuvette, tube of cells, and less DNA. The pop noise is arcing of the electricity caused by too much salt in the DNA. If less DNA does not work, then the DNA needs to be cleaned up further with a spin column. When the electroporation is successful (there is no pop), add 1 mL of SOC immediately to the cuvette. SOC is a rich bacterial medium that helps the bacterial cells recover from the process. It is a good idea to include an electroporation control with no DNA to show that the zap of electricity does not kill the cells; this should be plated onto a plain LB agar plate without selection. 

Put the SOC and cells in a microcentrifuge tube on ice for 2 minutes to recover, then at $3 7 ^ { \circ } \mathrm { C }$ with shaking for 1 hour. After an hour, plate 200 μL of the SOC and cells onto LB agar containing the appropriate selection and screening supplements (i.e., ampicillin, X-gal, and IPTG). Incubate the plate overnight at $3 7 ^ { \circ } \mathrm { C }$ . Leave the microcentrifuge tube with the SOC and cells on the bench overnight or at $4 ^ { \circ } \mathrm { C } .$ . If there are no transformed colonies on the plate the next day or if none of the colonies has the desired insert, centrifuge the remaining 800 μL and plate the rest of the electroporated cells. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/82d2d663715e298c4a2a3a6e16406956665764519ce42e5f04287d15d1f45665.jpg)



Figure 18.28 Transformation using electroporation. Electroporation requires electroporation equipment, including an electroporator and electroporation cuvettes. The electroporator delivers the electric shock through the electroporation cuvette, which holds the bacterial cells and the DNA. This shock moves the DNA into the bacterial cells.


## Expression studies rely on extraction of high-quality RNA, which means controlling RNases

This chapter has mostly been concerned with techniques related to DNA because these relate directly to bacterial genetics and genomics. However, to investigate gene or ncRNA function, it may be beneficial to explore RNA-based experiments. In such cases, starting with good-quality RNA is important. As with DNA, RNA can be extracted by one of two general methods, using either a phenol method, which produces high-quality RNA but uses hazardous chemicals, or a spin column method, which is quicker and safer but can be contaminated with proteins and DNA. 

For many applications, a purchased spin column kit will work well, provided precautions are taken when handling RNA. Recall from Chapter 4 that RNases are everywhere and that RNA is structurally very unstable, being prone to pulling itself apart even when it is not degraded by the ever-present RNases. Use products that remove RNases from surfaces in the laboratory environment, such as RNaseZap, and wear gloves that are changed frequently and wiped with RNase surface remover frequently. Use a solution to preserve the RNA in the bacterial cells prior to the extraction of the RNA, such as RNALater, which will stop production of new mRNA and prevent RNases within the bacterial cells from degrading the transcripts. 

In addition, all plastics should be specifically purchased for RNA work as RNasefree, including use of pipette tips that include within-tip filters. These filters stop any contamination from within the body of the pipette entering your experiment and vice versa. RNase-free plastics come certified from the manufacturer as not having RNases at the time of arrival at your laboratory, but once the packaging is opened, there is a risk of contamination of tips and tubes. Take care in handling these to preserve their RNase-free quality. Despite the popular belief, autoclaving does not eliminate RNases, even when done twice. 

## RNA extraction columns work similarly to DNA extraction columns, with some slight variations

RNA extraction columns work in a similar manner to DNA extraction columns, relying on the features of nucleic acids and silica to bind to the column, and wash with an ethanol-based wash solution. The most striking variation when comparing most DNA and RNA commercial kits is that the RNA extraction kits have RNasefree components. Generally, the columns will come individually packaged to ensure they remain RNase-free during the life of the kit. Some kits may require the user to purchase their own RNase-free tubes and RNase-free water for the elution step, while other manufacturers will provide these. 

Aside from needing to take care due to RNases, the other common issue with RNA extraction using the spin column-based methods is that they frequently result in RNA that is contaminated with DNA. For downstream experimental analysis, residual DNA can give erroneous results, therefore it is important to completely remove any DNA from the extracted RNA. Most kits will have an optional step to DNase treat the RNA while it is still bound to the column. This should be indicated as an essential step. 

At the end of the protocol, elute the RNA with RNase-free water into an RNasefree tube and then aliquot the RNA into RNase-free tubes in single-use volumes to prevent freeze–thawing. Store the RNA at −70 °C/−80 °C and use it within a year. 

## Acidic phenol extraction of RNA makes high-quality, pure RNA

So long as your technique for removing the aqueous layer from atop the phenol layer is good, the acidic phenol extraction method for RNA is one of the best. The principles are similar to phenol-based DNA extraction, but the change in pH of the phenol to acidic means that the DNA from within the bacterial cells ends up in the phenolic phase and only the RNA is in the aqueous phase following the first round of centrifugation (Figure 18.29). As with the DNA extraction using phenol/ chloroform/isoamyl alcohol described earlier in this chapter, the bacterial cells are lyzed, and the aqueous mixture is combined with an equal volume of phenol/ chloroform at pH 4.8. Acidic phenol is used because following emulsion and then centrifugation, the DNA and proteins are in the organic phase and interphase, while the RNA alone is in the aqueous phase. In addition, acidic phenol minimizes RNase activity. 


Phenol, pH 4.8


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/fad60aae3752b71e2e4606c15505e04e16497e01190009526930e947d81d7111.jpg)



Phenol, pH 8


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1df3c5f6c9f4efd84a144c62a1a8d2813ed3e5c32865f299ea62a4749a09d329.jpg)



CAFigure 18.29 Phenol phases for RNA extraction compared to DNA. For RNA extraction, acid phenol is used at pH 4.8. This has the distinct advantage that only RNA will be in the aqueous phase, with the DNA being in the interphase or the organic (phenol) phase.


Mix the equal volumes of bacterial cells in aqueous solution and acidic phenol/ chloroform by inverting or gently agitating for 10 minutes. Centrifuge the mixture at the maximum speed allowable for the centrifuge and tubes for 10 minutes to separate the aqueous and phenolic phases. As with the DNA extraction, the top layer will generally be the aqueous phase and contain the RNA, however high salt content can invert the layers. Again, using colored phenol can help identify the phases and is a good safety precaution when using a highly toxic chemical like phenol. Likewise, it is essential to take only the aqueous phase off to a new tube to avoid protein contamination, phenol contamination, and in this case also DNA contamination from the interphase or organic phase (see Figure 18.29). RNA can also become contaminated with the guanidinium thiocyanate that is present in commercial acidic phenol preparations. 

The steps in RNA precipitation are the same as for DNA, in that 1/10th volume of 3 M $\mathrm { N H _ { 4 } O A c }$ is added directly to the liquid of the aqueous phase in its new tube and mixed before addition of 2.5 volumes of 100% EtOH and mixing (Figure 18.30). As previously, extraction can continue from here or the sample can be chilled, for 1 hour at $- 7 0 ~ { } ^ { \circ } \mathrm { C } / - 8 0 ~ { } ^ { \circ } \mathrm { C }$ or overnight at $- 2 0 ~ ^ { \circ } \mathrm { C }$ to attempt to increase yield. Centrifuge the tube again at maximum for 2–5 minutes to pellet the RNA, ideally at $4 ~ ^ { \circ } \mathrm { C }$ (see Figure 18.30). Carefully remove the ethanol supernatant from the RNA pellet, which is then washed with 70% EtOH and air dried before suspension in RNase-free water. RNA should always be stored in small aliquots at −70 °C/−80 °C. To further protect the RNA during storage, an add-in RNase inhibitor can be added to the RNA at the point of aliquoting, prior to freezing. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e97d5d62d36c0219c16465bc2a2d36158989fe5604ce37301ed5165bc4546249.jpg)



Figure 18.30 Precipitation of RNA. To precipitate RNA from the aqueous phase, first add 1/10th volume of 3 M NH4OAc, here 10–100 μL of aqueous phase. Mix, then add 2.5 volumes ethanol, here 250 μL, and mix. Centrifuge to pellet the RNA at maximum for 2–5 minutes. Remove the supernatant from the pellet and wash with 70% ethanol. Remove the 70% ethanol and air dry the pellet. Once dry, resuspend the pellet, aliquot, and freeze to store at $- 7 0 ^ { \circ } \mathsf { C } \mathsf { t } 0 - 8 0 ^ { \circ } \mathsf { C } .$


## Key points

DNA can be extracted using phenol, which is hazardous but gives high quality and high yield, or using spin columns, which is quick and easy. 

DNA contamination with phenol, ethanol, or proteins can compromise the results of downstream experiments, therefore care needs to be taken in extraction. 

Restriction endonuclease digestion of DNA makes it possible to join together pieces of DNA from different sources, creating recombinant DNA. 

Digestion of an insert and a plasmid vector with the same restriction enzyme or with restriction enzymes with compatible cohesive ends facilitates cloning and ligation. 

PCR products can be cloned directly into TA cloning vectors by virtue of the A overhangs left by Taq polymerase during PCR. 

Antibiotic selection and blue-white screening aid in the identification of bacterial cells containing plasmid vectors containing the desired insert sequence. 

PCR can be used to specifically modify cloned DNA and change its sequence. 

There are several methods to generate competent cells for transformation of DNA, either using chemicals or electroporation. 

Extraction of RNA is similar to extraction of DNA, however great care must be taken due to the ubiquitous presence of RNases. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>α-Complementation</td><td>Heat inactivated</td><td>Polylinker</td></tr><tr><td>Colony PCR</td><td>LAMP</td><td>Processivity</td></tr><tr><td>Compatible cohesive ends</td><td>MCS</td><td>Sonication</td></tr><tr><td>Directional cloning</td><td>Overlapping PCR</td><td>Star activity</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1 What needs to happen to a bacterial cell to extract the DNA or RNA? Name methods by which this can be achieved. Why do the methods sometimes need to differ for Gram-negative and Gram-positive bacteria? 

2 Make a table listing at least three methods for DNA extraction from bacterial cells in the rows, with “pros” and “cons” in the columns. Note down the advantages (“pros”) and disadvantages (“cons”) of each extraction method. 

3  What are some of the key things to remember when using a restriction endonuclease in the lab? 

4	 How would the reaction set-up differ if the restriction digestion from Figure 18.5 was to be made without BSA and as a double digest with two restriction enzymes? 

5	 How might the reaction you made in question 4 need to be set up if the two enzymes worked best at two different temperatures? 

6	 Describe two methods that could be used to clone a PCR product into a plasmid. What considerations need to be taken into account with regard to the generation of the PCR product and any processing of the product after PCR for each method? 

7	 Briefly describe how blue-white screening works and how it helps researchers identify which colonies to pick for plasmid extraction. 

8	 What are the advantages of LAMP compared to PCR? What are the disadvantages? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

Using an online tool and the sequence for a gene of interest, explore the restriction enzymes that will cut the gene sequence. Discuss suitable enzymes for directional cloning into the MCS (multiple cloning site) of the plasmid pUC18. Once cloned, how would you use restriction digestion to delete a portion of the gene sequence, generating a knock-out mutant of the gene? In your choice of enzymes, take care in selection, as some may cut more than once, may cut the plasmid as well as the gene, or may cut the new sequence generated by the join between plasmid and insert. For each restriction digestion reaction, include in your discussion whether two different restriction enzymes are needed and, if so, whether they digest at the same temperature and in the same buffer. Such information will be available online from the manufacturer. 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

9 Compare and contrast the different methods for making E. coli competent cells. This could be briefly in text, visually in a diagram, or represented in a table format. 

10	 Electroporation is a rapid means of getting DNA inside of a bacterial cell, both in terms of preparing electrocompetent cells and in terms of doing the electroporation. What steps are involved in making the cells electrocompetent and what key factors lead to success in electroporation? 

11	 What special precautions need to be taken when working with RNA that are not as necessary when using DNA? 

12	 It is possible to extract DNA out of a bacterial cell with phenol or to selectively extract RNA. What change(s) in the protocol make it possible to obtain only RNA from a phenol-based extraction? 

2 PCR is a powerful tool not just for copying fragments of DNA, but also as seen here for manipulating DNA sequences and modifying them. Investigate research studies that have used one or more of the techniques described here to alter the sequence of bacterial DNA using PCR. Discuss how the technology was applied, including the materials and methods described in the research publication and the results outcome of this experimental work. Extrapolate from this study what further investigations could be done in this strain using this technique to learn more about the biology of the organism. 

3 Some bacterial species are naturally competent for transformation, as discussed in Chapter 3. E. coli can be made chemically competent or electrocompetent, as discussed here. Other species can be made competent as well. Investigate bacterial species that are either made into chemically competent cells or made into electrocompetent cells. Discuss the similarities and differences between the methods for that species and for E. coli. 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0233af17659358509ebdc83df395d7b371638d2327edbda3105beafd766a8cdb.jpg)


## Activity: Extract DNA in your own kitchen

The techniques described in this chapter are for use in the laboratory, but this activity can be done in your kitchen at home using materials you may have around the house or can get in the store. This activity demonstrates the basics of DNA extraction: cell lysis; detergent separation of proteins and membranes; and alcohol precipitation of DNA. There are several videos available online demonstrating methods similar to this that are fun to watch or possibly to create a video of your own to share. 

To start, squash up some fruit in a resealable sandwich bag. A banana, a few strawberries, or other soft fruit works well. Make some soapy water in a small glass by adding a spoonful of dish soap and a dash of salt to a quarter cup of warm water. Stir gently to mix. 

Pour this soapy water into the bag of squashed fruit. Seal the bag. 

Mix thoroughly. Pour the liquid from the bag through a strainer/ sieve/coffee filter into a clear glass, so that the liquid is retained in the glass. Dispose of the bag and chunks of fruit that have been strained off. 

To the strained liquid in the clear glass, add ice-cold alcohol. This can be rubbing alcohol, vodka, or any clear alcohol. Try to pour the alcohol along the side of the glass, slightly tipped, so that it layers on top of the strained liquid. Set the glass on a table or counter and watch as the DNA strands separate out. The DNA will appear as wisps of milky white material, covered in bubbles that may look to have a mucus-like consistency. The DNA can be lifted out of the mixture using a glass or wooden stirring stick. 

## Further reading

## Loop-mediated isothermal amplification (LAMP) quickly amplifies DNA at a single temperature

Notomi T, Okayama H, Masubuchi H, Yonekawa T, Watanabe K, Amino N, Hase T. Loop-mediated isothermal amplification of DNA. Nucleic Acids Res. 2000; 28(12): e63. 

## Following in vitro manipulation of DNA, it has to be transformed into a bacterial cell



Chung CT, Miller RH. Preparation and storage of competent Escherichia coli cells. Methods Enzymol. 1993; 218: 621–627. 





Huang M, Liu M, Huang L, Wang M, Jia R, Zhu D, Chen S, Zhao X, Zhang S, Gao Q, Zhang L, Cheng A. The activation and limitation of the bacterial natural transformation system: The function in genome evolution and stability. Microbiol Res. 2021; 252: 126856. 



## Chemically competent cells with Inoue buffer have the best reputation for good rates of transformation and reliability

Inoue H, Nojima H, Okayama H. High efficiency transformation of Escherichia coli with plasmids. Gene. 1990; 96(1): 23–28. 

## Chemically competent cells can be made with TSS buffer

Chung CT, Niemela SL, Miller RH. One-step preparation of competent Escherichia coli: Transformation and storage of bacterial cells in the same solution. Proc Natl Acad Sci USA. 1989; 86(7): 2172–2175. 

# A A G G T GPar t V I I

## Applications of Bacterial Genetics and Genomics

The last part of the book brings together three chapters on very different topics, but which all relate to applications of bacterial genetics and genomics and associated fields. In the first, the field of biotechnology is explored, focusing on the aspects of biotechnology that make use of bacterial cells and systems. Infectious diseases are touched on in the following chapter. There are entire volumes dedicated to this topic; the material presented here is an overview of the topic to complement the rest of the chapters of this book and put them into the context of human bacterial disease. In Chapter 21, the bacteriophages are presented in more depth. Although bacteriophages are presented in Chapter 1 and mentioned throughout the book, this chapter focuses on them specifically as their own entity, rather than just in the context of the bacterial genome. These chapters together provide additional depth and enhanced understanding and appreciation of how bacterial genetics and genomics can be applied in the fields of biotechnology and infectious disease control, as well as in understanding the ubiquitous nature of bacteriophages. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/9a128b2dd248d2c960fe472a4f463a56aedb26df7815cd2a7c2d58513cef1e6b.jpg)


# Biotechnology

Chapter 

19 

The use of biological processes or systems, such as the use of biological organisms, for the benefit of improving human life is biotechnology. This benefit can be in the broadest of senses. Biotechnology can clearly be the use of organisms to create or produce medicines, but it can also be to clean up our environment so that we have a healthier planet on which to live. Biotechnology can also be applied to the creation of novel cosmetic products that enrich our lives and make us happier, thereby bringing us joy, or which improve efficiency in industry that enables processes to be safer for human workers or for workers to be more productive, perhaps improving work–life balance. The use of microorganisms, especially bacteria, is a major part of the field of biotechnology. While many biological systems are used in biotechnology, this chapter, in keeping with the theme of this book as a whole, will focus only on those that use bacteria in some way to achieve their end result. 

## Biotechnology is far older than genetic engineering

When we think of biotechnology, we tend to think of modern scientific technologies. However, the use of biologicals for human benefit is ancient, if we consider processes such as beer brewing, mead and wine making, and cheese making. While the fermentation processes require yeasts, which are microbes outside the scope of this book, cheese making uses enzymes that originally came from sources such as calves’ stomachs. These enzymes often now come from bioengineered bacteria, being recombinantly generated. Although cheese making itself predates recorded history, today we are able to make it using modern scientific techniques, including recombinant enzymes expressed in bacteria. 

Rennet used in making cheese is extracted from the fourth stomach of calves that have been slaughtered for veal. After processing, rennet contains chymosin, a protease, as well as pepsin and lipase. The role of the chymosin enzyme is to coagulate milk, which is beneficial to calf digestion and enables humans to manufacture cheese. In older cows, the level of chymosin drops, making the extraction from young calves’ stomachs important for cheese making. Due to the expense and limited availability of rennet, cloning of the chymosin gene into bacteria and expression of the protein was an attractive solution. The fermentation-produced chymosin (FPC) from the bacteria is the same as the chymosin produced in the calf stomach. Today, most FPC is produced in either the fungus Aspergillus niger or the yeast Kluyveromyces lactis, but some is also made in Escherichia coli. 

With the rise in awareness of lactose intolerance in humans, particularly adult humans, there has been an increasing market demand for lactose-free products. In infants, the lactase enzyme is made in the small intestine to digest human breast milk from the mother, but with age the expression of this enzyme can decrease or stop altogether. Consumption of lactose-containing foods by lactoseintolerant individuals results in abdominal cramps, gas, diarrhea, and discomfort. In addition to non-dairy alternatives to milk and cheese products, biotechnology has come up with some solutions. The lactase enzyme has been produced using recombinant technologies in a similar way to chymosin and added in the production of milk and cheese products to reduce lactose, often to levels where companies are labeling products as lactose-free. 

## Biotechnology impacts many aspects of our lives and of research

Biotechnology is a broad discipline that touches many aspects of science, technology, economics, and society. In medicine, biotechnology is used to develop new pharmaceuticals such as monoclonal antibody-based therapies and recombinant protein-based drugs. In agriculture and environmental sciences, biotechnology is involved in genetic modification of plants, often involving bacteria as intermediates within which to manipulate the genetic material, as well as aiding in the development of efficient biofuels and use of bacterial species for bioremediation. In industrial biotechnology, bacteria aid in production of enzymes that enhance products as diverse as food and laundry soap. 

Biotechnology permeates our lives, being present in our homes and market shelves. Biological laundry soaps contain digestive enzymes, generally lipases, proteases, or both. Some products, including dishwasher detergents, also contain amylases. Lipase is able to digest fats and oils while protease is able to digest proteins and starch, thereby removing the two most common sources of stains on clothing. Cloning and expression of lipase, protease, and amylase enzymes in bacteria using biotechnology mean that large quantities of the enzymes can be made inexpensively. Indeed, around 25%–30% of enzymes are used by the detergent industry. 

There is a fascinating ecosystem at the floor of the ocean that occurs when a whale dies and sinks to the deep ocean, below 1,000 m, called whale fall (Figure 19.1). This environment has created an ideal opportunity to explore microorganisms that are adapted for growth in cold water, less than $2 0 \ { } ^ { \circ } \mathrm { C } , { } \quad$ and that possess cold water adapted enzymes that function at these temperatures. For manufacturers of laundry soap, this is an ideal environment, especially with the move to set washing machines to cold water washes to save on energy and preserve clothing. From studies of whale fall, some of the lipase fat-dissolving enzymes in laundry soap now come from organisms that have evolved to live in cold water, making them ideal for cold water wash conditions (see Figure 19.1). 

## Large quantities of bacteria are grown in bioreactors to yield large quantities of recombinant proteins

To harvest large quantities of recombinant proteins for biotechnology applications, bioreactor systems are frequently used. Bioreactors are culture vessels intended for industrial use or for highly controlled long-term laboratory experiments. These closed bacterial growth systems enable large quantities of bacteria to be grown, enabling recombinant protein harvesting on a much larger scale than would be achieved in a typical laboratory bacterial culture (Figure 19.2). 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e5642d4dbae21520f10b68a6140d8c60c96a3c5b259ef1e105a6435f740faccb.jpg)



Whale fall on ocean floor


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0410578e24968ee53439ab6aa847ee233ca8b13a9dd591e5286fdc2e9a71f1f4.jpg)



Organisms producing lipases


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c681a46d4ec482f31c0f344894800d6fe68141a2753a41fbe7f252fc6f6e839e.jpg)



Enzymes in laundry soap



Figure 19.1 Whale fall ecosystems are sources of cold adapted enzymes. When a whale dies and its carcass falls to the deep ocean floor, it creates an ecosystem. Other organisms thrive on breaking down the nutrients of the whale body. These include organisms producing lipases adapted to function well at cold water temperatures. These have been collected, grown in laboratories, and used as enzymes in laundry soaps to break down fats in cold water laundry washes.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0c13a9914174e5abeddc36b6d755d385293744d7b922e42efc9c3857aba7e80a.jpg)



AFigure 19.2 An example of a bioreactor. Bioreactors are contained systems for growth of bacteria under highly controlled conditions that can be carefully monitored. The culture is often stirred and aerated, as needed for the species, and temperature controlled, with the aid of the thermal jacket on the bioreactor vessel. As nutrients are depleted, more media can be added and waste removed.


At its most basic, a bioreactor is any engineered system that is able to support growth of microbes or biochemical reactions. Bioreactors can be vessels of less than a liter or of 50,000 liters, potentially more. Growth conditions within the bioreactor are carefully controlled and maintained, with new media added, temperature and pH controlled, oxygen levels adjustable, and the system, including stirring rate of the culture, fully monitored (see Figure 19.2). When growing large volumes of bacteria, such as E. coli and Bacillus spp. expressing recombinant proteins, the bioreactor maintains the optimal growth conditions to produce the best yield of protein. The bioreactor simulates the ideal conditions for the bacteria to grow and express the recombinant protein. 

A typical liquid culture in a microbiology laboratory uses a broth medium in a shaking flask at a set temperature in an incubator. Under these conditions the temperature within the culture is not uniform, with the temperature within the flask differing from that toward the surface of the flask. The culture is shaken in an attempt to aerate the broth; however, this also is not uniform throughout. A bioreactor attempts to address this and other variations in culture conditions to produce more reproducible cultures each time, as well as optimal conditions for each bacterial cell within the culture. However, setting up bioreactor cultures is more complex than a simple liquid culture, which is why bioreactors are not used for routine bacterial growth. 

## Human insulin expressed in Escherichia coli is a classic example of biotechnology

Insulin is needed for patients with diabetes. Insulin was once isolated from the pancreas of pigs, cows, and sometimes salmon. This was a slow and expensive process that was unable to keep up with the demands of clinical need in a growing population. In addition, some patients were allergic to insulin harvested from animals and others were not comfortable with the use of medicines derived from animals. Overcoming these issues, the gene for human insulin was cloned into bacteria and expressed as a recombinant protein. 

Humulin was licensed for human use in 1982. Two DNA sequences were introduced into E. coli: one for the insulin A chain of 21 amino acids and one for the B chain of 30 amino acids. In humans, insulin is made as one polypeptide chain, proinsulin, which has the A chain and B chain separated by the 33 amino acid C peptide (Figure 19.3). Proteolytic cleavage removes the C peptide. The A chain and B chain are then connected by two disulfide bonds; a third disulfide bond occurs within the A chain. Production of the A and B chain peptides in E. coli results in recombinant human insulin with the same structure (see Figure 19.3). 

Today, millions of diabetics use synthetic insulin that is made mostly by bacteria or yeast in some cases. Recombinant insulin can be a perfect match for human insulin, or it can be changed slightly using genetic engineering to produce insulin analogs, including insulin lispro, known as Humalog. Humalog was the first insulin analog, entering the market in 1996, and is a fast-acting insulin. The amino acid sequence of the B chain of Humalog differs from normal human insulin at the C-terminus, where the lysine and proline residues are reversed, which blocks the formation of insulin dimers and hexamers. Because these multimeric forms of insulin cannot form, there is more insulin available for fast absorption by the patient. This minor change gave patients more flexibility in managing their lives because they did not have to wait as long following an insulin injection to have a meal. There are several different analogs of insulin in production today by different pharmaceutical companies. 


Figure 19.3 Human insulin. Insulin is made in humans as one continuous chain of amino acids, initially proinsulin, which is 84 amino acids (left). To generate insulin, the 33 amino acid C peptide is removed from proinsulin, releasing the 21 amino acid A chain and the 30 amino acid B chain. The A chain and B chain come together, connected by two disulfide bonds, with a third disulfide bond within the A chain (right).


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/92bb7d6c2d57a15c44155887d77370833b35d302d0a68e518a2191b5cd4d23fd.jpg)


## Many recombinant drugs have been made since insulin

In the 1980s, E. coli was used to express several recombinant drugs, including Humatrope and Protropin for hGH deficiency, Roferon A for hairy cell leukemia, and Intron A for cancer, genital warts, and hepatitis. The availability of these human proteins was an important contribution by biotechnology made possible by bacteriology. Human growth hormone (hGH) deficiency is the result of the body being unable to make enough growth hormone. This can manifest at birth or later in life, resulting in short stature, poor bone density, and decreased muscle mass. Therapeutic intervention involves replacement of the hormone. Until recombinant hGH was available, it was extracted from the pituitary glands of cadavers. 

The cytokine-based drugs used in cancer chemotherapy Aldesleukin, Interleukin-2, Filgrastim, and Pegfilgrastim are produced in E. coli. A range of other anticancer biopharmaceuticals are also made in E. coli, including Interferon alpha-2a, Interferon alpha-2b, Interferon gamma-1a, and Endostatin. 

Denileukin diftitox is a fusion protein made in E. coli as a diphtheria toxin fused to a human cytokine and is used to treat T-cell lymphoma. Two diphtheria toxin fragments, toxin A and toxin B, are fused to human interleukin-2 (IL-2; Figure 19.4). This biotechnology-generated drug uses two bacterial species in generation of the final drug product Denileukin diftitox. E. coli is used for expression and the diphtheria toxin comes from Corynebacterium diphtheriae. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/c85ee62253382a284d6bdbafcc9602d6a52b92989a036c2c001d1f1142ecf55d.jpg)



Figure 19.4 Denileukin diftitox fusion protein. Biotechnology has generated a drug that fuses two diphtheria toxin fragments from C. diphtheriae (left end) with human IL-2 (right end). The fusion protein is expressed in E. coli, producing a drug that specifically targets IL-2 expressing cancer cells for destruction by the toxin.


TADiphtheria toxin is a potent exotoxin, which is selectively delivered to cancer cells expressing the IL-2 receptor by virtue of the fusion protein drug. Clinical use of this drug was discontinued in 2014, due to production and purification issues with the E. coli expression system, however yeast expression systems are being explored as replacements. 

## Recombinant production of influenza virus vaccines

The surface of the influenza virus is coated in the glycoprotein hemagglutinin (HA; Figure 19.5). The HA antigen can be recognized by the body’s immune system and when bound by antibodies that recognize HA, the influenza virus becomes neutralized. This is the basis of the seasonal flu vaccine, the vast majority of which are produced in egg-based manufacturing systems (see Figure 19.5) that are limited in their flexibility and in capacity to scale up in times of epidemic and pandemic outbreaks of flu. In addition, some patients experience complications due to the egg-based nature of the propagation of the vaccine. 

Recombinant production of HA expressed in bacterial systems using biotechnology techniques is an attractive alternative to egg-based production. However, several attempts have resulted in HA that is less antigenic and that had lower yield than the established production methods. To address this issue, researchers at Cytos Biotechnology took an approach that combined viral and bacteriophage sequences. Rather than expressing the whole of the HA protein in E. coli, fragments of the protein were investigated and domains that were shown to be readily expressed and that folded into structures that were the same as the native fl u virus protein structure were identifi ed. This provided a portion of the HA that could be highly expressed in E. coli. This HA fragment was fused to the bacteriophage Qβ virus-like particle (VLP), a carrier that has been used in development of other potential vaccines to enhance antigenicity. Within the Qβ particles is RNA that is a ligand for TLR7/8; the fusion therefore enhances antigenicity of the HA or other antigens that are combined with it. 

The HA Qβ VLP proteins expressed in E. coli are not glycosylated as they would be in humans. This may be a limitation to this technology, however the investigators discovered that the antigens expressed in their bacterial cultures were able to offer better cross-protection to other flu viruses in mouse model experiments than might be expected. This suggests that recombinantly generated flu vaccine may have better protective abilities as well. 

## Live recombinant vaccines use live bacteria to deliver antigens

While several recombinant vaccines have been developed where bacteria, yeast, or other cells express proteins, there have also been investigations into live recombinant vaccines, where live organisms are introduced into the human body to express antigens and trigger the immune response. The rationale is that the whole organism will generate a broader immune response than a single recombinant protein and that a live vaccine will be able to replicate within the body, unlike an inactivated vaccine. 

Advances in bacterial genetics and genomics have enabled specific changes to be made in bacterial strains. Virulence factors can be completely removed from the genome, yet antigenic proteins can be retained. Additional antigens can be added and the strain that is to be introduced to the patient can be fully susceptible to antibiotics, so that it can be eliminated with antimicrobial chemotherapy if required. 

One bacterial strain that has been extensively investigated as a live recombinant vaccine vector is Mycobacterium bovis BCG. Due to its previous use as a vaccine, it is known to be safe, having been administered to over 3 billion people. Recombinant BCG (rBCG) has been explored for several antigens, expressed by M. bovis BCG, which acts as an adjuvant for the immune system recognition of the antigens. These include work on rBCG-HIV that produced a cellular and humoral immune response against HIV and rBCG-S1PT that produced a cellular immune response against Bordetella pertussis toxin. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d77a6ed991add8255fb1e9b2922333ceda404f352655601acf42d19f7ed946a2.jpg)



Figure 19.5 Flu virus vaccine made within eggs. One of the surface antigens of influenza virus is hemagglutinin (HA), which can be recognized by the immune system. Once bound by antibodies the flu virus is neutralized. It is therefore useful to be able to replicate flu viruses within eggs to be able to produce flu vaccines. Eggs are injected with the virus, which multiplies. The eggs are later harvested for the viral particles and the batch is tested before being approved for use.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d4b8f77fae4883cb6bb9d3d325124e0fd6aef24374c78d184f6ea2b7c8783918.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a24e72601553e6415c6ed622f55ecde6acf36ab4f60c625bc8af841b9f7822f7.jpg)



Figure 19.6 Biostimulation and bioaugmentation to tackle pollution. Bioremediation uses microbes to degrade the pollution. Two approaches can be taken to achieve this. Biostimulation uses microbes already present in the environment, introducing nutrients or other changes to give those microbes a boost (left). Bioaugmentation instead puts new microbes into the environment, which are specifically chosen for their ability to degrade the pollutants (right).


## Bioremediation uses the microbial world to correct the pollutants we have introduced into the natural world

Bioremediation seeks to restore contaminated sites using microorganisms to degrade the contaminants. Treatments can happen in place, in situ, or the contaminated material can be removed and treated elsewhere, ex situ. There are several approaches to bioremediation, including naturally occurring microbial communities, stimulated to break down contaminants. In biostimulation, changes in pH, moisture, nutrients, and other conditions are made to enhance the growth and bioremediation properties of the bacteria that are already present (Figure 19.6). Alternatively, bioaugmentation can be used, where specific microbes are chosen for their degradation capabilities (see Figure 19.6). It is possible to combine biostimulation and bioaugmentation. Generally, bioaugmentation is short-lived, since the introduced bacteria die quickly in their new environment. Where present, the organisms already adapted to the environment and able to help it recover are better able to achieve bioremediation. 

Bioremediation is concerned, for the most part, with cleaning up historical sites or accidental sites of contamination. Biotreatment of wastewater and byproducts of industry does not strictly fall within the realms of bioremediation, as the goal of biotreatment is to treat these before they enter the environment. 

## Bioremediation using bacteria present in the environment can help us reclaim sites

In Medellin, Colombia, there is a landfill called “El Morro,” which was in use from 1972 to 1984. Over 25 years later, the Colombian government decided to turn the area into a park. Something similar had been done at Mount Trashmore Park in Virginia Beach, Virginia, USA in 1973 (Figure 19.7), as well as several other landfill sites elsewhere. To investigate the feasibility of conversion of the Medellin site into a park, samples of the landfill and associated bacterial species were taken. This revealed that bioremediation was naturally occurring. Plans were therefore put in place to attempt to aid the bacteria in their work through the provision of additional nutrients. What was once a deprived area is now an urban park. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/cd906656c5a2dc9a229bc49c3ab31b6174bd08890c5c482bd74d157edc69dd70.jpg)



CAFigure 19.7 Mount Trashmore, Virginia, USA. Once a landfill in use until 1971, in 1973 it became the world’s first park built on a waste landfill. This has become not only a popular park, but also a demonstration of landfill reuse and bioremediation that has inspired other sites worldwide. (With permission from Sherry V Smith/Shutterstock.com.)


Several useful bacterial species have been identified in various environmental contexts. However, Dechloromonas aromatica is an especially useful bioremediation species. It can oxidize benzoate, chlorobenzoate, and toluene causing reduction of oxygen, chlorate, and nitrate. It is uniquely able to anaerobically oxidize benzene, a contaminant of ground and surface water. 

As an example of biostimulation, oil naturally exists in the Gulf of Mexico and therefore seeps onto the ocean floor as a natural part of that ecosystem. When there was the massive Deepwater Horizon leak, spilling 4.9 million barrels of oil into the Gulf in 2010, there were already communities of microbes existing in this environment capable of bioremediation of oil. Through the addition of nutrients to the water near an oil spill, the bacterial population can be assisted in its bioremediation. In addition, to aid the bacteria being able to access the oil, chemical dispersants were added to the water. The dispersants broke up the oil spill, creating more oil and water interface opportunities for the bacteria to gain access to the oil. 

## Genetic modification for bioremediation can provide organisms with new features

Using genetic engineering, bacteria for bioremediation can be enhanced. Genes can be added that degrade pollutants and/or genes can be added that can monitor pollution levels. There are, however, concerns about releasing genetically modified organisms into the environment and the potential for their genes to be horizontally transferred. Some of these concerns can be overcome by creating strains that will die once their bioremediation job is done and that can be detected easily, for example through expression of bioluminescence. 

With bioengineering, new bioremediators have been created, such as E. coli that are able to remove mercury, a function not available in nature for any organism. These genetically modified bacteria would be contained within filters that are used at mercury-contaminated sites to sequester away the mercury, which is otherwise highly toxic in the environment as mercury or when transformed to methylmercury. There is some hope that bacteria will not only be able to remove heavy and rare metals from the oceans, where these metals are sources of contamination for wildlife and our food chain, but also that once these are sequestered by the bacteria, they will be recoverable. If we are able to remove the contaminating metals from the oceans and reuse them in industrial applications, rather than further damage the environment by trying to retrieve more from the Earth, this would be beneficial overall. 

## Production of materials by bacteria

Acetobacter naturally produce nanocellulose, as do other Gram-negative and some Gram-positive cells, but the Acetobacter is prolific in its generation. Biotechnology-based investigations have applied this bacterial biosynthesis to generate sustainable, growable items. For example, a mold can be made of a pair of shoes. The bacteria are then grown in the mold and in the process of them naturally producing nanocellulose, they make shoes. This method can even generate different colors. Once growth of the shoe is complete, the structure is sterilized to remove the bacteria, leaving behind only the cellulose. The resulting shoes are therefore biodegradable. 

Bacterial nanocellulose has also found applications in medicine. These applications include topical use for wound dressings and implants for repair or replacement of structural defects in the body. 

## Bacteria can be a renewable source of bioenergy

Given the growing global demand for energy and issues with traditional sources of energy and their impact on the environment, there is interest in bioenergy and the role microbes can play. Bioenergy is energy from a biological source, in this case bacteriological. Microbial metabolism can create biohydrogen, biomethane, bioethanol, and bioelectricity, as well as addressing the problems of plastics from petroleum products through generation of microbial biopolymers. 

One goal of bioenergy research is to use microbes to convert the biomass of the waste of our consumption into energy in a clean and renewable way. Most bacteria can convert sugars to ethanol, and some can metabolize plant matter to do so. E. coli have been genetically modified to generate biodiesel, through breaking down sugar and secreting high-grade biodiesel. Due to the properties of the fuel and its export from the bacterial cell, it floats to the top of the culture vessel, making harvesting easy. In addition, the E. coli are modified to express and secrete cellulase, able to break down plant matter that is indigestible by humans. The cellulase genes come from Clostridium stercorarium and Bacteroides ovatus, bacterial species that live in soil and ruminating animals. This addition was made to minimize the impact of production of the biodiesel on human food production. The secreted cellulase breaks down the inedible plant material to sugars that the E. coli metabolize into biodiesel (Figure 19.8). 

The bacterial species Geobacter sulfurreducens and Shewanella oneidensis are able to transfer electrons to bioelectrochemical devices such as microbial fuel cells and microbial electrolysis cells (Figure 19.9), making them useful for generating biohydrogen and bioelectricity. This technology is not yet on a scale to create energy of commercial use, however there is potential for future development. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/9918ed65d3a41c6aeac6fe6df3e53fd290d0466f1369b6cdada1a3aaea8c485b.jpg)



Figure 19.8 E. coli breakdown of plant matter to make biodiesel. Genetically modified E. coli can make high-grade biodiesel, which floats to the top of the culture vessel. Addition of genes for secreted cellulase into the E. coli enables them to break down plant matter into sugars (insert), which are then converted into biodiesel.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f6bb535432d69da7207fbb73fa0675c5e8caa701064124978205bbf9f2975a62.jpg)



Figure 19.9 Bioelectrochemical devices. Microbial fuel cells are not yet at a scale where they can produce commercial levels of electricity, but there is potential for future development of microbes as power sources. (Courtesy of Volker Steger/Science Photo Library.)


## Key points

Biotechnology uses biological processes for the benefit of humans. 

Bacteria make several important contributions to biotechnology, both directly and indirectly. 

Biotechnology, putting biological systems to use for human benefit, is an ancient discipline, when techniques such as the production of wine, beer, bread, and cheese are considered. 

Modern biotechnology includes the expression of recombinant proteins by bacterial cells. 

Large volumes of bacteria are grown for industrial purposes in bioreactors, enabling large-scale production of recombinant proteins. 

Biotechnology has made a positive contribution to human health, including the expression of human insulin in E. coli as early as 1982, followed by several other recombinant drugs. 

Some vaccines are based on recombinant antigenic proteins and live recombinant vaccines are in development. 

Use of bacteria in bioremediation can help recover the natural environment from human-generated pollutants. 

Bacteria can be the source of renewable energy in bioenergy developments including generation of biodiesel and as bioelectricity generators. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>Bioaugmentation</td><td>Bioremediation</td><td>Biotreatment</td></tr><tr><td>Bioenergy</td><td>Biostimulation</td><td></td></tr><tr><td>Bioreactor</td><td>Biotechnology</td><td></td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 Using your own words, define biotechnology. Describe three things that are a part of your life that are a result of modern biotechnology. 

2	 Describe two ways in which biotechnology is being used in the dairy industry to improve production, reduce reliance on animal-derived enzymes, and market dietary-specific products. 

3	 What conditions can be altered in a bioreactor? What advantages does this have over growing a bacterial culture in a flask with liquid growth media in a standard shaking incubator? 

4	 In what year was human insulin cloned into E. coli licensed for use? How does this work? What modifications have been made since? 

5	 Many recombinant drugs are expressed in E. coli. What are the advantages of using E. coli? What are the disadvantages? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

1 The cloning of human insulin and licensing of its use was a major breakthrough in biotechnology. Since then, many other drugs have been designed and used, including some that are discussed here. Explore and discuss one of these in more depth, or another of interest. How does the therapeutic aid in the disease it is fighting? Is it using E. coli or another expression system? Are there any issues? 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

6	 What are the options for production of vaccines against influenza? What are the advantages of each of the options? 

7	 Some vaccines are called “live recombinant vaccines.” Why are they live? What is recombinant in them? What is the advantage of this type of vaccine? 

8	 Bioremediation can be achieved in a few ways. What are these and how do they differ? 

9	 What is the difference between bioremediation and biotreatment? Why is bioremediation necessary if biotreatment happens? 

10	 What do genetically modified bioremediators do? What additional functions would you design into a bioremediator? 

11	 What is bioenergy and why is it attractive as a form of energy? 

12	 What are microbial fuel cells and what are some potential advantages in their use? 

2 Investigate an example of bioremediation in your local area. What form of bioremediation was used? Was just one approach attempted, or were different techniques combined, as needed? At what stage is the bioremediation project and how successful has it been thus far? 

3 Generation of biodiesel may provide a solution for fuel, so long as the source does not threaten food security. What is being done by researchers to try to protect food crops for human consumption, yet utilize biomass for the production of biodiesel as well? Expand upon the example in this chapter, explore other examples, and discuss the advances in this area. 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ba4a16eedb2ae68582d0fdcde6d57de1f01a29cdf3d04ca208d5faf2efaee467.jpg)


## Further reading

## Large quantities of bacteria are grown in bioreactors to yield large quantities of recombinant proteins



Habe H, Sato Y, Aoyagi T, Inaba T, Hori T, Hamai T, Hayashi K, Kobayashi M, Sakata T, Sato N. Design, application, and microbiome of sulfate-reducing bioreactors for treatment of mining-infl uenced water. Appl Microbiol Biotechnol. 2020; 104(16): 6893–6903. 





Obom KM, Magno A, Cummings PJ. Operation of a benchtop bioreactor. J Vis Exp. 2013; (79): 50582. 





Priyadarshini BM, Dikshit V, Zhang Y. 3D-printed bioreactors for in vitro modeling and analysis. Int J Bioprint. 2020; 6(4): 267. 



## Recombinant production of influenza virus vaccines



Jegerlehner A, Zabel F, Langer A, Dietmeier K, Jennings GT, Saudan P. Bacterially produced recombinant influenza vaccines based on virus-like particles. PLoS One. 2013; 8(11): e78947. 



## Bioremediation uses the microbial world to correct the pollutants we have introduced into the natural world



Pushkar B, Sevak P, Parab S, Nilkanth N. Chromium pollution and its bioremediation mechanisms in bacteria: A review. J Environ Manage. 2021; 287: 112279. 





You W, Peng W, Tian Z, Zheng M. Uranium bioremediation with U(VI)-reducing bacteria. Sci Total Environ. 2021; 798: 149107. 



## Bacteria can be a renewable source of bioenergy



Bokinsky G, Peralta-Yahya PP, George A, Holmes BM, Steen EJ, Dietrich J. Synthesis of three advanced biofuels from ionic liquid-pretreated switchgrass using engineered Escherichia coli. Proc Natl Acad Sci USA. 2011; 108(50): 19949–19954. 





Gomaa OM, Costa NL, Paquete CM. Electron transfer in Gram-positive bacteria: Enhancement strategies for bioelectrochemical applications. World J Microbiol Biotechnol. 2022; 38(5): 83. 



![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/5ae46eb728ba033d6ceaf20b68bd9ba78bb8f4eb86f55d4984785b0b3eeccc7b.jpg)


# Infectious Diseases

Chapter 

## 20

There are many other texts that have been written exclusively on infectious diseases and which focus on these exclusively throughout. This chapter provides an overview of the contributions that bacterial genetics and genomics have made to the control of infectious diseases including expanding our understanding of pathogenesis and evolution of bacteria. The examples presented here are not exhaustive and there are other stories embedded within the book in other chapters as well. Within this chapter the innovations that can be brought to infection control through exploration of bacterial genome sequences will be introduced. 

It is useful to remember when reading this chapter that there is a Glossary of Bacterial Species at the end of this book. This provides additional information on all bacterial species mentioned in this book, which may be useful for putting species into context. 

## The study of bacterial pathogen genes has led to new drugs to control infectious diseases

One-half of the antibiotics still in use were discovered in the 1950s and 1960s (Figure 20.1). Today, these drugs are no longer protected by their original patents. The antibiotics can therefore be made by any company, which means they are inexpensive and readily available. However, overuse, misuse, and bacterial evolution have led to resistance to many of the established antibiotics by important human pathogens. For example, antibiotic resistance in pneumonia is a major problem for treatment. The Gram-negative bacteria Pseudomonas aeruginosa, Klebsiella pneumoniae, Acinetobacter baumannii, and Gram-positive methicillin-resistant Staphylococcus aureus are major causes of hospital-acquired pneumonia. 

Efforts have been put into discovering novel antibiotics to overcome resistance. Through these efforts, key points of antimicrobial drug design were realized. First, due to genetic variation of bacteria, potent antimicrobials have been identified that kill just one strain, species, or genus, but do not have broader activity, being narrow-spectrum antibiotics. In a clinical setting, it is beneficial to have antibiotics that work against a range of species, being broad-spectrum antibiotics, because the etiological agent, the bacteria causing the infection, is not known. In many cases this has meant that antimicrobials that are deemed too 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3c0fda84cd9c6910f70c3db3f080cce9e3573ffc1582f80f2b7fb3b419eb10f5.jpg)



Figure 20.1 Antibiotics discovery timeline. Most antibiotics were discovered in the 1950s and 1960s. There had been no new classes of antibiotics since trimethoprim in the 1970s until cycliclipopeptides and oxazolidinones in the 2000s.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a39985524bf989b68f0ec44cb9ce6eafcd83049f16f83664c607458e9bbfc489.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/66adbc24949f09f2a914807d131932103307c03284891f01ef1d83e09d6faf8f.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e461b3d188feecef1e94668972afc47e90c49b231f515ae60856a29e575f1a63.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/3c1f7b6884a3c5b6491db6d70720835319edd4244d0a76a8f2b50ab348873ff6.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/97d11c5181a09186ed2af937511c9064a9847bf293f150a82be09e4346c7ff46.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8558bff8b9c1fae2fa781185cd74f90ae39d77cbb01e8c7d2065f633a09bd3ad.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a1785e861223fcd55938578e7ae49e114f15cbc4975d8e6781c13761005b2341.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/4d420543955a23149ae000ff85d47d04e9a9b48c042c5c177d03b24d59f7dd0a.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/7be4d9fa922cc8a7d9535f6c5bba605eb47c72cbe9c5401667f880f3b3fe22dd.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/264792b0e953aacfd9bbe26351617ebaf40255e98c1bed95b8d65a579b1edd0b.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/f44eabb6a4409b9f2c5c2404f88b1959a2bf4e4cf57012df01ac3986c70f7b98.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8a38734d491694c26804db22d07d1ddb9e7373e0a0973775ce6d7313a905ceab.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/52ad129f7fbc7b4e36efac69c865fb0e5930527c2655373f453ce4faa0e1a37e.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/d7aaedd6cc58c3216c9ced819cc3bde5b45c2e65cb0115aa027d2c4cf393085a.jpg)


Shigella spp. 

Clostridium spp. 

Mycoplasma pneumoniae Mycoplasma genitalium Mycoplasma hominis Mycoplasma fermentans 

Ureaplasma 

Chlamydia trachomatis Chlamydia pneumoniae 

Neisseria gonorrhoeae 

Streptococcus pneumoniae Streptococcus pyogenes 

Haemophilus influenzae Haemophilus pararinfluenzae 

Listeria monocytogenes 

Campylobacter jejuni 

Helicobacter pylori 

Staphylococcus aureus Staphylococcus epidermidis 

Legionella pneumophila 

Enterococcus faecalis 


Figure 20.2 Bacterial species susceptible to Solithromycin (CEM-101). Solithromycin is a macrolide of the subclass fluoroketolide, which inhibits translation through its action on 23S rRNA.


specific in their activity have, unfortunately, not been supported for development. This restriction could perhaps be overcome in the future by advances in rapid diagnostics, enabling personalized infection identification and treatment. Second, when key genes have been identified as targets for drug development, small-molecule drugs proved ineffective, even in the short term. Small-molecule interference with enzymes resulted in rapid selection for resistance, which does not make them viable for clinical use either. This limitation may be able to be overcome in the future through design of molecular inhibitors that contact the target enzyme at more than one site, more like current antimicrobials. 

Extensive understanding of bacterial pathogen genes and the antibiotics that have been used against them for decades has led to the development of some novel antibiotics. Unfortunately, three that were introduced in recent years were discontinued due to serious adverse events: Telithromycin; Temafloxacin; and Trovofloxacin. Also introduced in recent years was Fidaxomicin, available specifi cally for Clostridioides difficile colitis, despite issues with antibiotics for single species. Three antibiotics are available for community-acquired pneumonia and acute skin infections: Ceftaroline; Oritavancin; and Telavancin. A further two, Dalbavancin and Tedizolid, are also available for acute skin infections. Each of these faces market pressures from existing antibiotics, which are less expensive, however they provide alternatives when there is resistance to the existing repertoire of antibiotics. There are also several antibiotics in clinical trials. Solithromycin (CEM-101) is a fluoroketolide, a subclass of macrolides acting on the 23S rRNA subunit to inhibit translation. This fluoroketolide inhibits 50S ribosomal subunit formation and causes errors in translation. The structural modifications of Solithromycin increase its ribosomal binding and reduce its likelihood of development of resistance compared to macrolides. It has been demonstrated to act against many bacterial species (Figure 20.2). Zolifl odacin (AZD0914) is a spiropyrimidinetrione topoisomerase inhibitor that inhibits DNA biosynthesis and causes double-strand DNA breaks to accumulate in the bacterial cell. Although the target is similar to fluoroquinolone antibiotics, the mechanism of action of Zoliflodacin is different. It has been shown to act against several bacterial species (Figure 20.3). Gepotidacin (GSK2140944) also inhibits DNA replication like fluoroquinolones, but also via a different mechanism. It has demonstrated antimicrobial activity against some species as well (Figure 20.4). 


Figure 20.3 Bacterial species susceptible to Zoliflodacin (AZD0914). Zoliflodacin inhibits topoisomerase and thus inhibits the biosynthesis of DNA. It is a spiropyrimidinetrione antibiotic.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2b2e667e1cdf80f7aae13bffc365306fcf2f8300af7507db7190550faa06d587.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2836ddd48c00c8706ea08204d743ba87df033c6e5672eeef1b79286be8b22fe1.jpg)



Figure 20.4 Bacterial species susceptible to Gepotidacin (GSK2140944). Gepotidacin inhibits DNA replication.



(a)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8d062c87c462fae4827434d5afd862a3d34fee57e8f022567b6c6891bcfb9c0a.jpg)



(b)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/9c29b5a7c55e13f1b0ba41a69c2ef9c0db0d45962103cab9ceba5e03c718098f.jpg)



Figure 20.5 Sources of antibiotics: bacteria and fungi. Some bacteria, such as Streptomyces coelicolor (a), and fungi, such as Penicillium chrysogenum (b), produce antibiotics as defense mechanisms against other organisms in their environment. In panel (a), the antibiotic undecylprodigiosin is seen as the red areas diffusing into the medium. In panel (b), the spherical droplets of yellow on the surface are penicillin G. In some cases, antibiotics produced by organisms such as these have been exploited by humans, either in their natural form or as derivatives of the natural product. (Photographs from Dr. Jeremy Burgess and Daniela Beckmann, respectively, Science Photo Library.)


## Genomics can aid in the search for new antibiotics

The majority of antibiotics originally came from or were derived from antimicrobial agents produced by bacteria and fungi (Figure 20.5). These agents originally evolved to rid the organisms of competitors in their niche and there are many more undiscovered antimicrobial compounds made by the microbial world. However, most of the bacterial species cannot yet be cultivated in the laboratory because the correct media and growth conditions are not known. Fortunately, metagenomics sequences can reveal the genes within unculturable bacterial and fungal species, including potential new antibiotics. 

Several undertakings have been initiated to isolate bacteria from soil in an attempt to identify bacteria producing novel antimicrobials. These include major research projects as well as school projects. Some focus on simple microbiology techniques, while others also use genome sequencing methods. For example, whole-genome sequencing of Pseudomonas species from around plant roots has been used to identify novel antimicrobials made by these bacteria, which evolved against species in this niche but may be of use in combating human infections. 

Researchers are also exploring unique environments for antibiotic producing bacteria, including those in the Antarctic and Atacama Desert in Chile. These sorts of investigations are also revealing that antibiotic resistance genes have been around far longer than our use of antibiotics. A β-lactamase gene within a metagenomics sequence was isolated from deep-sea sediment dated 10,000 years ago, reinforcing that these genes were present naturally as defenses against the antibiotics produced by other microbes. In addition to studies looking at the age of β-lactamase genes, others have used metagenomics to look at their diversity, discovering that it is much larger than previously believed, which may have implications for clinical control of infectious diseases with β-lactam-based antimicrobials. 

## Some old drugs are getting a new lease of life due to greater depth of understanding

β-Lactam antibiotics, such as penicillin, have been compromised in their usefulness by the acquisition of many bacterial species of β-lactamases conferring resistance. The β-lactam antibiotics are characterized by their ring structure, which is cleaved by the action of the β-lactamase enzyme (Figure 20.6). Understanding the horizontal transfer of the β-lactamase genes and analysis of the types of β-lactamases has led to developments of β-lactamase inhibitors that enable β-lactams to be used. The fir st of these was in the antibiotic Augmentin, released in 1984, which was a combination of Amoxicillin and clavulanic acid, a β-lactamase inhibitor. More recently, research has gone into development of new metallo-β-lactamase inhibitors designed to combat carbapenemresistant Enterobacteriaceae infections. These Gram-negative bacteria express carbapenemase, inactivating last-line antibiotics used against them. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/367e9723e998a9ac95310ac749e35b48821700aa8b67a8622859ad21d2550adb.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1d42e505a6d201042c89f059af369523342e4e90dc97f3d06db15c2ea399e693.jpg)



Figure 20.7 The structure of cephalosporin antibiotics. To overcome β-lactamase inactivation of β-lactam antibiotics, derivatives were created with an altered ring structure, the cephalosporins. Although they retain the β-lactam ring (red), the adjacent ring has an additional carbon. This provided resistance to standard β-lactamases. However, extended-spectrum β-lactamases are able to cleave the cephalosporin ring.



Figure 20.6 The β-lactam ring and its cleavage by β-lactamase enzymes. Characteristic of β-lactam antibiotics such as penicillins is the presence of the β-lactam ring (red). This is the target of the β-lactamase enzyme for the inactivation of this class of antibiotics. β-lactamase enzymes cleave the bond in the ring between the nitrogen and the carbon that is bound to the oxygen.


Two fairly new antibiotics, which are combinations of β-lactamase inhibitors and antibiotics, are being used in the treatment of complicated urinary tract infections and intra-abdominal infections. These are Ceftazidime-avibactam and Ceftolozane-tazobactam. Both antibiotic components of these drugs are thirdgeneration cephalosporins, which would be susceptible to extended-spectrum β-lactamases (ESBLs), enzymes able to cleave the changed ring structure of cephalosporins (Figure 20.7). Cephalosporins are derivatives of β-lactam antibiotics that have changed the characteristic ring structure. Combining them with the inhibitors avibactam or tazobactam provides protection from ESBLs. 

As discussed in Chapter 5, quorum sensing is often important for bacterial pathogenesis. Interfering with bacterial communication can therefore control infectious diseases. Autoinducer-2 is used by both Gram-negative and Grampositive bacteria. It is known that existing drugs interfere with quorum sensing. For example, P. aeruginosa is not killed by azithromycin, but this antibiotic does interfere with P. aeruginosa quorum sensing. Quorum sensing is therefore an avenue for exploration, either through repurposing existing antibiotics or the development of new drugs to interfere with quorum sensing signals to disrupt virulence. 

## Bacterial genomics has led to the development of new vaccines

Genome sequencing of pathogens has made it possible to identify potential vaccine target antigens from sequence data, rather than immunological data. This process, a genome first approach to vaccine discovery, is called reverse vaccinology (see Chapter 11). The fir st licensed vaccine designed in this way targets Neisseria meningitidis. To overcome the inability to target a vaccine against the serogroup B meningococcal capsule, which mimics host antigens, the genome of N. meningitidis serogroup B strain MC58 was sequenced and analyzed to identify potential antigens for development of a vaccine. Following several years of research and clinical trials, a vaccine is now in use that originated with the genome sequencing project and the reverse vaccinology approach (Figure 20.8). 

Investigations based on reverse vaccinology start with the genome sequence. The identified putative surface antigens from the sequence data are cloned and expressed as recombinant proteins. These proteins are then injected into animals, immunizing them to see if the proteins provide protection for the animals against bacterial infection. These experiments suggest that the genomics identified antigen is a promising candidate for vaccine development (see Figure 20.8). 

In the future, reverse vaccinology may look at transcriptomics data to target antigens important for invasive disease, rather than colonization. This strategy would develop vaccines that restrict the bacteria to non-pathogenic lifestyles rather than those that harm the host. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/11aae6b28bcbfc88654d568bedd2a33c0be99bb85687bd1baa8aac2fa4b63d89.jpg)



Figure 20.8 Reverse vaccinology development of a vaccine against Neisseria meningitidis. Starting with the bacteria, DNA is extracted for genome sequencing. The genome sequence data are assembled and annotated, with coding sequences (CDS) being identified. Since a vaccine is concerned with surface-associated proteins and structures, those are focused upon, being expressed and assessed for antigenicity and suitability as vaccine targets by in vivo and in vitro laboratory experiments. Candidates that are demonstrated to be effective undergo clinical trials and approvals before becoming a vaccine.


## Reverse vaccinology is providing leads for several bacterial diseases

Reverse vaccinology is being applied to development of improved vaccines to combat leptospirosis, a zoonotic disease caused by Leptospira species. Zoonotic diseases are those that infect animals but can be transferred to humans as well. There are 15 infectious species of Leptospira, the diversity of which complicates the development of vaccines for animals and humans. Identification of antigens through comparative analysis of genomic data from several Leptospira species has been beneficial in providing leads for investigation. 

Streptococcus agalactiae causes life-threatening infections in newborns, acquired at birth via transmission from the mother. Vaccination could reduce group B streptococcal disease. Eight genome sequences of S. agalactiae from different serotypes were compared to find the surface-associated and secreted proteins. Following expression of recombinant proteins and immunization of mice, four antigens were identified with good protective properties. One of the antigens is encoded as part of the core genome, whereas the other three are part of the accessory genome, being present in some S. agalactiae, but not all. 

A. baumannii causes nosocomial infections, including meningitis and pneumonia. Antimicrobial resistance in this species is a clinical concern, therefore concentration is on vaccine development as a means of infection control. Fourteen genome sequences, including 11 multidrug-resistant strains, were comparatively analyzed to identify vaccine candidate antigens. This strategy found one surface antigen as a potential vaccine candidate. 

Campylobacter jejuni and Campylobacter coli are leading causes of bacterial gastroenteritis. Reduction in poultry colonization would significantly reduce human disease and could potentially be achieved through avian vaccination. Antigens identified by reverse vaccinology were assessed against genomic data for more than 100 Campylobacter strains. Thus 14 candidate vaccine target antigens were selected for further investigation. 

## New drugs are being developed that will contain the virulence of bacteria

With the rise in antibiotic resistance, some researchers have turned to investigation of antivirulence agents as means of infectious disease control. These do not seek to stall bacterial growth like bacteriostatic antibiotics or eradicate bacteria like bactericidal antibiotics (Figure 20.9). Antivirulence agents act against the factors that cause disease and harm by the pathogens. They can work alone or in combination with antibiotics (see Figure 20.9). Often, they are designed against bacterial toxins, reducing tissue damage to the host yet also reducing selective pressures to develop resistance since the antivirulence agent is not impacting the survival of the bacteria. Targeting virulence may enable the host to clear the pathogen. 


(a)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2d28b95c51bf4775fe8c73cb7f7a9ac8ad2ba4f9c842c54247818390fb5d47bf.jpg)



Bacteriostatic



(b)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/278dd3a3c8d9e3bcf1c4dfa9459ca243d27cf2f0978a2dbd7c4e29c6fa9e4616.jpg)



Bactericidal



(c)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/e2219c8a278f7ebd99422834da5e265cc65f745b1dadbf47cbf9960c1efe3983.jpg)



Antivirulence agent



(d)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/6a3ac9b209092fe41354c875d6a7df190fa254ac1d7c17f8f7001c1934d52daf.jpg)



Bacteriostatic and antivirulence



(e)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/1b32ef317e0091a16d3c89ed2ab5803f8f0ca2f2c34d2336c5793fb6faa960da.jpg)



Bactericidal and antivirulence



Figure 20.8 Bacteriostatic, bactericidal, and antivirulence agents can work alone or in combination. Bacteriostatic agents stop the growth of bacteria (panel a) and bactericidal agents kill bacteria (panel b). Antivirulence agents do not act on bacteria directly, but are able to act against factors that cause disease, such as inactivating toxins (purple stars), as shown here (panel c). Antivirulence agents can be combined with bacteriostatic (panel d) or bactericidal (panel e) agents.


In a study published in 2018, researchers in Ohio reported their development of two small-molecule antivirulence agents against the transcription factor AgrA. The AgrA regulator is part of a two-component regulatory system (see Figure 13.17). It is blocked from binding to the promoter responsible for production of bacterial toxin. Homologues of AgrA are present in many toxinproducing Gram-positive pathogens, including methicillin-resistant S. aureus (MRSA), Staphylococcus epidermidis, Streptococcus pyogenes, and Streptococcus pneumoniae. Comparative assessment of genome sequence data made it possible to select the product of the agrA gene to develop the antivirulence agent. These small molecules against AgrA have been shown to work well in mouse models alone and in combination with antibiotics. 

In addition to toxins, antivirulence agents can target bacterial adhesion. Since adhesion to host cells is important for colonization and infection, blocking this step can aid in preventing establishment of infection and promote clearance of the bacteria. For example, uropathogenic E. coli rely on adherence to stay in the urinary tract, where they cause kidney and bladder infections. In the bladder, the E. coli adhesion FimH binds to mannose on host cells; antivirulence agents that disrupt this are under development. When the E. coli cannot bind, they are washed out in the urine stream. Compounds targeting E. coli FmlH, the adhesion responsible for kidney cell adhesion, have also been pursued. 

There have also been efforts to develop antivirulence agents against biofilm development. Infections that are of clinical importance as nosocomial infections, which are hospital-acquired infections, are referred to as ESKAPE pathogens, an acronym for the species Enterococcus faecium, S. aureus, K. pneumoniae, A. baumannii, P. aeruginosa, and Enterobacter species. Chronic biofilms by these species and other pathogens contribute to difficult to treat antimicrobial-resistant infections. Inhibition of biofilms is therefore important in combating infectious diseases, either by preventing biofilm formation or by dispersing established biofilms, or potentially both. Biofilm development proteins LecA and LecB from P. aeruginosa have been targeted for development of antivirulence agents. Unlike AgrA, the antivirulence agents against adhesion proteins FimH and FmlH and against biofilm proteins LecA and LecB are very much species specific, and the infecting organism would need to be identified. However, advances in rapid diagnostics may overcome these limitations (Figure 20.10). 

<table><tr><td>Antivirulence target</td><td>Mechanism of action</td><td>Species</td></tr><tr><td>Toxin</td><td>Blocks toxin binding to host cells</td><td>Various</td></tr><tr><td>AgrA</td><td>Blocking two-component regulatory system</td><td>S. aureusS. epidermidisS. pyogenesS. pneumoniae</td></tr><tr><td>FimH</td><td>Disrupts bacteria binding to bladder cells</td><td>E. coli</td></tr><tr><td>FmlH</td><td>Disrupts bacteria binding to kidney cells</td><td>E. coli</td></tr><tr><td>LecAB</td><td>Disrupts biofilm development</td><td>P. aeruginosa</td></tr></table>


AFigure 20.10 Summary of some of the antivirulence agents in development.


## Monoclonal antibody therapy is useful for a variety of human diseases, including infectious diseases

In recent years, human monoclonal antibodies have been developed for the treatment of cancer, rheumatoid arthritis, Crohn’s disease, asthma, and migraine. Monoclonal antibodies have also been developed against the toxins of important bacterial pathogens. Development of these makes use of the gene sequences and comparative analysis of the diversity of the toxin across the bacterial population in design of the antibody. Building on the success of other therapeutic antibodies, antitoxin antibodies have been developed against C. difficile toxin B, Bacillus anthracis toxin, and S. aureus α-hemolysin. Antibodies are also in development to block secretion of toxins by the bacterial Type 3 Secretion Systems (see Chapter 9). Molecules that bind to and inactivate Shiga toxins Stx1 and Stx2 of Enterohemorrhagic E. coli have been developed as well. Monoclonal antibodies against toxins and secreted proteins would act as antivirulence agents (Figure 20.11), similarly to the small molecules described above. 

## Sequencing changes our understanding of the virulence factors that are important

S. pyogenes, group A Streptococcus, causes pharyngitis, frequently referred to as “strep throat,” and superficial skin infections such as impetigo. It also causes toxic shock syndrome and necrotizing fasciitis. The leading cause of invasive group A streptococcal disease is serotype M1, emm1, although emm89 has also emerged despite its lack of a capsule. As for other bacterial capsules, the group A streptococcal capsule contributes to neutrophil phagocytosis resistance. 

A study in Texas investigated the frequency of S. pyogenes disease by bacteria without capsules, looking at pharyngeal infections, skin and soft-tissue infections, and invasive disease. In this study, it was revealed that in 2016–2017, 50% of all isolates investigated did not have capsules. Where once it was believed the capsule was an essential virulence factor, careful surveillance and study of genetics uncovered that a significant proportion of disease is caused by capsule-negative group A streptococci. Almost 90% of these were from pharyngeal and skin and soft-tissue infections. These results suggest that the capsule is not necessary for this species to cause disease, but that it is unlikely that S. pyogenes without capsule will cause invasive disease, although not impossible. 

## Gene sequencing and genome sequencing improve the resolution of epidemiology of bacterial infectious diseases

Genomics applied to epidemiology, the study of the distribution of diseases, gives a high level of resolution of discrimination between infectious disease isolates. Local epidemiology investigations can be concerned with whether there is an outbreak within a hospital ward, for example, whereas global investigations can be concerned with the origins and distribution of antibacterial resistance markers, among other features. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/14340bfc6a773aab1e9b627c3a0097ed083eca94beae7f02f81b14bff08a77bd.jpg)



Figure 20.11 Monoclonal antibody therapy against infectious diseases. The toxins that have been secreted by this bacterial cell are inactivated by the monoclonal antibodies that have been specifically raised to bind to the toxin. Injection of the patient with the prepared monoclonal antibodies provides the antivirulence agent that protects the patient from the effects of the toxin.



Figure 20.12 Identification of the Listeria monocytogenes contaminated source can stop disease spread. The bacteria can thrive in environmental and food sources such as soil, water, camembert, hot dogs, pâté, and others. Sequencing L. monocytogenes genome data from these sources and from a patient with the disease can identify the source and help contain spread to other individuals, perhaps through recall of contaminated foods.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/54e74c1537e40762c25869036e2f0f65f5c11ef3ef033bf3bddecdf1103be249.jpg)


Molecular epidemiology has been applied to the interesting question of the diseases caused by S. pyogenes, group A streptococci. In the winter months in temperate regions, where people spend time inside, S. pyogenes primarily causes pharyngitis. In summer months and in subtropical and tropical regions, S. pyogenes causes impetigo. Both seasonal occurrence and geography separate the diseases. Genetic analysis has been applied to see if this is reflected in the species population structure, to determine whether pharyngitis and impetigo strains are genetically distinct. Diversity in the sequence of the antiphagocytic M protein gene emm has been shown to correspond to these two disease outcomes. 

Comparative genome analysis of the epidemiology of C. difficile has revealed several aspects of the nature of the disease. Transmission within wards and outbreaks have been confirmed based on genome sequence data. Dissemination of an epidemic strain of C. difficile across continents has been shown, as has the transmission from pigs to humans, all from assessment of the genomic data. 

Genome sequence information from Listeria monocytogenes has been used to develop new typing methods with greater discriminatory power than previous tools. Bacterial isolate subtyping can identify if isolates from contaminated food, environmental samples, and human disease are related, aiding in infection control. Genomics has made a positive contribution in this way to the rapid identification of outbreaks of L. monocytogenes and tracing the contaminated food or environmental source to reduce the number of cases of disease (Figure 20.12). 

## Genome sequencing can improve infection control for surgical site infections

Patients who undergo surgery have a 0.6%–9.6% chance of surgical site infection. They are also at risk of development of nosocomial infections. As mentioned, outbreak detection is largely the same as it has been for about 100 years. Surveillance in the hospital, looking for infections, involves assessing a daily list of patients who test positive for infectious organisms. Catching overlaps in cases of patients with the same infections can be difficult. This can lead to an epidemiological investigation, however traditional typing takes weeks, involves sending samples away to a reference laboratory, and may not be sufficiently discriminatory. 

Instead, bacterial sequencing within the hospital and epidemiological analysis can be used to identify outbreaks more quickly and with greater resolution. For example, the London School of Hygiene and Tropical Medicine has developed Sequence First outbreak detection. When a patient is identified with an infectious organism, it can be sequenced within a day. The sequence data and patient data 

TAtogether make a sample report that is available the morning of the following day. The report, identifying the organism, includes transmission likelihood information for the infectious disease and, coupled with the data from the rest of the hospital sequence information, gives early warning information for outbreaks. This can be expanded to provide data on outbreaks across hospitals, across nations, and across the globe. 

Genome sequencing of methicillin-resistant S. aureus (MRSA) isolates from a special care baby unit has been conducted in the United Kingdom. This validated and expanded upon findings from conventional outbreak investigations that happened in the hospital. There were 12 infants with MRSA within 6 months in 2011 that could not be confirmed with conventional methods to be from an outbreak, however these were confirmed by genome sequencing, which found 26 related MRSA in total. These 26 MRSA included transmission within the special care baby unit, between mothers on the maternity ward, and in the community. It had been noted during conventional outbreak investigations that the special care baby unit outbreak persisted despite there being no obvious transmission chain between patients. This was revealed to be due to carriage by a member of hospital staff, but this was only evident from the sequence data. 

## Horizontal gene transfer between pathogens revealed by sequencing shows worrying trends in evolution

Bacteria of the genus Neisseria are naturally competent for transformation (see Chapter 3) and by preference take up DNA containing the Neisseria DNA uptake sequence (DUS). The DUS is present thousands of times in the genome (see Figure 17.9) and is present in pathogenic N. meningitidis and Neisseria gonorrhoeae and in non-pathogenic Neisseria species. Genetic material therefore horizontally transfers between species, although it has rarely been observed between the two pathogens. This is fortunate considering N. meningitidis can be rapidly fatal within 24 hours and N. gonorrhoeae has genes for multiple types of antibiotic resistance. 

However, a lineage of N. meningitidis has emerged in the United States that has genes recognized by genome sequencing that originated in N. gonorrhoeae. N. meningitidis causes invasive, life-threatening meningitis and septicemia. It can also cause other infections more common to its relative N. gonorrhoeae, including urethritis. There have been some connections between cases of urethritis and meningococcal meningitis, possibly due to oral sex as a mode of transmission. In 2015, in Columbus, Ohio, it was noticed that a quarter of the Neisseria isolated from urethritis were N. meningitidis and not N. gonorrhoeae as might be expected from the isolation site. It has emerged that there is a lineage of N. meningitidis causing many urethritis cases and that this lineage is notable in the absence of the characteristic meningococcal capsule; the capsule locus has a multigene deletion (Figure 20.13). Capsule-defi cient N. meningitidis tend to be isolated from infections at different body sites than those expressing a capsule, which colonize the nasopharynx and cause invasive meningococcal disease. 

N. gonorrhoeae also does not have a capsule (see Figure 20.13). This similarity may contribute to the enhanced mucosal attachment of the N. meningitidis in the urethra. The urethritis N. meningitidis lineage genome sequence data has revealed that it has other features in common with N. gonorrhoeae. It is capable of nitrite dependent anaerobic growth, which is possible through the acquisition of N. gonorrhoeae aniA and norB genes. This anaerobic ability is also likely to contribute to enhanced urethral colonization. 

Most concerning, one isolate of this N. meningitidis lineage has acquired the N. gonorrhoeae sequence of the mtrR promoter and coding sequence. This gene is responsible for the repression of expression of genes encoding an efflux pump that is associated in N. gonorrhoeae with resistance to several antibiotics, including azithromycin. In N. meningitidis, this efflux pump is constitutively expressed, meaning it is not controlled by MtrR repression. This means most 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8591cd76ae3c786fdea7378840f3190c54fa4eea3473db28f156d332df94ac29.jpg)



Figure 20.13 Neisseria meningitidis from the nasopharynx typically has a capsule. N. gonorrhoeae does not have a capsule. There is a lineage of N. meningitidis, typically isolated from the urogenital tract, that has acquired N. gonorrhoeae genes and deleted its capsule locus.


N. meningitidis are also not capable of high-level MtrCDE pump expression through removal of repression as in N. gonorrhoeae. The discovery of these N. gonorrhoeae mtrR sequences in N. meningitidis in the genomic data is a worrying trend, indicating that multidrug resistance traits could be transferred between the pathogens. 

## Genome sequencing is improving our understanding of infections that could impact transplant recovery

Infection following organ transplant is a major concern, particularly if the infection is a result of multidrug-resistant bacteria. There has been a rise in Gramnegative infections in live transplant patients, particularly carbapenem-resistant Enterobacteriaceae. It was found that as many as 67% of liver transplant patients are colonized with multidrug-resistant organisms with many of these developing infections. Through use of genome sequencing, it is better understood that the bacteria are dynamic in their nature. In some cases, patients are colonized prior to surgery, some are infected postoperatively from nosocomial infections, and some develop days after surgery from community-acquired infections. Resolution with genome sequencing can help inform treatments and within-hospital infection control measures. 

## Putting discoveries into practice

This chapter has presented and explored some novel ideas for alternatives to antibiotics and new ideas for controlling infectious diseases. Many of these are being put into practice and are in trials to be used in the near future. Included among these are bacteriophage therapies, which will be explored in the final chapter of this book. Research in the field of infectious disease control is advancing rapidly, motivated by the urgent need to address the growing antimicrobial resistance crisis, which not only impacts the healthcare of humans, but also the agricultural industry and veterinary medicine as well. 

## Key points

New antimicrobials can be revealed through the study of bacterial genomes and understanding the role and function of essential genes and virulence genes. 

Metagenomics can aid in the search for new antibiotics through the identification of genes in bacterial species that cannot yet be cultured in laboratories. 

Pairing of β-lactam antibiotics and cephalosporin antibiotics with inhibitors of β-lactamases and extended-spectrum β-lactamases can overcome some types of antimicrobial resistance. 

Reverse vaccinology has used genomic sequence data as the basis for the development of new vaccines, where antigens are predicted from the genomic information. 

Novel approaches to control infectious diseases include development of antivirulence agents that prevent bacteria from causing disease. 

The resolution of genome sequence data provides details for epidemiology studies that can discriminate between lineages causing different diseases, identify transmission events, and trace the sources of infections so they can be contained. 

TASurveillance of infections within hospitals is important for infection control; application of genome sequencing is improving rapid identification of outbreaks. 

Genome sequencing is changing our understanding of the importance of certain genes in disease, including revealing that the bacterial capsule is not necessary for species like S. pyogenes and N. meningitidis to cause infections. 

## Key terms

Define the following terms introduced in this chapter. Check your answers using the definitions in the Glossary. These terms are also available as Flashcards online. 

<table><tr><td>β-Lactam</td><td>Broad-spectrum antibiotic</td><td>Extended-spectrum β-lactamases</td></tr><tr><td>β-Lactamases</td><td>Cephalosporins</td><td>Narrow-spectrum antibiotic</td></tr><tr><td>Antivirulence agent</td><td>Epidemiology</td><td>Nosocomial infections</td></tr><tr><td>Bactericidal</td><td>ESKAPE pathogens</td><td>Surveillance</td></tr><tr><td>Bacteriostatic</td><td>Etiological agent</td><td>Zoonotic disease</td></tr></table>

## Questions and discussion topics

## Self-study questions

Answer each question using 50–100 words or a table or labeled diagram. Advice on where to find answers to these questions is available online. 

1	 When were most antibiotics discovered? What are some of the reasons for antibiotic resistance to these drugs? 

2	 What is the difference between a narrow-spectrum antibiotic and a broad-spectrum antibiotic? Will there be a different outcome for the patient if both are equally able to kill the bacteria causing disease? 

3	 What are the sources of most antibiotics? Give some examples of natural antibiotic producers. Why do they make antibiotics? 

4	 Have antibiotic resistance genes been around longer than we have been using antibiotics? Explain your answer. 

5	 Give examples of how combining two drugs, an antibiotic and an inhibitor, is being used to tackle antibiotic resistance. How do these drugs work together? 

6	 Briefly explain the processes and principles involved in reverse vaccinology. 

7	 What is the difference between a drug that is an antivirulence agent and one that is an antibiotic? Could they work together? What is the advantage of targeting virulence? 

8	 Name two targets of antivirulence agents that have been under investigation for development. How does blocking these targets aid in controlling infectious diseases? Are these antivirulence agents broad spectrum? 

9 Give some examples of how our understanding of bacterial pathogens has been changed through analysis of bacterial genome sequence data. 

10	 Describe how genome sequencing can be used in epidemiology. 

11	 What does infection surveillance involve in a hospital and how can sequencing be used to help? 

12	 What features of the genus Neisseria facilitate exchange of genes between species? How can genome sequencing clarify the identity of what may appear to be N. gonorrhoeae based on disease symptoms and isolation location, but is actually N. meningitidis? 

## Discussion topics

These topics are presented for discussion in study groups, as part of class discussions, or on your own. These questions go beyond what is directly covered in this part of the book. Use the research literature and other reading to explore these topics in more depth. Tips to help prepare for topic discussions are available online. 

Explore how monoclonal antibodies are being used to tackle issues in human health, specifically those related to a specific infectious disease. Is the infection itself being targeted or is it a toxin or other virulence factor? What other treatments do patients undergoing the monoclonal antibody therapy require? How is their outcome improved through the additional use of the monoclonal antibodies? 

## Online quiz questions

To further self-assess your understanding of the chapter material, please visit the following link, where you can participate in a range of interactive quiz questions: 

2 As mentioned in this chapter, azithromycin does not kill P. aeruginosa, but it does interfere with its quorum sensing. How can azithromycin be exploited as an avenue to combat P. aeruginosa infections through quorum sensing interference? Investigate studies in the research literature that have looked at this specifically or at biofilm and quorum sensing disruption in general. Discuss the advantages of repurposing existing antibiotics, rather than trying to find new antibiotics. 

3 Explore developments in antivirulence drugs or monoclonal antibody therapies. How effective have these been at demonstrating their potential to control infectious diseases? Have there been issues with resistance as there have been with antibiotics? 

www.routledge.com/cw/snyder 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b6a93f86edca62bd613272796fe6f24dbb83aa17a25548c7e453f515ca81703a.jpg)


## Further reading

## Some old drugs are getting a new lease of life due to greater depth of understanding



Azimi S, Klementiev AD, Whiteley M, Diggle SP. Bacterial quorum sensing during infection. Annu Rev Microbiol. 2020; 74: 201–219. 





van Duin D, Bonomo RA. Ceftazidime/avibactam and ceftolozane/tazobactam: Second-generation β-lactam/β- lactamase inhibitor combinations. Clin Infect Dis. 2016; 63(2): 234–241. 



## Bacterial genomics has led to the development of new vaccines



Serruto D, Bottomley MJ, Ram S, Giuliani MM, Rappuoli R. The new multicomponent vaccine against meningococcal serogroup B, 4CMenB: Immunological, functional and structural characterization of the antigens. Vaccine. 2012; 30: B87–B97. 



## Reverse vaccinology is providing leads for several bacterial diseases



Chiang MH, Sung WC, Lien SP, Chen YZ, Lo AFY, Huang JH. Identification of novel vaccine candidates against Acinetobacter baumannii using reverse vaccinology. Hum Vaccines Immunother. 2015; 11: 1065–1073. 





Maione D, Margarit I, Rinaudo CD, Masignani V, Mora M, Scarselli M. Identification of a universal Group B Streptococcus vaccine by multiple genome screen. Science. 2005; 309: 148–150. 





Meunier M, Guyard-Nicodème M, Hirchaud E, Parra A, Chemaly M, Dory D. Identification of novel vaccine candidates against Campylobacter through reverse vaccinology. J Immunol Res. 2016; 2016: 5715790. 



## New drugs are being developed that will contain the virulence of bacteria



Lau WYV, Taylor PK, Brinkman FSL, Lee AHY. Pathogenassociated gene discovery workflows for novel antivirulence therapeutic development. EBioMedicine. 2023; 88: 104429. 





Martínez OF, Duque HM, Franco OL. Peptidomimetics as potential anti-virulence drugs against resistant bacterial pathogens. Front Microbiol. 2022; 13: 831037. 





Parrino B, Schillaci D, Carnevale I, Giovannetti E, Diana P, Cirrincione G, Cascioferro S. Synthetic small molecules as antibiofilm agents in the struggle against antibiotic resistance. Eur J Med Chem. 2019; 161: 154–178. 



## Gene sequencing and genome sequencing improve the resolution of epidemiology of bacterial infectious diseases



Knight DR, Elliott B, Chang BJ, Perkins TT, Riley TV. Diversity and evolution in the genome of Clostridium difficile. Clin Microbiol Rev. 2015; 28(3): 721–741. 



## TAGenome sequencing can improve infection control for surgical site infections

Harris SR, Cartwright EJ, Török ME, Holden MT, Brown NM, Ogilvy-Stuart AL. Whole-genome sequencing for analysis of an outbreak of methicillin-resistant Staphylococcus aureus: A descriptive study. Lancet Infect Dis. 2013; 13(2): 130–136. 

CAKöser CU, Holden MT, Ellington MJ, Cartwright EJ, Brown NM, Ogilvy-Stuart AL. Rapid whole-genome sequencing for investigation of a neonatal MRSA outbreak. N Engl J Med. 2012; 366(24): 2267–2275. 

Peacock SJ, Parkhill J, Brown NM. Changing the paradigm for hospital outbreak detection by leading with genomic surveillance of nosocomial pathogens. Microbiology. 2018; 164(10): 1213–1219. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/ccbf1e5c49acbfaf807a34b37691e04ae537a343ebdf59add8eb71fd04eeb438.jpg)


# Bacteriophages

Chapter 

21 

Bacteriophages are abundant and ubiquitous, their nucleic acids are the most numerous on Earth, and they are prevalent across the globe. They are diverse in their size, shape, and structure, as well as in the organization of the genes in their genome. Bacteriophages are non-motile, relying on sheer numbers and chance to reach their targets on bacterial cells, which is necessary for their replication. 

## Bacteriophages have been studied for just over 100 years

Bacteriophages were first discovered in 1915, by Frederick Twort, who recognized that bacteriophages inhibit bacterial growth. It was 2 years later, in 1917, that Félix D’Hérelle isolated bacteriophages and used them to prevent Salmonella infection of chickens. There are believed to be $1 0 ^ { 3 1 }$ bacteriophages on the planet; that is 10 nonillion, enough for 10 bacteriophages for each bacterial or archaeal cell on Earth. The Earth’s oceans are the main reservoir of bacteriophages. In every milliliter of water in the ocean there are as many as one hundred million (108) bacteriophages. Another major reservoir are the guts of mammals, where each gram of fecal matter can also contain up to 100 million bacteriophages. 

Bacteriophages are classified into the 19 recognized bacteriophage families by the type of genome they possess and the shape of the protein coat particle, called the virion. All bacteriophages have one type of nucleic acid, which can be double-stranded DNA, single-stranded DNA, or RNA. Most bacteriophages that have been identified and characterized contain double-stranded DNA. Only two bacteriophage families have RNA genomes, which is why we tend to discuss DNA genomes of bacteriophages. The few bacteriophages with RNA genomes can contain either single-stranded or double-stranded RNA. Of the remaining 17 families, 15 have double-stranded DNA genomes and two have single-stranded DNA genomes. The virion morphology of bacteriophages is either polyhedral, often icosahedral, forming an isomeric shape, or spiral, forming a helical shape that is filamentous (Figure 21.1). The icosahedral bacteriophage structures sometimes have tails, with or without tail fibers, that are involved in attachment to bacterial cells and delivery of the bacteriophage nucleic acids into the bacterial cell. 

Five bacteriophage families have envelopes around their protein coats, meaning that they are surrounded by a phospholipid membrane derived from the bacterial cell. In this way, these bacteriophages are similar to enveloped viruses that infect eukaryotic cells. There are proteins embedded within bacteriophage encapsulating membranes that are encoded by the bacteriophage genome. The bacterial membrane proteins are excluded from the region of the bacterial membrane that will be used to encapsulate the bacteriophages (Figure 21.2). This process is similar to the formation of animal cell targeting viruses and the deposition of viral proteins in their encapsulating membranes. 

In addition to morphology, bacteriophages are characterized by being lytic or lysogenic. Lytic bacteriophages are actively virulent and will immediately replicate within the bacterial cell. Lysogenic bacteriophages can sometimes integrate their nucleic acids into the bacterial chromosome. The bacteriophage genome is therefore replicated within the bacterial genome each time the bacterial cell divides. As discussed in Chapter 1, the bacteriophage genome integrated in the bacterial genome is called a prophage. Depending upon the nutritional status or stress experienced by the bacterial host cell, there may be a switch from the lysogenic to the lytic phase, which then produces bacteriophage particles again. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/a764d6a2b8a52029ec514ab3a05d3e8dd3a2f3b3459e73d246504681d53e805b.jpg)



Figure 21.1 Basic shapes of bacteriophages. There are two basic morphologies of bacteriophages. The virion is either isomeric, in the shape of a polyhedral, such as an icosahedral, sometimes with a tail and tail fibers, or it is helical, in a spiral filamentous formation.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/b86d24f9fa115f00f5a7a480a3b0719925f9baf25ba17f342a1db1ceb675ac5e.jpg)



Figure 21.2 Bacteriophages with membrane envelopes. Some bacteriophages, such as φ6 shown here, are encapsulated by membrane envelopes, derived from the bacterial cell membrane. During formation (bottom panel), bacteriophage proteins (brown) are integrated into the bacterial membrane, excluding the bacterial surface proteins (red).


## Bacteriophages cannot replicate without bacterial cells

Bacteriophage replication requires bacterial cells because bacteriophages lack their own processes for protein synthesis. Replication of the bacteriophage requires it to adhere to the bacterial surface, penetrate the bacterial cell, replicate its nucleic acids within the bacterial cell, form the new bacteriophage particles, and then release the bacteriophage particles from the cell (Figure 21.3). The attachment and penetration are specific for the bacterial strain or species, dependent on surface structures of the bacteria. 

Adsorption, adhesion of the bacteriophage to the bacterial cell, is the first stage required for bacteriophage replication to occur. In the process of adsorption, bacteriophage proteins bind to receptors on the bacterial cell surface, such as surface proteins including nutrient transporters and outer membrane proteins. In Gram-negative bacteria, some bacteriophages recognize LPS, whereas other bacteriophages recognize the teichoic acids of the Gram-positive cell wall. For bacteriophages with a head and tail structure, adsorption to specific bacterial surface receptors involves the tail fibers. 

Penetration is the process of the bacteriophage nucleic acids entering the bacterial cell. This may be through rupturing the cell wall and injecting the nucleic acids into the cytoplasm or finding another route through the membranes and cell wall, such as through a bacterial porin protein. Early in the lytic cycle, bacteriophage proteins digest the bacterial genome. This shuts off production of bacterial replication and transcription, allowing the bacteriophage free rein over the bacterial systems needed for its own replication. In the eclipse phase, the 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/0bb42cb75fde34007cd359dabfbb9b82b7bd54674b99ecd272af5ef98e9a11ff.jpg)



Figure 21.3 Replication of bacteriophages. Bacteriophages replicate within bacterial cells following attachment and injection of the bacteriophage genome into the cell. Once new bacteriophage particles are made, they are released from the bacterial cell via lysis.


TAnew bacteriophages are made, including the nucleic acids and capsid, the protein coat of the bacteriophage particle. The mature bacteriophages are then formed, and the bacterial cell is lyzed to release them. Replication produces 100–200 new virions that are released upon lysis of the bacterial cell. 

## Some bacteriophages enter latency for a period before replication

Although lytic bacteriophages had been studied for quite some time, it wasn’t until Esther Lederberg described the behavior of lambda (λ) bacteriophages in 1950 that the capacity for a lysogenic phase in some bacteriophages was appreciated. A lysogenic bacteriophage enters latency, meaning that it does not replicate immediately, but becomes quiescent within the bacterial cell (Figure 21.4). The bacteriophage genome is still replicated, but the entire bacteriophage is not. The nucleic acid enters the cell and rather than triggering the digestion of the bacterial DNA, the bacteriophage DNA joins it, integrating into the bacterial chromosome. No bacteriophage capsid proteins are made. The bacteriophage genome within the bacterial genome has become a prophage and is replicated as the chromosome is replicated, being copied into each daughter cell. Bacteria containing prophage are referred to as lysogens. This latent state can be interrupted, triggering the initiation of replication of the bacteriophage and a lytic cycle. This can occur spontaneously or be induced by UV radiation including sunlight, by antibiotics, by alkylating agents, and by cellular stress. 

There are also intermediate types of bacteriophage infection that are neither lytic nor lysogenic, although these are perhaps less common. For example, chronic infections result in bacteriophages budding from the bacterial cell, rather than lysis (Figure 21.5). Pseudolysogenic infections fail to properly integrate into the chromosome and either segregate out from one daughter cell at each bacterial division or enter lytic replication of bacteriophages (see Figure 21.5). In pseudolysogeny, the bacteriophage fails to either replicate in a lytic cycle or integrate as a prophage in a lysogenic cycle. Instead, the bacteriophage nucleic acids remain extrachromosomal. Ultimately, conditions within the bacterial cell enable the lytic or lysogenic cycles to occur, or the bacteriophage nucleic acids are lost. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/2fd231e2038eea27f175be7dac8d109436f91afb50aac1b308dc4beafd829596.jpg)



Figure 21.4 Lysogenic bacteriophages. Lysogenic bacteriophages integrate their nucleic acids into the bacterial chromosome.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/eecf508ad0c2c68f24f92f88405e1cb622a3506cf620ef129044d02269034cef.jpg)



Figure 21.5 Chronic and pseudolysogenic bacteriophage infections. Chronic bacteriophage infections are similar to lytic infections, however the bacterial cells do not lyse. Instead, the bacteriophages bud from the bacterial membranes and leave the bacteria intact. Pseudolysogenic infections do not integrate into the chromosome, therefore the bacteriophage nucleic acids do not replicate with the bacterial DNA and do not segregate into daughter cells upon division, as they would in lysogens.


![image](https://cdn-mineru.openxlab.org.cn/result/2026-06-13/65cfce1f-fb28-498b-abfd-21399901f9ea/8e53bea1267f278dbf0246a3c5ece9fa7e1004dcab8665b984ca45676f82ea5a.jpg)


Integration and excision of bacteriophage DNA into the bacterial chromosome rely on both bacterial and bacteriophage factors. Bacteriophage DNA, such as λ described in more detail later, circularizes upon entry into the cell. The attP site on the circular bacteriophage DNA and attB on the circular bacterial DNA recombine, catalyzed by the bacteriophage protein Int, an integrase, and bacterial protein IHF, integration host factor (see Chapter 5). This recombination process forms attL and attR at either end of the integrated prophage (Figure 21.6). Upon induction of lysis, Int is again involved, along with Xis, a bacteriophage excision protein, which together remove the prophage and reform attB in the bacterial chromosome. This integration and excision system has been exploited in the development of cloning systems, such as Gateway, as discussed in Chapter 18. 

Figure 21.6 Integration and excision of the bacteriophage genome. To generate the prophage, the bacteriophage genome enters the bacterial cell cytoplasm as linear DNA, which then circularizes. The circular bacteriophage genome recombines with the bacterial genome at the attP and attB sites, respectively. Integration requires the bacteriophage Int and bacterial IHF proteins. Excision needs the additional Xis bacteriophage protein and reforms attP and attB from the attL and attR sequences that flank the prophage. 