.class public Lcom/codemao/nemo/util/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static DOWNLOADING_BCM_ID:Ljava/lang/String; = null

.field public static GENERATE_MIAOCODE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static HAS_BCM_DOWNLOAD:Z = false

.field public static final IS_DEBUG:Z = false

.field public static final IS_RELEASE:Z = true

.field public static IS_SHOW_ACTIVITY_MIAO_CODE:Z = false

.field public static final IS_STAGING:Z = false

.field public static SYSTEM_HEIGHT:I

.field public static isFirstLogin:Z

.field public static final isFirstOpenApp:Z

.field public static localChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/AppConstants;->GENERATE_MIAOCODE:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->IS_SHOW_ACTIVITY_MIAO_CODE:Z

    .line 158
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsFirstOpenApp()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsNewbee()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->isFirstOpenApp:Z

    return-void
.end method
