.class public Lmf/org/apache/xerces/parsers/DTDConfiguration;
.super Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.source "DTDConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

.field protected fParseInProgress:Z

.field protected fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string/jumbo v0, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setFeature(Ljava/lang/String;Z)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/namespace-binder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "http://apache.org/xml/properties/locale"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    iput-object p2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    instance-of v0, v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDTDProcessor()Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    if-nez v0, :cond_4

    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDTDValidator()Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-nez v0, :cond_5

    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createNamespaceBinder()Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    if-nez v0, :cond_6

    :goto_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-nez v0, :cond_7

    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_8

    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    return-void

    :cond_1
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    instance-of v0, v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/namespace-binder"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    new-instance v0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "validation/dynamic"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_7

    :cond_2
    const-string/jumbo v1, "validation/default-attribute-values"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_8

    :cond_3
    const-string/jumbo v1, "validation/validate-content-models"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_9

    :cond_4
    const-string/jumbo v1, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_a

    :cond_5
    const-string/jumbo v1, "nonvalidating/load-external-dtd"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_b

    :cond_6
    const-string/jumbo v1, "validation/validate-datatypes"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "validation/validate-datatypes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v1, "validation/dynamic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_8
    const-string/jumbo v1, "validation/default-attribute-values"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_9
    const-string/jumbo v1, "validation/validate-content-models"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_a
    const-string/jumbo v1, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_b
    const-string/jumbo v1, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "internal/dtd-scanner"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "internal/dtd-scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configureDTDPipeline()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/dtd-processor"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    goto :goto_1
.end method

.method protected configurePipeline()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->configureDTDPipeline()V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected createDTDProcessor()Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    return-object v0
.end method

.method protected createDTDScanner()Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    return-object v0
.end method

.method protected createDTDValidator()Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    return-object v0
.end method

.method protected createDatatypeValidatorFactory()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    return-object v0
.end method

.method protected createEntityManager()Lmf/org/apache/xerces/impl/XMLEntityManager;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    return-object v0
.end method

.method protected createErrorReporter()Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    return-object v0
.end method

.method protected createNamespaceBinder()Lmf/org/apache/xerces/impl/XMLNamespaceBinder;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;-><init>()V

    return-object v0
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->cleanup()V

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    const-string/jumbo v1, "FWK005 parse may not be called while parsing."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->cleanup()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-nez v0, :cond_0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result v0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0

    :catch_6
    move-exception v0

    throw v0

    :catch_7
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    goto :goto_0
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method
