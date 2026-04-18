.class Lcom/codemao/midi/sun/SoftSynthesizer$1;
.super Ljava/lang/Object;
.source "SoftSynthesizer.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SoftSynthesizer;->getStoredProperties()Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V
    .registers 2

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 705
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer$1;->run()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Properties;
    .registers 8

    .line 707
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "/com/sun/media/sound/softsynthesizer"

    .line 710
    :try_start_7
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v2

    .line 711
    invoke-virtual {v2, v1}, Ljava/util/prefs/Preferences;->nodeExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 712
    invoke-virtual {v2, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v2

    .line 714
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    const/4 v6, 0x0

    .line 715
    invoke-virtual {v1, v5, v6}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 717
    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_7 .. :try_end_29} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_29} :catch_2c

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :catch_2c
    :cond_2c
    return-object v0
.end method
