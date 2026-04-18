.class public Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;
.super Ljava/lang/Object;
.source "RecommendViewModel.kt"


# instance fields
.field private final type:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;)V
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    return-void
.end method


# virtual methods
.method public final getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    return-object v0
.end method
