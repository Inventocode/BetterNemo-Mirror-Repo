.class public final Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# static fields
.field public static final IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 51
    const-class v0, Lkotlin/internal/PlatformImplementations;

    invoke-static {}, Lkotlin/internal/PlatformImplementationsKt;->getJavaVersion()I

    move-result v1

    const/high16 v2, 0x10000

    const-string v3, ", base type classloader: "

    const-string v4, "Instance class was loaded from a different classloader: "

    const-string v5, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    const-string v6, "forName(\"kotlin.internal…entations\").newInstance()"

    const v7, 0x10008

    if-ge v1, v7, :cond_17

    if-ge v1, v2, :cond_a6

    .line 54
    :cond_17
    :try_start_17
    const-class v7, Lkotlin/internal/jdk8/JDK8PlatformImplementations;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_20} :catch_5c

    if-eqz v7, :cond_28

    :try_start_22
    check-cast v7, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_141

    :catch_26
    move-exception v8

    goto :goto_2e

    :cond_28
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_2e} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_2e} :catch_5c

    :goto_2e
    :try_start_2e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_5b
    throw v8
    :try_end_5c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    const-string v7, "kotlin.internal.JRE8PlatformImplementations"

    .line 57
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_69} :catch_a5

    if-eqz v7, :cond_71

    :try_start_6b
    check-cast v7, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_141

    :catch_6f
    move-exception v8

    goto :goto_77

    :cond_71
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_77
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_77} :catch_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6b .. :try_end_77} :catch_a5

    :goto_77
    :try_start_77
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a4

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_a4
    throw v8
    :try_end_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_77 .. :try_end_a5} :catch_a5

    :catch_a5
    nop

    :cond_a6
    const v7, 0x10007

    if-ge v1, v7, :cond_ad

    if-ge v1, v2, :cond_13c

    .line 63
    :cond_ad
    :try_start_ad
    const-class v1, Lkotlin/internal/jdk7/JDK7PlatformImplementations;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ad .. :try_end_b6} :catch_f3

    if-eqz v1, :cond_bf

    :try_start_b8
    move-object v7, v1

    check-cast v7, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_141

    :catch_bd
    move-exception v2

    goto :goto_c5

    :cond_bf
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c5
    .catch Ljava/lang/ClassCastException; {:try_start_b8 .. :try_end_c5} :catch_bd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b8 .. :try_end_c5} :catch_f3

    :goto_c5
    :try_start_c5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f2

    new-instance v8, Ljava/lang/ClassNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_f2
    throw v2
    :try_end_f3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c5 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f3
    const-string v1, "kotlin.internal.JRE7PlatformImplementations"

    .line 66
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f3 .. :try_end_100} :catch_13c

    if-eqz v1, :cond_108

    :try_start_102
    move-object v7, v1

    check-cast v7, Lkotlin/internal/PlatformImplementations;

    goto :goto_141

    :catch_106
    move-exception v2

    goto :goto_10e

    :cond_108
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10e
    .catch Ljava/lang/ClassCastException; {:try_start_102 .. :try_end_10e} :catch_106
    .catch Ljava/lang/ClassNotFoundException; {:try_start_102 .. :try_end_10e} :catch_13c

    :goto_10e
    :try_start_10e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13b

    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_13b
    throw v2
    :try_end_13c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10e .. :try_end_13c} :catch_13c

    .line 70
    :catch_13c
    :cond_13c
    new-instance v7, Lkotlin/internal/PlatformImplementations;

    invoke-direct {v7}, Lkotlin/internal/PlatformImplementations;-><init>()V

    .line 50
    :goto_141
    sput-object v7, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    return-void
.end method

.method private static final getJavaVersion()I
    .registers 11

    const-string v0, "java.specification.version"

    .line 89
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v7, 0x10006

    if-nez v0, :cond_c

    return v7

    :cond_c
    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    .line 90
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    const/high16 v9, 0x10000

    if-gez v8, :cond_22

    .line 92
    :try_start_1b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_21

    mul-int v7, v0, v9

    :catch_21
    return v7

    :cond_22
    const/16 v2, 0x2e

    add-int/lit8 v10, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move v3, v10

    .line 94
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_35

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_35
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :try_start_46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_50} :catch_52

    add-int v7, v1, v0

    :catch_52
    return v7
.end method
