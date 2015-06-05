#!/usr/bin/env perl

use Dancer;
use Catmandu;
use Dancer::Plugin::Catmandu::OAI;

Catmandu->load;
Catmandu->config;

oai_provider '/oai';

get '/check' => sub {
  return "I'm running fine!";
};

dance;
