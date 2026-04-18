.class public Lcom/umeng/commonsdk/framework/UMModuleRegister;
.super Ljava/lang/Object;
.source "UMModuleRegister.java"


# static fields
.field public static final ANALYTICS:Ljava/lang/String; = "analytics"

.field public static final APPSTATUS:Ljava/lang/String; = "appstatus"

.field private static final APPSTATUS_SWITCH_HIGH:I = 0x9110

.field private static final APPSTATUS_SWITCH_LOW:I = 0x9101

.field public static final INNER:Ljava/lang/String; = "internal"

.field private static final INNER_EVENT_VALUE_HIGH:I = 0x9000

.field private static final INNER_EVENT_VALUE_LOW:I = 0x8001

.field public static final PROCESS:Ljava/lang/String; = "process"

.field private static final PROCESS_EVENT_VALUE_HIGH:I = 0x9100

.field private static final PROCESS_EVENT_VALUE_LOW:I = 0x9051

.field public static final PUSH:Ljava/lang/String; = "push"

.field private static final PUSH_EVENT_VALUE_HIGH:I = 0x5000

.field private static final PUSH_EVENT_VALUE_LOW:I = 0x4001

.field public static final SHARE:Ljava/lang/String; = "share"

.field private static final SHARE_EVENT_VALUE_HIGH:I = 0x7000

.field private static final SHARE_EVENT_VALUE_LOW:I = 0x6001

.field private static mModuleAppContext:Landroid/content/Context;

.field private static mModuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/framework/UMLogDataProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventType2ModuleName(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x4001

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5000

    if-gt p0, v0, :cond_b

    const-string v0, "push"

    goto :goto_d

    :cond_b
    const-string v0, "analytics"

    :goto_d
    const/16 v1, 0x6001

    if-lt p0, v1, :cond_17

    const/16 v1, 0x7000

    if-gt p0, v1, :cond_17

    const-string v0, "share"

    :cond_17
    const v1, 0x8001

    if-lt p0, v1, :cond_23

    const v1, 0x9000

    if-gt p0, v1, :cond_23

    const-string v0, "internal"

    :cond_23
    const v1, 0x9051

    if-lt p0, v1, :cond_2f

    const v1, 0x9100

    if-gt p0, v1, :cond_2f

    const-string v0, "process"

    :cond_2f
    const v1, 0x9101

    if-lt p0, v1, :cond_3b

    const v1, 0x9110

    if-gt p0, v1, :cond_3b

    const-string v0, "appstatus"

    :cond_3b
    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 107
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;
    .registers 2

    .line 99
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 100
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static registerAppContext(Landroid/content/Context;)V
    .registers 2

    .line 92
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    :cond_a
    return-void
.end method

.method public static registerCallback(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z
    .registers 3

    .line 81
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    .line 84
    :cond_b
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 86
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method
