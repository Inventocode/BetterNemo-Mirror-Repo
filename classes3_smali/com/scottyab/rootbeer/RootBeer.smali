.class public Lcom/scottyab/rootbeer/RootBeer;
.super Ljava/lang/Object;
.source "RootBeer.java"


# instance fields
.field private loggingEnabled:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/scottyab/rootbeer/RootBeer;->loggingEnabled:Z

    .line 34
    iput-object p1, p0, Lcom/scottyab/rootbeer/RootBeer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isAnyPackageFromListInstalled(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/scottyab/rootbeer/RootBeer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    :try_start_18
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ROOT management app detected!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scottyab/rootbeer/util/QLog;->e(Ljava/lang/Object;)V
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2f} :catch_31

    const/4 v2, 0x1

    goto :goto_c

    :catch_31
    nop

    goto :goto_c

    :cond_33
    return v2
.end method

.method private mountReader()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 224
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mount"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v0

    .line 226
    :cond_12
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_2a
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v1

    goto :goto_2b

    :catch_2a
    move-exception v1

    .line 229
    :goto_2b
    invoke-static {v1}, Lcom/scottyab/rootbeer/util/QLog;->e(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private propsReader()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 212
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v0

    .line 214
    :cond_12
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_2a
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v1

    goto :goto_2b

    :catch_2a
    move-exception v1

    .line 217
    :goto_2b
    invoke-static {v1}, Lcom/scottyab/rootbeer/util/QLog;->e(Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public canLoadNativeLibrary()Z
    .registers 2

    .line 435
    new-instance v0, Lcom/scottyab/rootbeer/RootBeerNative;

    invoke-direct {v0}, Lcom/scottyab/rootbeer/RootBeerNative;-><init>()V

    invoke-virtual {v0}, Lcom/scottyab/rootbeer/RootBeerNative;->wasNativeLibraryLoaded()Z

    move-result v0

    return v0
.end method

.method public checkForBinary(Ljava/lang/String;)Z
    .registers 9

    .line 184
    invoke-static {}, Lcom/scottyab/rootbeer/Const;->getPaths()[Ljava/lang/String;

    move-result-object v0

    .line 188
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v1, :cond_3d

    aget-object v4, v0, v2

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " binary detected!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scottyab/rootbeer/util/QLog;->v(Ljava/lang/Object;)V

    const/4 v3, 0x1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3d
    return v3
.end method

.method public checkForDangerousProps()Z
    .registers 12

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ro.debuggable"

    const-string v2, "1"

    .line 265
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.secure"

    const-string v2, "0"

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Lcom/scottyab/rootbeer/RootBeer;->propsReader()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    return v2

    .line 277
    :cond_1b
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1d
    if-ge v2, v3, :cond_7e

    aget-object v5, v1, v2

    .line 278
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 279
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 280
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 282
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " detected!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scottyab/rootbeer/util/QLog;->v(Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_29

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_7e
    return v4
.end method

.method public checkForMagiskBinary()Z
    .registers 2

    const-string v0, "magisk"

    .line 167
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/RootBeer;->checkForBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkForRWPaths()Z
    .registers 18

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/scottyab/rootbeer/RootBeer;->mountReader()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 309
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 336
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v3, :cond_b3

    aget-object v6, v0, v4

    const-string v7, " "

    .line 339
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x17

    if-gt v2, v8, :cond_1f

    .line 341
    array-length v9, v7

    const/4 v10, 0x4

    if-lt v9, v10, :cond_25

    :cond_1f
    if-le v2, v8, :cond_3d

    array-length v9, v7

    const/4 v10, 0x6

    if-ge v9, v10, :cond_3d

    .line 344
    :cond_25
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error formatting mount line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scottyab/rootbeer/util/QLog;->e(Ljava/lang/Object;)V

    :cond_39
    move-object/from16 v16, v0

    goto/16 :goto_ac

    :cond_3d
    const/4 v9, 0x1

    if-le v2, v8, :cond_47

    const/4 v10, 0x2

    .line 355
    aget-object v10, v7, v10

    const/4 v11, 0x5

    .line 356
    aget-object v7, v7, v11

    goto :goto_4c

    .line 358
    :cond_47
    aget-object v10, v7, v9

    const/4 v11, 0x3

    .line 359
    aget-object v7, v7, v11

    .line 362
    :goto_4c
    sget-object v11, Lcom/scottyab/rootbeer/Const;->pathsThatShouldNotBeWritable:[Ljava/lang/String;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_50
    if-ge v13, v12, :cond_39

    aget-object v14, v11, v13

    .line 363
    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a1

    .line 369
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v15, v8, :cond_6c

    const-string v15, "("

    const-string v1, ""

    .line 370
    invoke-virtual {v7, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v15, ")"

    .line 371
    invoke-virtual {v7, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_6c
    const-string v1, ","

    .line 376
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v15, v1

    const/4 v8, 0x0

    :goto_74
    if-ge v8, v15, :cond_a1

    aget-object v9, v1, v8

    move-object/from16 v16, v0

    const-string v0, "rw"

    .line 378
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path is mounted with rw permissions! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scottyab/rootbeer/util/QLog;->v(Ljava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_a3

    :cond_9b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    const/4 v9, 0x1

    goto :goto_74

    :cond_a1
    move-object/from16 v16, v0

    :goto_a3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    const/4 v1, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x1

    goto :goto_50

    :goto_ac
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_b3
    return v5
.end method

.method public checkForRootNative()Z
    .registers 8

    .line 444
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->canLoadNativeLibrary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "We could not load the native library to test for root"

    .line 445
    invoke-static {v0}, Lcom/scottyab/rootbeer/util/QLog;->e(Ljava/lang/Object;)V

    return v1

    .line 449
    :cond_d
    invoke-static {}, Lcom/scottyab/rootbeer/Const;->getPaths()[Ljava/lang/String;

    move-result-object v0

    .line 451
    array-length v2, v0

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_2f

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 456
    :cond_2f
    new-instance v0, Lcom/scottyab/rootbeer/RootBeerNative;

    invoke-direct {v0}, Lcom/scottyab/rootbeer/RootBeerNative;-><init>()V

    .line 458
    :try_start_34
    iget-boolean v2, p0, Lcom/scottyab/rootbeer/RootBeer;->loggingEnabled:Z

    invoke-virtual {v0, v2}, Lcom/scottyab/rootbeer/RootBeerNative;->setLogDebugMessages(Z)I

    .line 459
    invoke-virtual {v0, v3}, Lcom/scottyab/rootbeer/RootBeerNative;->checkForRoot([Ljava/lang/Object;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_34 .. :try_end_3d} :catch_40

    if-lez v0, :cond_40

    const/4 v1, 0x1

    :catch_40
    :cond_40
    return v1
.end method

.method public checkSuExists()Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 399
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 400
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 401
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_2b

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    .line 405
    :cond_27
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return v0

    :catchall_2b
    nop

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_31
    return v0
.end method

.method public detectPotentiallyDangerousApps()Z
    .registers 2

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/RootBeer;->detectPotentiallyDangerousApps([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public detectPotentiallyDangerousApps([Ljava/lang/String;)Z
    .registers 4

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    sget-object v1, Lcom/scottyab/rootbeer/Const;->knownDangerousAppsPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_1a

    .line 124
    array-length v1, p1

    if-lez v1, :cond_1a

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_1a
    invoke-direct {p0, v0}, Lcom/scottyab/rootbeer/RootBeer;->isAnyPackageFromListInstalled(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public detectRootManagementApps()Z
    .registers 2

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/RootBeer;->detectRootManagementApps([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public detectRootManagementApps([Ljava/lang/String;)Z
    .registers 4

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/scottyab/rootbeer/Const;->knownRootAppsPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_17

    .line 99
    array-length v1, p1

    if-lez v1, :cond_17

    .line 100
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_17
    invoke-direct {p0, v0}, Lcom/scottyab/rootbeer/RootBeer;->isAnyPackageFromListInstalled(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public detectTestKeys()Z
    .registers 3

    .line 77
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isRooted()Z
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->detectRootManagementApps()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->detectPotentiallyDangerousApps()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "su"

    invoke-virtual {p0, v0}, Lcom/scottyab/rootbeer/RootBeer;->checkForBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 45
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->checkForDangerousProps()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->checkForRWPaths()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 46
    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->detectTestKeys()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->checkSuExists()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->checkForRootNative()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/scottyab/rootbeer/RootBeer;->checkForMagiskBinary()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    return v0
.end method
