.class Lcom/codemao/nemo/util/UserLevelupHelper$SingletonInner;
.super Ljava/lang/Object;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInner"
.end annotation


# static fields
.field private static singletonStaticInner:Lcom/codemao/nemo/util/UserLevelupHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 631
    new-instance v0, Lcom/codemao/nemo/util/UserLevelupHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper$1;)V

    sput-object v0, Lcom/codemao/nemo/util/UserLevelupHelper$SingletonInner;->singletonStaticInner:Lcom/codemao/nemo/util/UserLevelupHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/nemo/util/UserLevelupHelper;
    .registers 1

    .line 630
    sget-object v0, Lcom/codemao/nemo/util/UserLevelupHelper$SingletonInner;->singletonStaticInner:Lcom/codemao/nemo/util/UserLevelupHelper;

    return-object v0
.end method
