.class Lcom/lxj/xpopup/impl/AttachListPopupView$2;
.super Lcom/lxj/easyadapter/MultiItemTypeAdapter$SimpleOnItemClickListener;
.source "AttachListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/AttachListPopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

.field final synthetic val$adapter:Lcom/lxj/easyadapter/EasyAdapter;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Lcom/lxj/easyadapter/EasyAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adapter"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iput-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->val$adapter:Lcom/lxj/easyadapter/EasyAdapter;

    invoke-direct {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$SimpleOnItemClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "holder",
            "position"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-static {p1}, Lcom/lxj/xpopup/impl/AttachListPopupView;->access$000(Lcom/lxj/xpopup/impl/AttachListPopupView;)Lcom/lxj/xpopup/interfaces/OnSelectListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 86
    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-static {p1}, Lcom/lxj/xpopup/impl/AttachListPopupView;->access$000(Lcom/lxj/xpopup/impl/AttachListPopupView;)Lcom/lxj/xpopup/interfaces/OnSelectListener;

    move-result-object p1

    iget-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->val$adapter:Lcom/lxj/easyadapter/EasyAdapter;

    invoke-virtual {p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/lxj/xpopup/interfaces/OnSelectListener;->onSelect(ILjava/lang/String;)V

    .line 88
    :cond_1d
    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->autoDismiss:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$2;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_2e
    return-void
.end method
