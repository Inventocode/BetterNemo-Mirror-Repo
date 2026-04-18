.class Lcom/codemao/creativestore/presenter/CreateUtils$25;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->cacheCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 3248
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$25;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3251
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$25;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$25$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$25$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$25;)V

    const-string v2, "SCREEN_SHOT_THEATRE"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method
