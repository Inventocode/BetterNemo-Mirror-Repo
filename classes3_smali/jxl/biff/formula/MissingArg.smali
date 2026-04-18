.class Ljxl/biff/formula/MissingArg;
.super Ljxl/biff/formula/Operand;
.source "MissingArg.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 55
    sget-object v1, Ljxl/biff/formula/Token;->MISSING_ARG:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 2

    return-void
.end method

.method public read([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
