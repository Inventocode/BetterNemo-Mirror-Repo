.class final enum Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;
.super Ljava/lang/Enum;
.source "CutOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/view/CutOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DrawPathOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

.field public static final enum first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

.field public static final enum last:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

.field public static final enum none:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 41
    new-instance v0, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    const-string v1, "first"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    .line 42
    new-instance v1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    const-string v3, "last"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->last:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    .line 43
    new-instance v3, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    const-string v5, "none"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->none:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->$VALUES:[Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;
    .registers 2

    .line 40
    const-class v0, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;
    .registers 1

    .line 40
    sget-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->$VALUES:[Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    invoke-virtual {v0}, [Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    return-object v0
.end method
