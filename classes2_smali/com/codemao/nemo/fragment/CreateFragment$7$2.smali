.class Lcom/codemao/nemo/fragment/CreateFragment$7$2;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$7;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 5

    .line 914
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 915
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x1

    iput v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x4

    .line 916
    iput v2, p1, Landroid/os/Message;->what:I

    .line 917
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 918
    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 919
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    invoke-direct {v0, v2, v1}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5

    const-string v0, "40101005"

    .line 870
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 871
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto/16 :goto_98

    :cond_13
    const-string v0, "40101001"

    .line 873
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    if-eqz v2, :cond_42

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 875
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 876
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "作品id丢失，请重新下载发布作品"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 877
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 878
    iput-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    goto :goto_55

    :cond_42
    const-string v0, "40100001"

    .line 879
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 880
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 881
    iput-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    const/4 v0, 0x0

    .line 882
    iput-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 885
    :cond_55
    :goto_55
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 886
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x1

    iput v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x4

    .line 887
    iput v2, p1, Landroid/os/Message;->what:I

    .line 888
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 889
    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    if-gez p1, :cond_86

    .line 891
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_98

    .line 893
    :cond_86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    invoke-direct {v0, v2, v1}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_98
    return-void
.end method

.method public onIlleagal()V
    .registers 5

    .line 900
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 901
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v3, 0x1

    iput v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v3, 0x4

    .line 902
    iput v3, v0, Landroid/os/Message;->what:I

    .line 903
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 904
    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    if-gez v0, :cond_31

    .line 906
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_43

    .line 908
    :cond_31
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v3, v2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, v2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_43
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 852
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    const/4 p1, 0x2

    .line 853
    iput p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 854
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 p3, 0x3

    .line 855
    iput p3, p2, Landroid/os/Message;->what:I

    .line 856
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v0, p3, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 857
    iget-object p3, p3, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 858
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    if-gez p2, :cond_37

    .line 859
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p3, v0}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_49

    .line 861
    :cond_37
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    invoke-direct {p3, v1, v0}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 863
    :goto_49
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object p3, p2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget p3, p3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne p3, p1, :cond_5c

    .line 864
    iget-object p1, p2, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "更新成功"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_5c
    return-void
.end method
