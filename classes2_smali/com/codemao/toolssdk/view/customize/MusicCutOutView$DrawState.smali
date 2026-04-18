.class public final enum Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;
.super Ljava/lang/Enum;
.source "MusicCutOutView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/view/customize/MusicCutOutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

.field public static final enum CollectionState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

.field public static final enum CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

.field public static final enum PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    sget-object v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CollectionState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 494
    new-instance v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const-string v1, "CollectionState"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CollectionState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    new-instance v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const-string v1, "CutoutState"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    new-instance v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const-string v1, "PlayingState"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    invoke-static {}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->$values()[Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->$VALUES:[Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;
    .registers 2

    const-class v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;
    .registers 1

    sget-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->$VALUES:[Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    return-object v0
.end method
