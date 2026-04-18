.class public abstract Lcom/arthenica/smartexception/AbstractExceptions;
.super Ljava/lang/Object;
.source "AbstractExceptions.java"


# static fields
.field static final groupPackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static ignoreAllCauses:Z

.field static final ignoreCausePackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final ignorePackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static printModuleName:Z

.field static printPackageInformation:Z

.field static printSuppressedExceptions:Z

.field static final rootPackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreCausePackageSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 97
    sput-boolean v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    .line 107
    sput-boolean v0, Lcom/arthenica/smartexception/AbstractExceptions;->printPackageInformation:Z

    const/4 v0, 0x1

    .line 114
    sput-boolean v0, Lcom/arthenica/smartexception/AbstractExceptions;->printModuleName:Z

    .line 121
    sput-boolean v0, Lcom/arthenica/smartexception/AbstractExceptions;->printSuppressedExceptions:Z

    return-void
.end method

.method public static appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;ZZLjava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    if-lez p2, :cond_49

    .line 633
    sget-object v1, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    if-eqz v1, :cond_41

    .line 636
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p6, 0x1

    if-ne p2, p6, :cond_17

    .line 638
    sget-object p1, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    invoke-interface {p1, p3, p4, p5}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->toString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_17
    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    .line 640
    sget-object v1, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    invoke-interface {v1, p3}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->getModuleName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    aput-object p1, p4, p6

    const/4 p1, 0x2

    sub-int/2addr p2, p6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p1

    const-string p1, "%s%s ... %d more"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_49

    .line 642
    sget-object p1, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    invoke-interface {p1, p3}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->getPackageInformation(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 634
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stack trace element serializer not initialized."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    return v0
.end method

.method public static containsPackage(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 661
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getContainingPackage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static getContainingPackage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 674
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackTrace(Lcom/arthenica/smartexception/ThrowableWrapper;I)[Ljava/lang/StackTraceElement;
    .registers 6

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    .line 727
    invoke-virtual {p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getStackTrace()[Lcom/arthenica/smartexception/StackTraceElementWrapper;

    move-result-object p0

    const/4 v2, 0x0

    .line 728
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_1e

    if-ge v2, p1, :cond_1e

    .line 729
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/arthenica/smartexception/StackTraceElementWrapper;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    new-array p0, v1, [Ljava/lang/StackTraceElement;

    .line 733
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public static getStackTrace(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;)[Ljava/lang/StackTraceElement;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/smartexception/ThrowableWrapper;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_46

    .line 750
    invoke-virtual {p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getStackTrace()[Lcom/arthenica/smartexception/StackTraceElementWrapper;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_46

    aget-object v5, p0, v4

    .line 751
    invoke-virtual {v5}, Lcom/arthenica/smartexception/StackTraceElementWrapper;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 752
    invoke-static {v6}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 753
    invoke-static {v6, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->containsPackage(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 754
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 755
    invoke-virtual {v5}, Lcom/arthenica/smartexception/StackTraceElementWrapper;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 756
    :cond_36
    invoke-static {v6, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->containsPackage(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 757
    invoke-virtual {v5}, Lcom/arthenica/smartexception/StackTraceElementWrapper;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 763
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 764
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    new-array p0, v2, [Ljava/lang/StackTraceElement;

    .line 767
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public static getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;)Ljava/lang/String;
    .registers 8

    .line 290
    sget-object v1, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    sget-object v2, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    sget-object v3, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    sget-boolean v5, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    sget-boolean v6, Lcom/arthenica/smartexception/AbstractExceptions;->printPackageInformation:Z

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/lang/String;ZZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZZ)Ljava/lang/String;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/smartexception/ThrowableWrapper;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v15, p7

    .line 529
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_10

    const-string v0, ""

    return-object v0

    .line 535
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getClassName()Ljava/lang/String;

    move-result-object v13

    if-lez v15, :cond_1f

    .line 539
    invoke-static {v0, v15}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTrace(Lcom/arthenica/smartexception/ThrowableWrapper;I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    move-object/from16 v12, p4

    move-object/from16 v11, p6

    goto :goto_27

    :cond_1f
    move-object/from16 v12, p4

    move-object/from16 v11, p6

    .line 541
    invoke-static {v0, v12, v11}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTrace(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    :goto_27
    move-object v9, v1

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v1}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_36
    if-eqz p2, :cond_48

    .line 550
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Caused by: "

    .line 552
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_48
    if-eqz p3, :cond_59

    .line 554
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Suppressed: "

    .line 556
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_59
    :goto_59
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {v1}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, ": "

    .line 560
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_6a
    array-length v10, v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, v17

    move-object/from16 v18, v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_75
    if-ge v7, v10, :cond_10c

    aget-object v6, v9, v7

    .line 569
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p5

    .line 570
    invoke-static {v1, v5}, Lcom/arthenica/smartexception/AbstractExceptions;->getContainingPackage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "\tat "

    if-eqz v4, :cond_c4

    .line 573
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b9

    move-object v0, v1

    move-object v1, v14

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v5, p10

    move-object/from16 v20, v9

    move-object v9, v6

    move/from16 v6, p9

    move/from16 v21, v7

    move-object/from16 v7, p1

    .line 574
    invoke-static/range {v1 .. v7}, Lcom/arthenica/smartexception/AbstractExceptions;->appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;ZZLjava/lang/String;)I

    .line 576
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move/from16 v7, p9

    move/from16 v6, p10

    move-object/from16 v18, v9

    move-object/from16 v2, v19

    const/4 v3, 0x1

    goto :goto_fb

    :cond_b9
    move/from16 v21, v7

    move-object/from16 v20, v9

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, p9

    move/from16 v6, p10

    goto :goto_fb

    :cond_c4
    move-object v0, v1

    move/from16 v21, v7

    move-object/from16 v20, v9

    move-object v9, v6

    move-object v1, v14

    move-object/from16 v4, v18

    move/from16 v5, p10

    move/from16 v6, p9

    move-object/from16 v7, p1

    .line 587
    invoke-static/range {v1 .. v7}, Lcom/arthenica/smartexception/AbstractExceptions;->appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;ZZLjava/lang/String;)I

    move-result v1

    .line 589
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    if-eqz v0, :cond_104

    .line 595
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    move/from16 v7, p9

    move/from16 v6, p10

    invoke-interface {v0, v9, v6, v7}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->toString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    move-object/from16 v2, v17

    :goto_fb
    add-int/lit8 v0, v21, 0x1

    move v7, v0

    move-object/from16 v9, v20

    move-object/from16 v0, p0

    goto/16 :goto_75

    .line 593
    :cond_104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stack trace element serializer not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10c
    move/from16 v7, p9

    move/from16 v6, p10

    move-object v1, v14

    move-object/from16 v4, v18

    move/from16 v5, p10

    move/from16 v6, p9

    move-object/from16 v7, p1

    .line 602
    invoke-static/range {v1 .. v7}, Lcom/arthenica/smartexception/AbstractExceptions;->appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;ZZLjava/lang/String;)I

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getSuppressed()[Lcom/arthenica/smartexception/ThrowableWrapper;

    move-result-object v0

    if-eqz v0, :cond_166

    .line 605
    array-length v1, v0

    if-lez v1, :cond_166

    if-eqz p11, :cond_166

    .line 606
    array-length v1, v0

    const/4 v2, 0x0

    :goto_129
    if-ge v2, v1, :cond_166

    aget-object v9, v0, v2

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v11, v3

    move v12, v4

    move-object v3, v13

    move-object/from16 v13, p4

    move-object v7, v14

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move/from16 v20, p11

    invoke-static/range {v9 .. v20}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/lang/String;ZZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p4

    move-object/from16 v11, p6

    move/from16 v15, p7

    move-object v13, v3

    move-object v14, v7

    goto :goto_129

    :cond_166
    move-object v3, v13

    move-object v7, v14

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/arthenica/smartexception/ThrowableWrapper;->getCause()Lcom/arthenica/smartexception/ThrowableWrapper;

    move-result-object v0

    if-eqz v0, :cond_195

    .line 612
    sget-object v1, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreCausePackageSet:Ljava/util/Set;

    invoke-static {v3, v1}, Lcom/arthenica/smartexception/AbstractExceptions;->containsPackage(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_195

    if-nez p8, :cond_195

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v12, v7

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 613
    invoke-static/range {v0 .. v11}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/lang/String;ZZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_196

    :cond_195
    move-object v12, v7

    .line 616
    :goto_196
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZ)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/smartexception/ThrowableWrapper;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 452
    sget-boolean v7, Lcom/arthenica/smartexception/AbstractExceptions;->printModuleName:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZ)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/smartexception/ThrowableWrapper;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 470
    sget-boolean v10, Lcom/arthenica/smartexception/AbstractExceptions;->printSuppressedExceptions:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v10}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;ZZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;ZZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZZ)Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/smartexception/ThrowableWrapper;",
            "ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 508
    invoke-static/range {v0 .. v11}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/lang/String;ZZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 960
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static libraryName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_55

    .line 1015
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 1017
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x21

    .line 1018
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_55

    const/4 v1, 0x0

    .line 1020
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1021
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_46

    add-int/lit8 v0, v0, 0x1

    .line 1023
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_46
    const/16 v0, 0x5c

    .line 1025
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_54

    add-int/lit8 v0, v0, 0x1

    .line 1027
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_55

    :cond_54
    return-object p0

    :catch_55
    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static packageInformation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz p1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v2, :cond_13

    if-eqz v0, :cond_10

    goto :goto_13

    :cond_10
    const-string p0, ""

    return-object p0

    .line 1051
    :cond_13
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    .line 1053
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_22

    .line 1055
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    if-eqz v0, :cond_38

    if-eqz v2, :cond_35

    .line 1059
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_38

    const-string p0, ":"

    .line 1060
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 1064
    :cond_35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    :goto_38
    const-string p0, "]"

    .line 1067
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static packageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "."

    .line 974
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_13

    const/4 v0, 0x0

    .line 976
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public static registerRootPackage(Ljava/lang/String;)V
    .registers 2

    .line 147
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V
    .registers 1

    .line 190
    sput-object p0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    return-void
.end method

.method public static version(Lcom/arthenica/smartexception/PackageLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/smartexception/PackageLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 992
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 994
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 996
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/arthenica/smartexception/PackageLoader;->getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 998
    invoke-virtual {p0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method
