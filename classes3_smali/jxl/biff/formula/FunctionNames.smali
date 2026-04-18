.class public Ljxl/biff/formula/FunctionNames;
.super Ljava/lang/Object;
.source "FunctionNames.java"


# instance fields
.field private functions:Ljava/util/HashMap;

.field private names:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Ljxl/biff/formula/FunctionNames;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "functions"

    .line 59
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    .line 60
    invoke-static {}, Ljxl/biff/formula/Function;->getFunctions()[Ljxl/biff/formula/Function;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ljxl/biff/formula/FunctionNames;->names:Ljava/util/HashMap;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ljxl/biff/formula/FunctionNames;->functions:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 68
    :goto_1e
    array-length v2, v0

    if-ge v1, v2, :cond_42

    .line 70
    aget-object v2, v0, v1

    .line 71
    invoke-virtual {v2}, Ljxl/biff/formula/Function;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {p1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    if-eqz v3, :cond_3f

    .line 77
    iget-object v4, p0, Ljxl/biff/formula/FunctionNames;->names:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v4, p0, Ljxl/biff/formula/FunctionNames;->functions:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_42
    return-void
.end method


# virtual methods
.method getFunction(Ljava/lang/String;)Ljxl/biff/formula/Function;
    .registers 3

    .line 91
    iget-object v0, p0, Ljxl/biff/formula/FunctionNames;->functions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/Function;

    return-object p1
.end method

.method getName(Ljxl/biff/formula/Function;)Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Ljxl/biff/formula/FunctionNames;->names:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
