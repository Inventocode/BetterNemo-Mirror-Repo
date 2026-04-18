.class Lcom/codemao/nemo/fragment/MineFragment$13;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/fragment/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$13;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$13;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/MineFragment;->access$1002(Lcom/codemao/nemo/fragment/MineFragment;I)I

    return-void
.end method
