.class Lcom/codemao/nemo/delegates/CloudItemDelegate$4;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/CloudData;

.field final synthetic val$datas:Ljava/util/List;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/codemao/nemo/bean/CloudData;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;ILjava/util/List;)V
    .registers 6

    .line 181
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iput-object p3, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput p4, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    iput-object p5, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$datas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 185
    const-class v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_12a

    goto/16 :goto_128

    .line 253
    :sswitch_c
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeOpenAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 254
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/event/ViewHolderEV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/codemao/nemo/event/ViewHolderEV;-><init>(Ljava/lang/String;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_128

    :sswitch_27
    const-string p1, "云端作品页-点击删除云端作品"

    .line 263
    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 268
    :cond_42
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 269
    iget p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_128

    .line 270
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$datas:Ljava/util/List;

    iget v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 271
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$300(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    iget v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 272
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$300(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    iget v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    iget-object v3, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 273
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/codemao/nemo/event/CloudDetEV;

    iget v3, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    iget-object v4, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/codemao/nemo/event/CloudDetEV;-><init>(II)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 274
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/codemao/nemo/event/ViewHolderEV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/codemao/nemo/event/ViewHolderEV;-><init>(Ljava/lang/String;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$400(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Lcom/codemao/nemo/retrofit/api/CloudService;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iget-wide v0, v0, Lcom/codemao/nemo/bean/CloudData;->work_id:J

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/retrofit/api/CloudService;->deleteCloudWorks(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 276
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$2;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate$4;)V

    .line 277
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_128

    .line 258
    :sswitch_bd
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 259
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/codemao/nemo/event/ViewHolderEV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/codemao/nemo/event/ViewHolderEV;-><init>(Ljava/lang/String;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_128

    .line 187
    :sswitch_d5
    sget-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz p1, :cond_e6

    .line 188
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1202e8

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 192
    :cond_e6
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_fc

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_fc
    const-string p1, "云端作品页-点击下载云端作品"

    .line 196
    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iget-object p1, p1, Lcom/codemao/nemo/bean/CloudData;->bcm_version:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->showDownloadAppDialog(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_112

    return-void

    :cond_112
    const/4 p1, 0x1

    .line 201
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iput p1, v0, Lcom/codemao/nemo/bean/CloudData;->downloadStatus:I

    .line 204
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadStartUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 206
    new-instance p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate$4;)V

    invoke-static {p1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    :cond_128
    :goto_128
    return-void

    nop

    :sswitch_data_12a
    .sparse-switch
        0x7f0a01f3 -> :sswitch_d5
        0x7f0a05f7 -> :sswitch_bd
        0x7f0a05f9 -> :sswitch_27
        0x7f0a05fc -> :sswitch_c
    .end sparse-switch
.end method
