.class public final Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;
.super Ljava/lang/Object;
.source "WorkListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/fragment/WorkListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/codemao/toolssdk/fragment/WorkListFragment;
    .registers 2

    .line 28
    new-instance v0, Lcom/codemao/toolssdk/fragment/WorkListFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;-><init>()V

    return-object v0
.end method
