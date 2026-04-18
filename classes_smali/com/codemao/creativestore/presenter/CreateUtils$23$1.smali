.class Lcom/codemao/creativestore/presenter/CreateUtils$23$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$23;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$23;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$23;)V
    .registers 2

    .line 3165
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 3

    .line 3168
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$23;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$23;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->loadBcm(Z)V

    return-void
.end method
