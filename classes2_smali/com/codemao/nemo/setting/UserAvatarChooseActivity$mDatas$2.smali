.class final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserAvatarChooseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;

    invoke-direct {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;->INSTANCE:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;

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

    .line 89
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
