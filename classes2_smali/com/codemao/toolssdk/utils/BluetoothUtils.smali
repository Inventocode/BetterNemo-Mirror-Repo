.class public final Lcom/codemao/toolssdk/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/BluetoothUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/BluetoothUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/BluetoothUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final skipBleSettingsPage(Landroid/app/Activity;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_c
    return-void
.end method
