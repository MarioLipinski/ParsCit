package SectLabel::Config;

use File::Spec;

$algorithmName		= "SectLabel";
$algorithmVersion	= "110505";

###
# Tr2crfpp
# Paths relative to SectLabel root dir ($FindBin::Bin/..)
###
$tmpDir			= "tmp";
$dictFile		= "resources/parsCitDict.txt";
$funcFile		= "resources/sectLabel/funcWord";

$crf_test = $ENV{'CRFPP_HOME'} ? File::Spec->catfile(($ENV{'CRFPP_HOME'}, 'bin'), 'crf_test') : File::Spec->catfile(('crfpp'), 'crf_test');

$modelFile		= File::Spec->catfile(('resources', 'sectLabel'), 'sectLabel.model');
$modelXmlFile	= File::Spec->catfile(('resources', 'sectLabel'), 'sectLabel.modelXml.v2');
$configFile		= File::Spec->catfile(('resources', 'sectLabel'), 'sectLabel.config');
$configXmlFile	= File::Spec->catfile(('resources', 'sectLabel'), 'sectLabel.configXml');

$autFile		= File::Spec->catfile(('resources', 'sectLabel'), 'author.model');
$affFile		= File::Spec->catfile(('resources', 'sectLabel'), 'affiliation.model');
$matFile		= File::Spec->catfile(('resources', 'sectLabel'), 'aamatch.model');

###
# Thang v100401: note the keyword feature and configs below are not currently 
# used due to insufficient data list of tags trained in sectLabel, will be used 
# by bin/keywordGen.pl and lib/SectLabel/Tr2crfpp.pm those with value 0 do not 
# have frequent keyword features
###
%hash =	(
		# These are mostly for the header part
	 	'title'			=> 0,
	 	'address'		=> 0,
	 	'affiliation'	=> 1,
	 	'keyword'		=> 0, #1,
	 	'note'			=> 1, #1,
	 	'copyright'		=> 1, #1,
	 	'category'		=> 0, #1,
	 	'reference'		=> 1,
		
		'author'		=> 0, #1,
		'email'			=> 0,
		'page'			=> 0,

		'sectionHeader'			=> 1,
	 	'subsectionHeader'		=> 0,
	 	'subsubsectionHeader'	=> 0,

		'bodyText'		=> 0,
		'footnote'		=> 0,
		'figureCaption'	=> 0,
		'tableCaption'	=> 0,
		# Expect some beginning symbol to be the influential keyword
		'listItem'		=> 0, 
		'figure'		=> 0,
	 	'table'			=> 0,
	 	'equation'		=> 0,
		'construct'		=> 0,

#		'program'		=> 0,
#	 	'definition'	=> 0,
#	 	'theorem'		=> 0,
#	 	'proposition'	=> 0,
#	 	'algorithm'		=> 0,
#	 	'corollary'		=> 1,
#	 	'example'		=> 1,
#	 	'experiment'	=> 1,
#	 	'lemma'			=> 1,
#	 	'property'		=> 1,
#
#	 	'abstract'			=> 1,
#	 	'abstractHeader'	=> 1,
#	 	'intro'				=> 1,
#	 	'introHeader'		=> 1,
#	 	'relatedWork'		=> 1,
#	 	'relatedWorkHeader'	=> 1,
#	 	'conclusion'		=> 1,
#	 	'conclusionHeader'	=> 1,
#	 	'acknowledge'		=> 1,
#	 	'acknowledgeHeader'	=> 1,
#	 	'referenceHeader'	=> 1,
		);

$tags = \%hash;

1;
