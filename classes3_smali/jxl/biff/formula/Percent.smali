.class Ljxl/biff/formula/Percent;
.super Ljxl/biff/formula/UnaryOperator;
.source "Percent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/UnaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method getPrecedence()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 4

    .line 41
    invoke-virtual {p0}, Ljxl/biff/formula/Operator;->getOperands()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 43
    invoke-virtual {p0}, Ljxl/biff/formula/Percent;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    const-string v0, "%"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .registers 2

    .line 64
    sget-object v0, Ljxl/biff/formula/Token;->PERCENT:Ljxl/biff/formula/Token;

    return-object v0
.end method
