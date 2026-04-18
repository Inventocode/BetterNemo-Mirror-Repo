.class public final enum Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;
.super Ljava/lang/Enum;
.source "ISListConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

.field public static final enum NeedCutoutImage:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

.field public static final enum NeedSelectHighlightRect:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

.field public static final enum None:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 98
    new-instance v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->None:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 99
    new-instance v1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    const-string v3, "NeedCutoutImage"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedCutoutImage:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 100
    new-instance v3, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    const-string v5, "NeedSelectHighlightRect"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedSelectHighlightRect:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 97
    sput-object v5, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->$VALUES:[Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;
    .registers 2

    .line 97
    const-class v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;
    .registers 1

    .line 97
    sget-object v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->$VALUES:[Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    invoke-virtual {v0}, [Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    return-object v0
.end method
