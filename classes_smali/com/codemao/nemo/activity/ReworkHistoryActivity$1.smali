.class Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;
.super Ljava/lang/Object;
.source "ReworkHistoryActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ReworkHistoryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 6

    .line 100
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 102
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge p2, v0, :cond_40

    .line 104
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_22

    .line 105
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x2400

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 107
    :cond_22
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->viewOpen:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->viewClose:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0804ab

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 110
    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    const/4 p2, 0x1

    const v0, 0x7f060193

    invoke-static {p1, p2, v0}, Lcom/codemao/nemo/util/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    goto :goto_6d

    .line 112
    :cond_40
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->viewOpen:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->viewClose:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x500

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 115
    iget-object p2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06003d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_6d
    return-void
.end method
