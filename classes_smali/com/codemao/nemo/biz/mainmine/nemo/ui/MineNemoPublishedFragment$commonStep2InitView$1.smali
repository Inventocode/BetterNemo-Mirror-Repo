.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoPublishedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 80
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;I)V
    .registers 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f0a019c

    if-eq p3, p1, :cond_6e

    const p1, 0x7f0a0717

    if-eq p3, p1, :cond_15

    goto :goto_84

    .line 83
    :cond_15
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 87
    :cond_2b
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    new-instance p3, Lcom/codemao/nemo/bean/WorkShareCompatData;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/codemao/nemo/bean/WorkShareCompatData;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 92
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const-string p2, "data"

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "share_work_no_upload"

    .line 96
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_84

    .line 102
    :cond_6e
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getId()J

    move-result-wide v1

    .line 104
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "我的"

    const-string v5, ""

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    return-void
.end method
