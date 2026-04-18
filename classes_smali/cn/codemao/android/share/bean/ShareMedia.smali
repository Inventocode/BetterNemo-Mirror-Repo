.class public final enum Lcn/codemao/android/share/bean/ShareMedia;
.super Ljava/lang/Enum;
.source "ShareMedia.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/share/bean/ShareMedia;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/share/bean/ShareMedia;

.field public static final enum QQ:Lcn/codemao/android/share/bean/ShareMedia;

.field public static final enum QQZONE:Lcn/codemao/android/share/bean/ShareMedia;

.field public static final enum WECHAT:Lcn/codemao/android/share/bean/ShareMedia;

.field public static final enum WECHATCIRCLE:Lcn/codemao/android/share/bean/ShareMedia;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 9
    new-instance v0, Lcn/codemao/android/share/bean/ShareMedia;

    const-string v1, "WECHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/share/bean/ShareMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/codemao/android/share/bean/ShareMedia;->WECHAT:Lcn/codemao/android/share/bean/ShareMedia;

    .line 10
    new-instance v1, Lcn/codemao/android/share/bean/ShareMedia;

    const-string v3, "WECHATCIRCLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/codemao/android/share/bean/ShareMedia;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/codemao/android/share/bean/ShareMedia;->WECHATCIRCLE:Lcn/codemao/android/share/bean/ShareMedia;

    .line 11
    new-instance v3, Lcn/codemao/android/share/bean/ShareMedia;

    const-string v5, "QQ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/codemao/android/share/bean/ShareMedia;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/codemao/android/share/bean/ShareMedia;->QQ:Lcn/codemao/android/share/bean/ShareMedia;

    .line 12
    new-instance v5, Lcn/codemao/android/share/bean/ShareMedia;

    const-string v7, "QQZONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/codemao/android/share/bean/ShareMedia;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/codemao/android/share/bean/ShareMedia;->QQZONE:Lcn/codemao/android/share/bean/ShareMedia;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/codemao/android/share/bean/ShareMedia;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 7
    sput-object v7, Lcn/codemao/android/share/bean/ShareMedia;->$VALUES:[Lcn/codemao/android/share/bean/ShareMedia;

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

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/share/bean/ShareMedia;
    .registers 2

    .line 7
    const-class v0, Lcn/codemao/android/share/bean/ShareMedia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/share/bean/ShareMedia;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/share/bean/ShareMedia;
    .registers 1

    .line 7
    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->$VALUES:[Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {v0}, [Lcn/codemao/android/share/bean/ShareMedia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/share/bean/ShareMedia;

    return-object v0
.end method
