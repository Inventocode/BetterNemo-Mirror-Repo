.class public final Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;
.super Ljava/lang/Object;
.source "BeginnerRecommendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;
    .registers 2

    .line 44
    new-instance v0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;-><init>()V

    return-object v0
.end method
