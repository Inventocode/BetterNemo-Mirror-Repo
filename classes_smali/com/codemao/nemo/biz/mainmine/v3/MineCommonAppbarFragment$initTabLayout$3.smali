.class final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MineCommonAppbarFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initTabLayout(Lcom/google/android/material/tabs/TabLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        "Landroid/content/Intent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/tabs/TabLayout;",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 203
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;->invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    const-string p3, "action"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_26

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p1, p4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 206
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->tabCheck(I)V

    :cond_26
    return-void
.end method
