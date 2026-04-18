.class final Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserAvatarTitleDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;

    invoke-direct {v0}, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;->INSTANCE:Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .registers 2

    .line 19
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x41000000  # 8.0f

    goto :goto_b

    :cond_9
    const/high16 v0, 0x41a00000  # 20.0f

    :goto_b
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate$mStartSpace$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
