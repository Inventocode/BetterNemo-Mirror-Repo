.class Lcom/codemao/creativestore/presenter/CreateUtils$23;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->reloadBcm(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field final synthetic val$copyImgDict:Lcom/codemao/creativestore/bean/UserImgDictVO;

.field final synthetic val$mode:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;ILcom/codemao/creativestore/bean/UserImgDictVO;I)V
    .registers 5

    .line 3158
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->val$type:I

    iput-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->val$copyImgDict:Lcom/codemao/creativestore/bean/UserImgDictVO;

    iput p4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .line 3161
    iget v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3162
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->val$copyImgDict:Lcom/codemao/creativestore/bean/UserImgDictVO;

    iget v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->val$mode:I

    invoke-static {v0, v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2300(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/UserImgDictVO;I)V

    .line 3164
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->onBeforeReloadBcm()V

    .line 3165
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$23;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v0

    new-instance v2, Lcom/codemao/creativestore/presenter/CreateUtils$23$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$23$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$23;)V

    const-string v3, "RESET_ALL_STATE"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method
