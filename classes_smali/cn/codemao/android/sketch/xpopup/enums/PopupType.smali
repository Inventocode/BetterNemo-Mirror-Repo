.class public final enum Lcn/codemao/android/sketch/xpopup/enums/PopupType;
.super Ljava/lang/Enum;
.source "PopupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/sketch/xpopup/enums/PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/sketch/xpopup/enums/PopupType;

.field public static final enum AttachView:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

.field public static final enum Bottom:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

.field public static final enum Center:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

.field public static final enum ImageViewer:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

.field public static final enum Position:Lcn/codemao/android/sketch/xpopup/enums/PopupType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 8
    new-instance v0, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    const-string v1, "Center"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/xpopup/enums/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->Center:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    .line 9
    new-instance v1, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    const-string v3, "Bottom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/codemao/android/sketch/xpopup/enums/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->Bottom:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    .line 10
    new-instance v3, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    const-string v5, "AttachView"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/codemao/android/sketch/xpopup/enums/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->AttachView:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    .line 11
    new-instance v5, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    const-string v7, "ImageViewer"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/codemao/android/sketch/xpopup/enums/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->ImageViewer:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    .line 12
    new-instance v7, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    const-string v9, "Position"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/codemao/android/sketch/xpopup/enums/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->Position:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 7
    sput-object v9, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->$VALUES:[Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/sketch/xpopup/enums/PopupType;
    .registers 2

    .line 7
    const-class v0, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/sketch/xpopup/enums/PopupType;
    .registers 1

    .line 7
    sget-object v0, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->$VALUES:[Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    invoke-virtual {v0}, [Lcn/codemao/android/sketch/xpopup/enums/PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    return-object v0
.end method
