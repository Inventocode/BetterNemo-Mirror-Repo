.class synthetic Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$1;
.super Ljava/lang/Object;
.source "AlertMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$AlertRunnable$AlertType;->values()[Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$AlertRunnable$AlertType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$1;->$SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType:[I

    :try_start_9
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$AlertRunnable$AlertType;->H5:Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$AlertRunnable$AlertType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$1;->$SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType:[I

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$AlertRunnable$AlertType;->FLUTTER:Lcom/sensorsdata/analytics/android/sdk/visual/utils/AlertMessageUtils$AlertRunnable$AlertType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
