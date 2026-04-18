.class public Lcn/codemao/android/stat/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/stat/DeviceId$Type;
    }
.end annotation


# static fields
.field private static final PREFERENCE_KEY_ID_ID:Ljava/lang/String; = "ly.count.android.api.DeviceId.id"

.field private static final PREFERENCE_KEY_ID_ROLLBACK_ID:Ljava/lang/String; = "ly.count.android.api.DeviceId.rollback.id"

.field private static final PREFERENCE_KEY_ID_ROLLBACK_TYPE:Ljava/lang/String; = "ly.count.android.api.DeviceId.rollback.type"

.field private static final PREFERENCE_KEY_ID_TYPE:Ljava/lang/String; = "ly.count.android.api.DeviceId.type"

.field private static final TAG:Ljava/lang/String; = "DeviceId"


# instance fields
.field private id:Ljava/lang/String;

.field private type:Lcn/codemao/android/stat/DeviceId$Type;


# direct methods
.method public constructor <init>(Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId$Type;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_17

    .line 37
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    if-eq p2, v0, :cond_f

    .line 40
    iput-object p2, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    .line 42
    invoke-direct {p0, p1}, Lcn/codemao/android/stat/DeviceId;->retrieveId(Lcn/codemao/android/stat/CountlyStore;)V

    return-void

    .line 38
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Please use another DeviceId constructor for device IDs supplied by developer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Please specify DeviceId.Type, that is which type of device ID generation you want to use"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_17

    const-string v0, ""

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 53
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    iput-object v0, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    .line 54
    iput-object p2, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcn/codemao/android/stat/DeviceId;->retrieveId(Lcn/codemao/android/stat/CountlyStore;)V

    return-void

    .line 51
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Please make sure that device ID is not null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static deviceIDEqualsNullSafe(Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;Lcn/codemao/android/stat/DeviceId;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 235
    sget-object v1, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    if-ne p1, v1, :cond_8

    goto :goto_9

    :cond_8
    return v0

    :cond_9
    :goto_9
    if-nez p2, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    .line 236
    :cond_d
    invoke-virtual {p2}, Lcn/codemao/android/stat/DeviceId;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_11
    if-nez p1, :cond_15

    if-eqz p0, :cond_1f

    :cond_15
    if-eqz p1, :cond_1e

    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :cond_1f
    :goto_1f
    return v0
.end method

.method private retrieveId(Lcn/codemao/android/stat/CountlyStore;)V
    .registers 3

    const-string v0, "ly.count.android.api.DeviceId.id"

    .line 60
    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CountlyStore;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 62
    iput-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    const-string v0, "ly.count.android.api.DeviceId.type"

    .line 63
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/DeviceId;->retrieveType(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)Lcn/codemao/android/stat/DeviceId$Type;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    :cond_12
    return-void
.end method

.method private retrieveOverriddenType(Lcn/codemao/android/stat/CountlyStore;)Lcn/codemao/android/stat/DeviceId$Type;
    .registers 3

    const-string v0, "ly.count.android.api.DeviceId.type"

    .line 136
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/stat/DeviceId;->retrieveType(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)Lcn/codemao/android/stat/DeviceId$Type;

    move-result-object p1

    return-object p1
.end method

.method private retrieveType(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)Lcn/codemao/android/stat/DeviceId$Type;
    .registers 5

    .line 141
    invoke-virtual {p1, p2}, Lcn/codemao/android/stat/CountlyStore;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return-object p2

    .line 144
    :cond_8
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    .line 146
    :cond_15
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    return-object v0

    .line 148
    :cond_22
    sget-object v0, Lcn/codemao/android/stat/DeviceId$Type;->ADVERTISING_ID:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    return-object v0

    :cond_2f
    return-object p2
.end method

.method private storeOverriddenType(Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId$Type;)V
    .registers 4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    .line 132
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_8
    const-string v0, "ly.count.android.api.DeviceId.type"

    invoke-virtual {p1, v0, p2}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected changeToDeveloperId(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 180
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    if-eqz v1, :cond_1c

    sget-object v2, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    if-eq v1, v2, :cond_1c

    const-string v1, "ly.count.android.api.DeviceId.rollback.id"

    .line 181
    invoke-virtual {p1, v1, v0}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ly.count.android.api.DeviceId.rollback.type"

    invoke-virtual {p1, v1, v0}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1c
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2b

    :cond_29
    :goto_29
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 187
    :goto_2b
    iput-object p2, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 188
    sget-object v1, Lcn/codemao/android/stat/DeviceId$Type;->DEVELOPER_SUPPLIED:Lcn/codemao/android/stat/DeviceId$Type;

    iput-object v1, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    const-string v1, "ly.count.android.api.DeviceId.id"

    .line 190
    invoke-virtual {p1, v1, p2}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ly.count.android.api.DeviceId.type"

    invoke-virtual {p1, v1, p2}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public changeToId(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId$Type;Ljava/lang/String;)V
    .registers 6

    .line 197
    iput-object p4, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    const-string v0, "ly.count.android.api.DeviceId.id"

    .line 200
    invoke-virtual {p2, v0, p4}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ly.count.android.api.DeviceId.type"

    invoke-virtual {p2, p4, p3}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lcn/codemao/android/stat/DeviceId;->init(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Z)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 156
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    sget-object v1, Lcn/codemao/android/stat/DeviceId$Type;->OPEN_UDID:Lcn/codemao/android/stat/DeviceId$Type;

    if-ne v0, v1, :cond_10

    .line 157
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->getOpenUDID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 159
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcn/codemao/android/stat/DeviceId$Type;
    .registers 2

    .line 227
    iget-object v0, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Z)V
    .registers 8

    .line 78
    invoke-direct {p0, p2}, Lcn/codemao/android/stat/DeviceId;->retrieveOverriddenType(Lcn/codemao/android/stat/CountlyStore;)Lcn/codemao/android/stat/DeviceId$Type;

    move-result-object v0

    const-string v1, "DeviceId"

    if-eqz v0, :cond_36

    .line 82
    iget-object v2, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    if-eq v0, v2, :cond_36

    .line 83
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overridden device ID generation strategy detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", using it instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_34
    iput-object v0, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    .line 89
    :cond_36
    sget-object v0, Lcn/codemao/android/stat/DeviceId$1;->$SwitchMap$cn$codemao$android$stat$DeviceId$Type:[I

    iget-object v2, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const-string v3, "OpenUDID is not available, please make sure that you have it in your classpath"

    if-eq v0, v2, :cond_9a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4a

    goto/16 :goto_bb

    .line 106
    :cond_4a
    invoke-static {}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->isAdvertisingIdAvailable()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 107
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p3

    if-eqz p3, :cond_5f

    const-string p3, "Using Advertising ID"

    .line 108
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5f
    invoke-static {p1, p2, p0}, Lcn/codemao/android/stat/AdvertisingIdAdapter;->setAdvertisingId(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId;)V

    goto :goto_bb

    .line 111
    :cond_63
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result p2

    if-eqz p2, :cond_82

    .line 113
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p2

    if-eqz p2, :cond_78

    const-string p2, "Advertising ID is not available, falling back to OpenUDID"

    .line 114
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_78
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_bb

    .line 117
    invoke-static {p1}, Lcn/codemao/android/stat/OpenUDIDAdapter;->sync(Landroid/content/Context;)V

    goto :goto_bb

    .line 121
    :cond_82
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_91

    const-string p1, "Advertising ID is not available, neither OpenUDID is"

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    if-nez p3, :cond_94

    goto :goto_bb

    .line 124
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_9a
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 95
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p2

    if-eqz p2, :cond_af

    const-string p2, "Using OpenUDID"

    .line 96
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_af
    invoke-static {}, Lcn/codemao/android/stat/OpenUDIDAdapter;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_bb

    .line 99
    invoke-static {p1}, Lcn/codemao/android/stat/OpenUDIDAdapter;->sync(Landroid/content/Context;)V

    goto :goto_bb

    :cond_b9
    if-nez p3, :cond_bc

    :cond_bb
    :goto_bb
    return-void

    .line 102
    :cond_bc
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected revertFromDeveloperId(Lcn/codemao/android/stat/CountlyStore;)Ljava/lang/String;
    .registers 8

    const-string v0, "ly.count.android.api.DeviceId.id"

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1, v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ly.count.android.api.DeviceId.type"

    .line 208
    invoke-virtual {p1, v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ly.count.android.api.DeviceId.rollback.id"

    .line 210
    invoke-virtual {p1, v0}, Lcn/codemao/android/stat/CountlyStore;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ly.count.android.api.DeviceId.rollback.type"

    .line 211
    invoke-direct {p0, p1, v3}, Lcn/codemao/android/stat/DeviceId;->retrieveType(Lcn/codemao/android/stat/CountlyStore;Ljava/lang/String;)Lcn/codemao/android/stat/DeviceId$Type;

    move-result-object v4

    if-eqz v2, :cond_35

    if-eqz v4, :cond_35

    .line 216
    iget-object v5, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    if-eqz v5, :cond_28

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_28

    :cond_26
    move-object v5, v1

    goto :goto_2a

    :cond_28
    :goto_28
    iget-object v5, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 217
    :goto_2a
    iput-object v2, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    .line 218
    iput-object v4, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    .line 219
    invoke-virtual {p1, v0, v1}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1, v3, v1}, Lcn/codemao/android/stat/CountlyStore;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    :cond_35
    return-object v1
.end method

.method protected setId(Lcn/codemao/android/stat/DeviceId$Type;Ljava/lang/String;)V
    .registers 5

    .line 163
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceId"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2d
    iput-object p1, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    .line 167
    iput-object p2, p0, Lcn/codemao/android/stat/DeviceId;->id:Ljava/lang/String;

    return-void
.end method

.method protected switchToIdType(Lcn/codemao/android/stat/DeviceId$Type;Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;)V
    .registers 6

    .line 171
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to device ID generation strategy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceId"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2a
    iput-object p1, p0, Lcn/codemao/android/stat/DeviceId;->type:Lcn/codemao/android/stat/DeviceId$Type;

    .line 175
    invoke-direct {p0, p3, p1}, Lcn/codemao/android/stat/DeviceId;->storeOverriddenType(Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId$Type;)V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p2, p3, p1}, Lcn/codemao/android/stat/DeviceId;->init(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStore;Z)V

    return-void
.end method
