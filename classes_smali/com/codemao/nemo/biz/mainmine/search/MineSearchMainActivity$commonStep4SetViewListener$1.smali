.class final Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineSearchMainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->commonStep4SetViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 76
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result p1

    if-ne p1, v1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_2e

    .line 78
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_53

    .line 79
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result p1

    if-ne p1, v1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    if-eqz v1, :cond_53

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;->this$0:Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_53
    :goto_53
    return-void
.end method
