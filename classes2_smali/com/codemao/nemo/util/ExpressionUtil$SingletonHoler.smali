.class Lcom/codemao/nemo/util/ExpressionUtil$SingletonHoler;
.super Ljava/lang/Object;
.source "ExpressionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/ExpressionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHoler"
.end annotation


# static fields
.field private static instance:Lcom/codemao/nemo/util/ExpressionUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/ExpressionUtil;-><init>(Lcom/codemao/nemo/util/ExpressionUtil$1;)V

    sput-object v0, Lcom/codemao/nemo/util/ExpressionUtil$SingletonHoler;->instance:Lcom/codemao/nemo/util/ExpressionUtil;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/nemo/util/ExpressionUtil;
    .registers 1

    .line 22
    sget-object v0, Lcom/codemao/nemo/util/ExpressionUtil$SingletonHoler;->instance:Lcom/codemao/nemo/util/ExpressionUtil;

    return-object v0
.end method
