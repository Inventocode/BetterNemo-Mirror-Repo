.class final Lcom/codemao/utils/util/CuSPUtils;
.super Ljava/lang/Object;
.source "CuSPUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ApplySharedPref"
    }
.end annotation


# static fields
.field private static final SP_UTILS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/utils/util/CuSPUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/utils/util/CuSPUtils;->SP_UTILS_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lcom/codemao/utils/util/CuUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/utils/util/CuSPUtils;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/codemao/utils/util/CuSPUtils;
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/codemao/utils/util/CuSPUtils;->getInstance(Ljava/lang/String;I)Lcom/codemao/utils/util/CuSPUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/codemao/utils/util/CuSPUtils;
    .registers 5

    .line 66
    invoke-static {p0}, Lcom/codemao/utils/util/CuSPUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "spUtils"

    .line 67
    :cond_8
    sget-object v0, Lcom/codemao/utils/util/CuSPUtils;->SP_UTILS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/utils/util/CuSPUtils;

    if-nez v1, :cond_2a

    .line 69
    const-class v2, Lcom/codemao/utils/util/CuSPUtils;

    monitor-enter v2

    .line 70
    :try_start_15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/utils/util/CuSPUtils;

    if-nez v1, :cond_25

    .line 72
    new-instance v1, Lcom/codemao/utils/util/CuSPUtils;

    invoke-direct {v1, p0, p1}, Lcom/codemao/utils/util/CuSPUtils;-><init>(Ljava/lang/String;I)V

    .line 73
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_25
    monitor-exit v2

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 440
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 441
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/codemao/utils/util/CuSPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/codemao/utils/util/CuSPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, p1, v0}, Lcom/codemao/utils/util/CuSPUtils;->remove(Ljava/lang/String;Z)V

    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_10

    .line 411
    iget-object p2, p0, Lcom/codemao/utils/util/CuSPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1d

    .line 413
    :cond_10
    iget-object p2, p0, Lcom/codemao/utils/util/CuSPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1d
    return-void
.end method
