.class Lcom/android/server/am/ActivityManagerService$ItemMatcher;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemMatcher"
.end annotation


# instance fields
.field all:Z

.field components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 10599
    return-void
.end method


# virtual methods
.method build([Ljava/lang/String;I)I
    .locals 2
    .parameter "args"
    .parameter "opti"

    .prologue
    .line 10631
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 10632
    aget-object v0, p1, p2

    .line 10633
    .local v0, name:Ljava/lang/String;
    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10634
    add-int/lit8 p2, p2, 0x1

    .line 10638
    .end local v0           #name:Ljava/lang/String;
    .end local p2
    :cond_0
    return p2

    .line 10636
    .restart local v0       #name:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 10631
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method build(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 10602
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 10603
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 10604
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 10605
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    .line 10607
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10608
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 10628
    :goto_0
    return-void

    .line 10610
    :cond_1
    const/4 v2, 0x0

    .line 10613
    .local v2, objectId:I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 10614
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 10615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    .line 10617
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10618
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10619
    :catch_0
    move-exception v1

    .line 10621
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 10622
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    .line 10624
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10625
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    goto :goto_0
.end method

.method match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "object"
    .parameter "comp"

    .prologue
    const/4 v3, 0x1

    .line 10642
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 10667
    :goto_0
    return v2

    .line 10645
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 10646
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10647
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 10648
    goto :goto_0

    .line 10646
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10652
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 10653
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 10654
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v4, v2, :cond_3

    move v2, v3

    .line 10655
    goto :goto_0

    .line 10653
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10659
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 10660
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 10661
    .local v0, flat:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 10662
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 10663
    goto :goto_0

    .line 10661
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10667
    .end local v0           #flat:Ljava/lang/String;
    .end local v1           #i:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method
