.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;
.super Ljava/lang/Object;
.source "MineCommonAppbarFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initTabLayout(Lcom/google/android/material/tabs/TabLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "mine_tab_change"

    invoke-virtual {v0, v2, v1}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabSelectedListener："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tablayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->access$changeTabStyle(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Lcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method
