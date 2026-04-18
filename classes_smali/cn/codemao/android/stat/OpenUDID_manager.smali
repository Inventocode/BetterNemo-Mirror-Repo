.class public Lcn/codemao/android/stat/OpenUDID_manager;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static OpenUDID:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "openudid_prefs"

.field public static final PREF_KEY:Ljava/lang/String; = "openudid"

.field public static final TAG:Ljava/lang/String; = "OpenUDID"

.field private static mInitialized:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMatchingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mRandom:Ljava/util/Random;

.field private final mReceivedOpenUDIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "openudid_prefs"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    iput-object p1, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mContext:Landroid/content/Context;

    .line 46
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mRandom:Ljava/util/Random;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcn/codemao/android/stat/OpenUDID_manager;)Ljava/util/Map;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    return-object p0
.end method

.method private generateOpenUDID()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v0, "OpenUDID"

    const-string v1, "Generating openUDID"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-eqz v0, :cond_29

    const-string v1, "9774d56d682e549c"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3d

    .line 99
    :cond_29
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 100
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x40

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    :cond_3d
    return-void
.end method

.method private getMostFrequentOpenUDID()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 137
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/codemao/android/stat/OpenUDID_manager$ValueComparator;-><init>(Lcn/codemao/android/stat/OpenUDID_manager;Lcn/codemao/android/stat/OpenUDID_manager$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 138
    iget-object v1, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 140
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    :cond_20
    return-void
.end method

.method public static getOpenUDID()Ljava/lang/String;
    .registers 2

    .line 154
    sget-boolean v0, Lcn/codemao/android/stat/OpenUDID_manager;->mInitialized:Z

    if-nez v0, :cond_b

    const-string v0, "OpenUDID"

    const-string v1, "Initialisation isn\'t done"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_b
    sget-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    return-object v0
.end method

.method public static isInitialized()Z
    .registers 1

    .line 164
    sget-boolean v0, Lcn/codemao/android/stat/OpenUDID_manager;->mInitialized:Z

    return v0
.end method

.method private startService()V
    .registers 7

    .line 109
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OpenUDID"

    if-lez v0, :cond_5e

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 114
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 115
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    :try_start_54
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_83

    .line 120
    :catch_5a
    invoke-direct {p0}, Lcn/codemao/android/stat/OpenUDID_manager;->startService()V

    goto :goto_83

    .line 124
    :cond_5e
    invoke-direct {p0}, Lcn/codemao/android/stat/OpenUDID_manager;->getMostFrequentOpenUDID()V

    .line 126
    sget-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-nez v0, :cond_68

    .line 127
    invoke-direct {p0}, Lcn/codemao/android/stat/OpenUDID_manager;->generateOpenUDID()V

    .line 128
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUDID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcn/codemao/android/stat/OpenUDID_manager;->storeOpenUDID()V

    .line 131
    sput-boolean v1, Lcn/codemao/android/stat/OpenUDID_manager;->mInitialized:Z

    :goto_83
    return-void
.end method

.method private storeOpenUDID()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    sget-object v1, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    const-string v2, "openudid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static sync(Landroid/content/Context;)V
    .registers 5

    .line 174
    new-instance v0, Lcn/codemao/android/stat/OpenUDID_manager;

    invoke-direct {v0, p0}, Lcn/codemao/android/stat/OpenUDID_manager;-><init>(Landroid/content/Context;)V

    .line 177
    iget-object v1, v0, Lcn/codemao/android/stat/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "openudid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    const-string v2, "OpenUDID"

    if-nez v1, :cond_48

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "cn.codemao.android.stat.GETUDID"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " services matches OpenUDID"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p0, v0, Lcn/codemao/android/stat/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    if-eqz p0, :cond_61

    .line 188
    invoke-direct {v0}, Lcn/codemao/android/stat/OpenUDID_manager;->startService()V

    goto :goto_61

    .line 191
    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OpenUDID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/codemao/android/stat/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 192
    sput-boolean p0, Lcn/codemao/android/stat/OpenUDID_manager;->mInitialized:Z

    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const-string p1, "OpenUDID"

    .line 55
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p2, v4, v2, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne p2, v0, :cond_80

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_80

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 66
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    .line 67
    :cond_5d
    iget-object v0, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_66} :catch_67

    goto :goto_80

    :catch_67
    move-exception p2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_80
    :goto_80
    iget-object p1, p0, Lcn/codemao/android/stat/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 76
    invoke-direct {p0}, Lcn/codemao/android/stat/OpenUDID_manager;->startService()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
