(**
 * Copyright (c) 2016, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "hack" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)
module type DeclarationParserType = sig
  type t
  val make : ?hhvm_compat_mode:bool
    -> Full_fidelity_minimal_lexer.t
    -> Full_fidelity_syntax_error.t list
    -> Full_fidelity_parser_context.WithToken(Full_fidelity_minimal_token).t
    -> t
  val lexer : t -> Full_fidelity_minimal_lexer.t
  val errors : t -> Full_fidelity_syntax_error.t list
  val parse_script : t -> t * Full_fidelity_minimal_syntax.t
  val parse_function : t -> t * Full_fidelity_minimal_syntax.t
  val parse_parameter_list_opt : t -> t * Full_fidelity_minimal_syntax.t *
    Full_fidelity_minimal_syntax.t * Full_fidelity_minimal_syntax.t
  val parse_classish_declaration : t ->
    Full_fidelity_minimal_syntax.t ->
    t * Full_fidelity_minimal_syntax.t
end
