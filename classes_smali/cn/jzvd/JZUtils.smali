.class public Lcn/jzvd/JZUtils;
.super Ljava/lang/Object;
.source "JZUtils.java"


# direct methods
.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "JZVD_PROGRESS"

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 158
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_28

    .line 162
    :cond_19
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 164
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_28
    return-void
.end method

.method public static getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 100
    :cond_4
    instance-of v1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_b

    .line 101
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    return-object p0

    .line 102
    :cond_b
    instance-of v1, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v1, :cond_1a

    .line 103
    check-cast p0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public static getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 170
    invoke-static {p0, p1}, Lcn/jzvd/JZUtils;->getValueFromLinkedMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_c
    invoke-static {p0, p1}, Lcn/jzvd/JZUtils;->getValueFromLinkedMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSavedProgress(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 143
    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->SAVE_PROGRESS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "JZVD_PROGRESS"

    .line 145
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 147
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getValueFromLinkedMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, p1, :cond_1c

    .line 181
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWindow(Landroid/content/Context;)Landroid/view/Window;
    .registers 2

    .line 119
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 120
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    .line 122
    :cond_f
    invoke-static {p0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 66
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 67
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 52
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_16

    .line 53
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static saveProgress(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 132
    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->SAVE_PROGRESS:Z

    if-nez v0, :cond_5

    return-void

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "JZVD_PROGRESS"

    .line 135
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 138
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 83
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_b

    .line 84
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 85
    :cond_b
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1a

    .line 86
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public static setRequestedOrientation(Landroid/content/Context;I)V
    .registers 3

    .line 109
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 110
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    .line 113
    :cond_e
    invoke-static {p0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_15
    return-void
.end method

.method public static stringForTime(I)Ljava/lang/String;
    .registers 8

    if-lez p0, :cond_5e

    const v0, 0x5265c00

    if-lt p0, v0, :cond_8

    goto :goto_5e

    .line 31
    :cond_8
    div-int/lit16 p0, p0, 0x3e8

    .line 32
    rem-int/lit8 v0, p0, 0x3c

    .line 33
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 34
    div-int/lit16 p0, p0, 0xe10

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez p0, :cond_45

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v5

    const-string p0, "%d:%02d:%02d"

    invoke-virtual {v3, p0, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    new-array p0, v5, [Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {v3, v0, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    :goto_5e
    const-string p0, "00:00"

    return-object p0
.end method
