.class Ljxl/biff/formula/CellReferenceError;
.super Ljxl/biff/formula/Operand;
.source "CellReferenceError.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Ljxl/biff/formula/CellReferenceError;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 73
    sget-object v1, Ljxl/biff/formula/Token;->REFERR:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 3

    .line 62
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->REF:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public read([BI)I
    .registers 3

    const/4 p1, 0x4

    return p1
.end method
