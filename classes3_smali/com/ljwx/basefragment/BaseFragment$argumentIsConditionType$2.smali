.class final Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/basefragment/BaseFragment;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;

    invoke-direct {v0}, Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;-><init>()V

    sput-object v0, Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;->INSTANCE:Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
