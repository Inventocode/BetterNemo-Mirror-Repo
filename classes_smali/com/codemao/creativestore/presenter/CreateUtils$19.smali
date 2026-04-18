.class Lcom/codemao/creativestore/presenter/CreateUtils$19;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->getFinalXmLInfo(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
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
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field final synthetic val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

.field final synthetic val$saveCover:Z


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 4

    .line 2835
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput-boolean p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveCover:Z

    iput-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 6

    .line 2840
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p1, 0x1

    .line 2845
    :goto_8
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setValid(Z)V

    .line 2846
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$19;)V

    const-string v2, "REQUEST_ALL_SAVE_DATA"

    const-string v3, ""

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method
