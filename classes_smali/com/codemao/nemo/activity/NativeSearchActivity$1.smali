.class Lcom/codemao/nemo/activity/NativeSearchActivity$1;
.super Ljava/lang/Object;
.source "NativeSearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/NativeSearchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/NativeSearchActivity;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 3

    if-nez p1, :cond_1d

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/NativeSearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NativeSearchActivity;->access$000(Lcom/codemao/nemo/activity/NativeSearchActivity;)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/NativeSearchActivity;->access$000(Lcom/codemao/nemo/activity/NativeSearchActivity;)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->scrollToTop()V

    :cond_1d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/NativeSearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v0, :cond_3b

    iget-object p1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NativeSearchActivity;->access$100(Lcom/codemao/nemo/activity/NativeSearchActivity;)Lcom/codemao/nemo/fragment/PublishSearchFragment;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/NativeSearchActivity;->access$100(Lcom/codemao/nemo/activity/NativeSearchActivity;)Lcom/codemao/nemo/fragment/PublishSearchFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->scrollToTop()V

    :cond_3b
    return-void
.end method
