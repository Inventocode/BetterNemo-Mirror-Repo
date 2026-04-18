.class public final enum Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;
.super Ljava/lang/Enum;
.source "PopupStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

.field public static final enum Dismiss:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

.field public static final enum Dismissing:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

.field public static final enum Show:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

.field public static final enum Showing:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 8
    new-instance v0, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    const-string v1, "Show"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->Show:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    .line 9
    new-instance v1, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    const-string v3, "Showing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->Showing:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    .line 10
    new-instance v3, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    const-string v5, "Dismiss"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->Dismiss:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    .line 11
    new-instance v5, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    const-string v7, "Dismissing"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->Dismissing:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->$VALUES:[Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;
    .registers 2

    .line 7
    const-class v0, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;
    .registers 1

    .line 7
    sget-object v0, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->$VALUES:[Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    invoke-virtual {v0}, [Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    return-object v0
.end method
