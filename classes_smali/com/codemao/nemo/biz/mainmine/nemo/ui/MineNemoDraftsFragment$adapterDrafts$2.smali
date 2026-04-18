.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
        "Lcom/codemao/nemo/bean/NemoWorkListItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v7, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    const-class v1, Lcom/codemao/nemo/bean/NemoWorkListItem;

    const v2, 0x7f0d01d4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;-><init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncDifferConfig;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 129
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$adapterDrafts$2;->invoke()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    return-object v0
.end method
