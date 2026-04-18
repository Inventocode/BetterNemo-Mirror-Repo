.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep2InitView$2;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MineKnMainV3Fragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fragments:[Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;[Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 3

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep2InitView$2;->$fragments:[Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    .line 151
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep2InitView$2;->$fragments:[Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep2InitView$2;->$fragments:[Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    array-length v0, v0

    return v0
.end method
