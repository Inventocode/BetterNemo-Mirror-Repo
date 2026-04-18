.class Ljxl/biff/formula/Divide;
.super Ljxl/biff/formula/BinaryOperator;
.source "Divide.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljxl/biff/formula/BinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method getPrecedence()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    const-string v0, "/"

    return-object v0
.end method

.method getToken()Ljxl/biff/formula/Token;
    .registers 2

    .line 51
    sget-object v0, Ljxl/biff/formula/Token;->DIVIDE:Ljxl/biff/formula/Token;

    return-object v0
.end method
