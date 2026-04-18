.class interface abstract Ljxl/biff/formula/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# virtual methods
.method public abstract getBytes()[B
.end method

.method public abstract getFormula()Ljava/lang/String;
.end method

.method public abstract parse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation
.end method
